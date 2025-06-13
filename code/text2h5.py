#=================================
# Author: Sanjana Sekhar
# Date: 1 Nov 20
#=================================
from optparse import OptionParser
from optparse import OptionGroup
from argparse import ArgumentParser
import numpy as np
import h5py
import numpy.random as rng
#from skimage.measure import label
from scipy.ndimage.measurements import label
from simulate_double_width import *
import subprocess
import sys, commands, os, fnmatch
np.seterr(all='raise')

def print_and_do(s):
	print("Exec: " + s)
	os.system(s)

def extract_matrices(lines,cluster_matrices):
	#delete first 2 lines
	pixelsize = lines[1] 		
	del lines[0:2]

	n=0

	n_per_file = int(len(lines)/14)

	for j in range(0,n_per_file):

		#there are n 13x21 arrays in the file, extract each array 
		array2d = [[float(digit) for digit in line.split()] for line in lines[n+1:n+14]]
		#reshape to (13,21,1) -> "image"
		#convert from pixelav sensor coords to normal coords
		one_mat = np.array(array2d)
		one_mat = np.flip(one_mat,0)
		one_mat = np.flip(one_mat,1)
		cluster_matrices[j]=one_mat[:,:,np.newaxis]

		#preceding each matrix is: x, y, z, cos x, cos y, cos z, nelec
		#cota = cos x/cos z ; cotb = cos y/cos z
		position_data = lines[n].split(' ')
		x_position_pav[j] = float(position_data[1])
		y_position_pav[j] = float(position_data[0])
		cosx[j] = float(position_data[4])
		cosy[j] = float(position_data[3])
		cosz[j] = float(position_data[5])

		pixelsize_data = pixelsize.split('  ')
		pixelsize_x[j] = float(pixelsize_data[1]) #flipped on purpose cus matrix has transposed
		pixelsize_y[j] = float(pixelsize_data[0])
		pixelsize_z[j] = float(pixelsize_data[2])

		n+=14

	print("read in matrices from txt file\nflipped all matrices")

def convert_pav_to_cms():
	
	#switching out of pixelav coords to localx and localy
	#remember that h5 files have already been made with transposed matrices 
	'''
	float z_center = zsize/2.0;
	float xhit = x1 + (z_center - z1) * cosx/cosz; cosx/cosz = cota
	float yhit = y1 + (z_center - z1) * cosy/cosz; cosy/cosz = cotb
	x -> -y
	y -> -x
	z1 is always 0 
	'''
	cota = cosx/cosz
	cotb = cosy/cosz
	x_position = -(x_position_pav + (pixelsize_z/2.)*cota)
	y_position = -(y_position_pav + (pixelsize_z/2.)*cotb)

	print("converted labels from pixelav coords to cms coords \ncomputed cota cotb")

	return cota,cotb,x_position,y_position


def apply_gain(cluster_matrices,fe_type,common_noise_frac):
	#add 2 types of noise

	if(fe_type==1): #linear gain
		for index in np.arange(len(cluster_matrices)):
			hits = cluster_matrices[index][np.nonzero(cluster_matrices[index])]
			noise_1 = rng.normal(loc=0.,scale=1.,size=len(hits)) #generate a matrix with 21x13 elements from a gaussian dist with mu = 0 and sig = 1
			noise_2 = rng.normal(loc=0.,scale=1.,size=len(hits))
			hits+= gain_frac*noise_1*hits + readout_noise*noise_2
			cluster_matrices[index][np.nonzero(cluster_matrices[index])]=hits
		print("applied linear gain")

	elif(fe_type==2): #tanh gain
	#NEED TO CHANGE
		for index in np.arange(len(cluster_matrices)):
			#one_mat = cluster_matrices[index].reshape((13,21))
			#nonzero_idx = np.nonzero(one_mat)
			#hits = one_mat[nonzero_idx]
			hits = cluster_matrices[index][np.nonzero(cluster_matrices[index])]
			noise_1 = rng.normal(loc=0.,scale=1.,size=len(hits)) #generate a matrix with 21 elements from a gaussian dist with mu = 0 and sig = 1
			noise_2 = rng.normal(loc=0.,scale=1.,size=len(hits))
			'''
			noise_1,noise_2 = [],[]

			for i in range(13):

				noise_1_t = rng.normal(loc=0.,scale=1.,size=21) #generate a matrix with 21 elements from a gaussian dist with mu = 0 and sig = 1
				noise_2_t = rng.normal(loc=0.,scale=1.,size=21)
				noise_1.append(noise_1_t)
				noise_2.append(noise_2_t)

			noise_1 = np.array(noise_1).reshape((13,21))
			noise_2 = np.array(noise_2).reshape((13,21))

			noise_1 = noise_1[nonzero_idx]
			noise_2 = noise_2[nonzero_idx]
			'''
			
			adc = ((p3+p2*np.tanh(p0*(hits+ vcaloffst)/(7.0*vcal) - p1)).astype(int)).astype(float)
			hits = (((1.+gain_frac*noise_1)*(vcal*gain*(adc-ped))).astype(float) - vcaloffst + noise_2*readout_noise)

			#signal = ((float)((1.+gain_frac*ygauss[i])*(vcal*gain*(adc-ped))) - vcaloffst + zgauss[i]*readout_noise)/qscale
			#https://github.com/SanjanaSekhar/PixelTemplateProduction/blob/master/src/gen_zp_template.cc#L572
			#https://github.com/SanjanaSekhar/PixelTemplateProduction/blob/master/src/gen_zp_template.cc#L610
			noise_3 = rng.normal(loc=0.,scale=1.,size=1)
			qsmear = 1.+noise_3*common_noise_frac
			hits*=qsmear
			cluster_matrices[index][np.nonzero(cluster_matrices[index])]=hits
			#one_mat[nonzero_idx]=hits
			#cluster_matrices[index] = one_mat[:,:,np.newaxis]
		print("applied tanh gain")

	return cluster_matrices

def apply_noise_threshold(cluster_matrices,threshold,noise,threshold_noise_frac):
	#https://github.com/SanjanaSekhar/PixelTemplateProduction/blob/master/src/gen_zp_template.cc#L584-L610
	below_threshold_i = cluster_matrices < 200.
	cluster_matrices[below_threshold_i] = 0

	for index in np.arange(len(cluster_matrices)):

		hits = cluster_matrices[index][np.nonzero(cluster_matrices[index])]
		noise_1 = rng.normal(loc=0.,scale=1.,size=len(hits)) #generate a matrix with 21 elements from a gaussian dist with mu = 0 and sig = 1
		noise_2 = rng.normal(loc=0.,scale=1.,size=len(hits))
		'''
		one_mat = cluster_matrices[index].reshape((13,21))
		nonzero_idx = np.nonzero(one_mat)
		hits = one_mat[nonzero_idx]
		noise_1,noise_2 = [],[]
		for i in range(13):

			noise_1_t = rng.normal(loc=0.,scale=1.,size=21) #generate a matrix with 21x13 elements from a gaussian dist with mu = 0 and sig = 1
			noise_2_t = rng.normal(loc=0.,scale=1.,size=21)
			noise_1.append(noise_1_t)
			noise_2.append(noise_2_t)

		noise_1 = np.array(noise_1).reshape((13,21))
		noise_2 = np.array(noise_2).reshape((13,21))

		noise_1 = noise_1[nonzero_idx]
		noise_2 = noise_2[nonzero_idx]
		'''
		hits+=noise_1*noise
		threshold_noisy = threshold*(1+noise_2*threshold_noise_frac)
		below_threshold_i = hits < threshold_noisy
		hits[below_threshold_i] = 0.
		cluster_matrices[index][np.nonzero(cluster_matrices[index])]=hits

		#one_mat[nonzero_idx]=hits
		#cluster_matrices[index]=one_mat[:,:,np.newaxis]
	#cluster_matrices=(cluster_matrices/10.).astype(int)
	print("applied noise and threshold")
	return cluster_matrices


def center_clusters(cluster_matrices,threshold):
	
	n_train=len(cluster_matrices)
	j, n_empty = 0,0
	#cluster_matrices_new=np.zeros((n_train,13,21,1))
	for index in range(0,n_train):
		if(index%100000==0):
			print(index)

#	for index in np.arange(10):
#		print(cluster_matrices[index].reshape((13,21)).astype(int))
		#many matrices are zero cus below thresholf
		
		
		
		#find clusters
		one_mat = cluster_matrices[index].reshape((13,21))
		one_mat[one_mat<threshold] = 0. #https://github.com/SanjanaSekhar/PixelTemplateProduction/blob/master/src/gen_zp_template.cc#L694

		if(np.all(one_mat==0)):
			n_empty+=1
			continue
		#find largest hit (=seed)
		seed_index = np.argwhere(one_mat==np.amax(one_mat))[0]
		#find connected components 
		labels,n_clusters = label(one_mat.clip(0,1),structure=np.ones((3,3)))
		#if(index==28): print(one_mat, labels)
	
		max_cluster_size=0
		#if there is more than 1 cluster, the one with largest seed is the main one

		if(n_clusters>1):
		#	if index < 50: 
			#	print("index %i : There are %i clusters"%(index,n_clusters))
			#	print(one_mat)
			#	print("Labels = ", labels)
			#	print(seed_index)	
			for i in range(1,n_clusters+1):
				cluster_idxs_x = np.argwhere(labels==i)[:,0]
				cluster_idxs_y = np.argwhere(labels==i)[:,1]
				#if seed_index in np.argwhere(labels==i): 
				if np.amax(one_mat) in one_mat[labels==i]:
		#			if(index<50): 
			#			print("inside break ",seed_index, "i= ",i)
			#			print(np.argwhere(labels==i))
					break
				#cluster_size = len(cluster_idxs_x)
				#if cluster_size>max_cluster_size:
					#max_cluster_size = cluster_size
			largest_idxs_x = cluster_idxs_x
			largest_idxs_y = cluster_idxs_y
			'''
				#if there are 2 clusters of the same size then the largest hit is the main one
				elif cluster_size==max_cluster_size: #eg. 2 clusters of size 2
					if(np.amax(one_mat[largest_idxs_x,largest_idxs_y])<np.amax(one_mat[cluster_idxs_x,cluster_idxs_y])):
						largest_idxs_x = cluster_idxs_x
						largest_idxs_y = cluster_idxs_y
			'''
		elif(n_clusters==1):
			i = 1
			largest_idxs_x = np.argwhere(labels==1)[:,0]
			largest_idxs_y = np.argwhere(labels==1)[:,1]
		
		#if(index<30): 
		#	print("i = %i"%i)
		#	print("one_mat before deletion")
		#	print(one_mat)
		one_mat[labels!=i] = 0. #delete everything but the main cluster
		#if n_clusters>1 and index<50: 
		#	print("deleting all clusters but that containing the largest seed") 
		#	print(one_mat)
		#if(index<30): 
			
		#	print("one_mat AFTER deletion")
		#	print(one_mat)
		#find clustersize
		clustersize_x[j] = int(len(np.unique(largest_idxs_x)))
		clustersize_y[j] = int(len(np.unique(largest_idxs_y)))
		cota[j]=cota[index]
		cotb[j]=cotb[index]
		#find geometric centre of the main cluster using avg
		
		center_x = round(np.mean(largest_idxs_x))
		center_y = round(np.mean(largest_idxs_y))
		#if the geometric centre is not at (7,11) shift cluster

		nonzero_list = np.asarray(np.nonzero(one_mat))
		nonzero_x = nonzero_list[0,:]
		nonzero_y = nonzero_list[1,:]
		if(center_x<6):
			#shift down
			shift = int(6-center_x)
			if(np.amax(nonzero_x)+shift<=12):
				one_mat=np.roll(one_mat,shift,axis=0)
				x_position[j]+=pixelsize_x[index]*shift

		if(center_x>6):
			#shift up
			shift = int(center_x-6)
			if(np.amin(nonzero_x)-shift>=0):
				one_mat=np.roll(one_mat,-shift,axis=0)
				x_position[j]-=pixelsize_x[index]*shift

		if(center_y<10):
			#shift right
			shift = int(10-center_y)
			if(np.amax(nonzero_y)+shift<=20):
				one_mat=np.roll(one_mat,shift,axis=1)
				y_position[j]+=pixelsize_y[index]*shift

		if(center_y>10):
			#shift left
			shift = int(center_y-10)
			if(np.amin(nonzero_y)-shift>=0):
				one_mat=np.roll(one_mat,-shift,axis=1)
				y_position[j]-=pixelsize_y[index]*shift

		one_mat = one_mat/25000.
		cluster_matrices[j]=one_mat[:,:,np.newaxis]
		j+=1

	print("no of empty matrices: ",n_empty)
	print("shifted centre of clusters to matrix centres")
	if(n_empty!=0):	
		return cluster_matrices[:-n_empty],clustersize_x[:-n_empty],clustersize_y[:-n_empty],x_position[:-n_empty],y_position[:-n_empty],cota[:-n_empty],cotb[:-n_empty]
	else:
		return cluster_matrices,clustersize_x,clustersize_y,x_position,y_position,cota,cotb


def project_matrices_xy(cluster_matrices):

	#for dnn
	for index in np.arange(len(cluster_matrices)):
		x_flat[index] = cluster_matrices[index].reshape((13,21)).sum(axis=1)
		y_flat[index] = cluster_matrices[index].reshape((13,21)).sum(axis=0)

	print('took x and y projections of all matrices')	


def create_datasets_1d(f_x,f_y, x_flat,y_flat,cota_x,cotb_x,cota_y,cotb_y,clustersize_x,clustersize_y,x_position,y_position,dset_type):

	#normalize inputs
	'''
	for index in range(len(x_flat)): #currently testing double width in 1d only 

		max_c = x_flat[index].max()
		x_flat[index] = x_flat[index]/max_c		

	for index in range(len(y_flat)):

		max_c = y_flat[index].max()
		y_flat[index] = y_flat[index]/max_c
	'''

	x_dset = f_x.create_dataset("x", np.shape(x_position), data=x_position)
	y_dset = f_y.create_dataset("y", np.shape(y_position), data=y_position)
	cota_x_dset = f_x.create_dataset("cota", np.shape(cota_x), data=cota_x)
	cotb_x_dset = f_x.create_dataset("cotb", np.shape(cotb_x), data=cotb_x)
	cota_y_dset = f_y.create_dataset("cota", np.shape(cota_y), data=cota_y)
	cotb_y_dset = f_y.create_dataset("cotb", np.shape(cotb_y), data=cotb_y)
	clustersize_x_dset = f_x.create_dataset("clustersize_x", np.shape(clustersize_x), data=clustersize_x)
	clustersize_y_dset = f_y.create_dataset("clustersize_y", np.shape(clustersize_y), data=clustersize_y)
	x_flat_dset = f_x.create_dataset("%s_x_flat"%(dset_type), np.shape(x_flat), data=x_flat)
	y_flat_dset = f_y.create_dataset("%s_y_flat"%(dset_type), np.shape(y_flat), data=y_flat)

	print("made %s h5 files for 1D x and y. no. of events to %s on for x: %i and y: %i"%(dset_type,dset_type,len(x_flat),len(y_flat)))

def create_datasets_2d(f_x,f_y,cluster_matrices_x,cluster_matrices_y, cota_x,cotb_x,cota_y,cotb_y,clustersize_x,clustersize_y,x_position,y_position,dset_type):

	#normalize inputs
	
	for index in range(len(cluster_matrices_x)):

		max_c = cluster_matrices_x[index].max()
		cluster_matrices_x[index] = cluster_matrices_x[index]/max_c

	for index in range(len(cluster_matrices_y)):

		max_c = cluster_matrices_y[index].max()
		cluster_matrices_y[index] = cluster_matrices_y[index]/max_c
	
	
	clusters_x_dset = f_x.create_dataset("%s_hits"%(dset_type), np.shape(cluster_matrices_x), data=cluster_matrices_x)
	clusters_y_dset = f_y.create_dataset("%s_hits"%(dset_type), np.shape(cluster_matrices_y), data=cluster_matrices_y)
	x_dset = f_x.create_dataset("x", np.shape(x_position), data=x_position)
	y_dset = f_y.create_dataset("y", np.shape(y_position), data=y_position)
	cota_x_dset = f_x.create_dataset("cota", np.shape(cota_x), data=cota_x)
	cotb_x_dset = f_x.create_dataset("cotb", np.shape(cotb_x), data=cotb_x)
	cota_y_dset = f_y.create_dataset("cota", np.shape(cota_y), data=cota_y)
	cotb_y_dset = f_y.create_dataset("cotb", np.shape(cotb_y), data=cotb_y)
	clustersize_x_dset = f_x.create_dataset("clustersize_x", np.shape(clustersize_x), data=clustersize_x)
	clustersize_y_dset = f_y.create_dataset("clustersize_y", np.shape(clustersize_y), data=clustersize_y)
	
	print("made %s h5 files for 2D x and y. no. of events to %s on for x: %i and y: %i"%(dset_type,dset_type,len(cluster_matrices_x),len(cluster_matrices_y)))

'''
TO RUN:

python code/text2h5.py --file_in BPIX_L1F_template_events_d21901_d22100 --threshold_noise_frac 0.073 --common_noise_frac 0.06 --gain_noise_frac 0.25 --readout_noise 350. --th
reshold 2600 --date 022224
'''


parser = ArgumentParser(description="Preprocess Pixelav clusters for training - produces h5 files")
parser.add_argument("--phase1",  default=True, help="Phase 1 or Phase 2?")
parser.add_argument("--threshold",  default=3000, type = int, help="Threshold in no. of electrons")
parser.add_argument("--date", default="022224", help = "date for h5 file name")
parser.add_argument("--filename",  default="p1_2024_BPIXL1U", help="h5 file name extension")
parser.add_argument("--fe_type",  default=2, type = int, help="front-end type (1 for phase 2 and 2 for phase 1)")
parser.add_argument("--simulate_double",  default=True, help="simulate double width pixels too?")
parser.add_argument("--file_in",  default="BPIX_L1F_template_events_d21901_d22100", help="input template")
parser.add_argument("--gain_frac",  default=0.25, type = float, help="gain fraction")
parser.add_argument("--readout_noise",  default=350., type = float, help="readout noise")
parser.add_argument("--common_noise_frac",  default=0.08, type = float, help="common noise fraction")
parser.add_argument("--threshold_noise_frac",  default=0.073, type = float, help="threshold noise fraction")
options = parser.parse_args()

options.filename = "p1_2024_%s"%options.file_in.replace("_template_events","")
path = "root://cmseos.fnal.gov//store/user/ssekhar/templates_Run3_2023_MC/templates"
gain_frac     = options.gain_frac;
readout_noise = options.readout_noise;
noise = 250.;
common_noise_frac = options.common_noise_frac
threshold_noise_frac = options.threshold_noise_frac
qperToT = 1500; # e- per TOT
nbitsTOT = 4; # fixed and carved in stone?
ADCMax = np.power(2, nbitsTOT)-1;
dualslope = 4;

#--- Constants (could be made variables later)
gain  = 3.19;
ped   = 16.46;
#p0    = 0.01218;
#p1    = 0.711;
#p2    = 203.;
#p3    = 148.;	

# BPIX Phase 1

p0 = 0.01218
p1 = 0.711
p2 = 203.
p3 = 148.

#--- Variables we can change, but we start with good default values
#vcal = 47.0;	
#vcaloffst = 60.0;

# For phase 1 BPIX L1
vcal        = 50.   # L1:   49.6 +- 2.6
vcaloffst = 670. # L1:   -670 +- 220

fe_type = options.fe_type
threshold = options.threshold

if(options.phase1):
	#threshold = 2000; # BPIX L1 Run 3 https://github.com/cms-sw/cmssw/blob/master/SimGeneral/MixingModule/python/SiPixelSimParameters_cfi.py#L45
	#threshold = 2600; # BPIX L1 Phase1
	#threshold = 300
	fe_type = 2
else:

	#--- PhaseII - initial guess
	threshold = 1000; # threshold in e-
	fe_type = 1


date = options.date
filename = options.filename
simulate_double = options.simulate_double

testing_2024 = False 

if testing_2024:
	vcal = 65.5   # L1:   49.6 +- 2.6
	vcaloffst = 414.
	p0 = 0.0245
	p1 = 1.23
	p2 = 97.4
	p3 = 126.5
#====== test files ========

print("Processing file: ",options.file_in)
print("Using the following parameters: ")
print("noise = ",noise, " threshold = ", threshold, " thresh1_noise_frac = ", threshold_noise_frac," common_noise_frac = ", common_noise_frac," gain_noise_frac = ", gain_frac, " readout_noise = ",readout_noise," frontend_type = ", fe_type)

print_and_do("xrdcp -f %s/%s_test.out ."%(path,options.file_in))
print_and_do("xrdcp -f %s/%s_train.out ."%(path,options.file_in))

#print("making test h5 file.")
test_out = open("%s_test.out"%(options.file_in), "r")
#test_out = open("templates/BPIX_L1F_template_events_d21901_d22100_test.out", "r")
#test_out = open("templates/2024_samples/template_events_d94222.out", "r")
##print("writing to file %i \n",i)
lines = test_out.readlines()
test_out.close()

n_test = int((len(lines)-2)/14)
n_double = int(0.3*n_test)
#print("n_test = ",n_test)

#"image" size = 13x21x1
test_data = np.zeros((n_test,13,21,1))
x_position_pav = np.zeros((n_test,1))
y_position_pav = np.zeros((n_test,1))
cosx = np.zeros((n_test,1))
cosy = np.zeros((n_test,1))
cosz = np.zeros((n_test,1))
pixelsize_x = np.zeros((n_test,1))
pixelsize_y = np.zeros((n_test,1))
pixelsize_z = np.zeros((n_test,1))
clustersize_x = np.zeros((n_test,1))
clustersize_y = np.zeros((n_test,1))


extract_matrices(lines,test_data)
#print(test_data[0].reshape((21,13)).astype(int))
cota,cotb,x_position,y_position = convert_pav_to_cms()
##print(x_position_pav[0],y_position_pav[0])
##print(x_position[0],y_position[0])

#n_elec were scaled down by 10 so multiply
test_data = 10*test_data
print("multiplied all elements by 10")
#for i in range(30):
#	print("======== Cluster %i ========\n"%i)
#	print(test_data[i].reshape((21,13)).astype(int))

test_data = apply_noise_threshold(test_data,threshold,noise,threshold_noise_frac)
#print(test_data[0].reshape((21,13)).astype(int))
test_data = apply_gain(test_data,fe_type,common_noise_frac)
#print(test_data[28].reshape((13,21)).astype(int))
#	print(test_data[i].reshape((21,13)).astype(int))

test_data,clustersize_x,clustersize_y,x_position,y_position,cota,cotb = center_clusters(test_data,threshold)
#for i in range(30):
#        print("======== Modified Cluster %i ========\n"%i)
#        print(test_data[i].reshape((21,13)).astype(int))
#print(test_data[28].reshape((13,21)))
#print(x_position[0],y_position[0])
x_flat = np.zeros((len(test_data),13))
y_flat = np.zeros((len(test_data),21))
project_matrices_xy(test_data)
#print(x_flat[0],y_flat[0])
#print(clustersize_x[0],clustersize_y[0])'
if simulate_double:
	
	f_x = h5py.File("h5_files/test_x_1d_%s_%s.hdf5"%(filename,date), "w")
	f_y = h5py.File("h5_files/test_y_1d_%s_%s.hdf5"%(filename,date), "w")
	x_flat,y_flat,clustersize_x,clustersize_y,x_position,y_position,cota_x,cotb_x,cota_y,cotb_y= simulate_double_width_1d(x_flat,y_flat,clustersize_x,clustersize_y,x_position,y_position,cota,cotb,n_double)
	create_datasets_1d(f_x,f_y,x_flat,y_flat,cota_x,cotb_x,cota_y,cotb_y,clustersize_x,clustersize_y,x_position,y_position,"test")
	
	#test_data_x,test_data_y,clustersize_x,clustersize_y,x_position,y_position,cota_x,cotb_x,cota_y,cotb_y= simulate_double_width_2d(test_data,clustersize_x,clustersize_y,x_position,y_position,cota,cotb,n_double)

	#f_x = h5py.File("h5_files/test_x_2d_%s_%s.hdf5"%(filename,date), "w")
	#f_y = h5py.File("h5_files/test_y_2d_%s_%s.hdf5"%(filename,date), "w")

	#create_datasets_2d(f_x,f_y,test_data_x,test_data_y,cota_x,cotb_x,cota_y,cotb_y,clustersize_x,clustersize_y,x_position,y_position,"test")
	
else:

	f_x = h5py.File("h5_files/test_x_1d_nodouble_testing_%s_%s.hdf5"%(filename,date), "w")
	f_y = h5py.File("h5_files/test_y_1d_nodouble_testing_%s_%s.hdf5"%(filename,date), "w")
	create_datasets_1d(f_x,f_y,x_flat,y_flat,cota,cotb,cota,cotb,clustersize_x,clustersize_y,x_position,y_position,"test")



#=====train files===== 

print("making train h5 file")
train_out = open("%s_train.out"%(options.file_in), "r")
#train_out = open("templates/template_events_d83710.out", "r")
#train_out = open("templates/BPIX_L1F_template_events_d21901_d22100_train.out", "r")
##print("writing to file %i \n",i)
lines = train_out.readlines()
train_out.close()

n_train = int((len(lines)-2)/14)
n_double = int(0.3*n_train)
#print("n_train = ",n_train)

#"image" size = 13x21x1
train_data = np.zeros((n_train,13,21,1))
x_position_pav = np.zeros((n_train,1))
y_position_pav = np.zeros((n_train,1))
cosx = np.zeros((n_train,1))
cosy = np.zeros((n_train,1))
cosz = np.zeros((n_train,1))
pixelsize_x = np.zeros((n_train,1))
pixelsize_y = np.zeros((n_train,1))
pixelsize_z = np.zeros((n_train,1))
clustersize_x = np.zeros((n_train,1))
clustersize_y = np.zeros((n_train,1))


extract_matrices(lines,train_data)
#print(train_data[0].reshape((13,21)))
cota,cotb,x_position,y_position = convert_pav_to_cms()
#print(x_position_pav[0],y_position_pav[0])
#print(x_position[0],y_position[0])
#n_elec were scaled down by 10 so multiply
train_data = 10*train_data
#print("multiplied all elements by 10")
#print(train_data[0].reshape((13,21)))

train_data = apply_noise_threshold(train_data,threshold,noise,threshold_noise_frac)
#print(test_data[0].reshape((21,13)).astype(int))
train_data = apply_gain(train_data,fe_type,common_noise_frac)
#print(test_data[0].reshape((21,13)).astype(int))

train_data,clustersize_x,clustersize_y,x_position,y_position,cota,cotb= center_clusters(train_data,threshold)
#print(train_data[0].reshape((13,21)))
#print(x_position[0],y_position[0])
x_flat = np.zeros((len(train_data),13))
y_flat = np.zeros((len(train_data),21))
project_matrices_xy(train_data)
#print(x_flat[0],y_flat[0])
#print(clustersize_x[0],clustersize_y[0])


if simulate_double:
	
	f_x = h5py.File("h5_files/train_x_1d_%s_%s.hdf5"%(filename,date), "w")
	f_y = h5py.File("h5_files/train_y_1d_%s_%s.hdf5"%(filename,date), "w")
	x_flat,y_flat,clustersize_x,clustersize_y,x_position,y_position,cota_x,cotb_x,cota_y,cotb_y= simulate_double_width_1d(x_flat,y_flat,clustersize_x,clustersize_y,x_position,y_position,cota,cotb,n_double)
	create_datasets_1d(f_x,f_y,x_flat,y_flat,cota_x,cotb_x,cota_y,cotb_y,clustersize_x,clustersize_y,x_position,y_position,"train")
	
	#train_data_x,train_data_y,clustersize_x,clustersize_y,x_position,y_position,cota_x,cotb_x,cota_y,cotb_y= simulate_double_width_2d(train_data,clustersize_x,clustersize_y,x_position,y_position,cota,cotb,n_double)

	#f_x = h5py.File("h5_files/train_x_2d_%s_%s.hdf5"%(filename,date), "w")
	#f_y = h5py.File("h5_files/train_y_2d_%s_%s.hdf5"%(filename,date), "w")

	#create_datasets_2d(f_x,f_y,train_data_x,train_data_y,cota_x,cotb_x,cota_y,cotb_y,clustersize_x,clustersize_y,x_position,y_position,"train")
	
else:
	f_x = h5py.File("h5_files/train_x_1d_nodouble_testing_%s_%s.hdf5"%(filename,date), "w")
	f_y = h5py.File("h5_files/train_y_1d_nodouble_testing_%s_%s.hdf5"%(filename,date), "w")
	create_datasets_1d(f_x,f_y,x_flat,y_flat,cota,cotb,cota,cotb,clustersize_x,clustersize_y,x_position,y_position,"train")

print_and_do("rm -rf %s_test.out %s_train.out"%(options.file_in,options.file_in))



