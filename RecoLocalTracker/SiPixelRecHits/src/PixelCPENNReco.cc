// Include our own header first
#include "RecoLocalTracker/SiPixelRecHits/interface/PixelCPETemplateReco.h"
#include "RecoLocalTracker/SiPixelRecHits/interface/PixelCPENNReco.h"


// Geometry services
#include "CondFormats/SiPixelTransient/interface/SiPixelTemplate.h"
#include "DataFormats/DetId/interface/DetId.h"
#include "Geometry/CommonDetUnit/interface/PixelGeomDetUnit.h"
#include "Geometry/TrackerGeometryBuilder/interface/RectangularPixelTopology.h"

//#define DEBUG

// MessageLogger

#include "FWCore/MessageLogger/interface/MessageLogger.h"

// Magnetic field
#include "MagneticField/Engine/interface/MagneticField.h"

// The template header files
#include "RecoLocalTracker/SiPixelRecHits/interface/SiPixelTemplateReco.h"

// Commented for now (3/10/17) until we figure out how to resuscitate 2D template splitter
/// #include "RecoLocalTracker/SiPixelRecHits/interface/SiPixelTemplateSplit.h"

#include "FWCore/MessageLogger/interface/MessageLogger.h"

#include <vector>
#include "boost/multi_array.hpp"

#include <iostream>
#include <chrono>

//using namespace SiPixelTemplateReco;
//using namespace SiPixelTemplateSplit;
using namespace std;

namespace {
	constexpr float micronsToCm = 1.0e-4;
	constexpr int cluster_matrix_size_x = 13;
	constexpr int cluster_matrix_size_y = 21;
	constexpr float pixelsize_x = 100., pixelsize_y = 150., pixelsize_z = 285.0;
}  // namespace

//-----------------------------------------------------------------------------
//  Constructor.
//
//-----------------------------------------------------------------------------
PixelCPENNReco::PixelCPENNReco(edm::ParameterSet const& conf,
	const MagneticField* mag,
	const TrackerGeometry& geom,
	const TrackerTopology& ttopo,
	const SiPixelLorentzAngle* lorentzAngle,
	const SiPixelGenErrorDBObject* genErrorDBObject,
	std::vector<const tensorflow::Session*> session_x_vec_,
	std::vector<const tensorflow::Session*> session_y_vec_
	)
	:PixelCPEGenericBase(conf, mag, geom, ttopo, lorentzAngle, genErrorDBObject, nullptr){
//: PixelCPEBase(conf, mag, geom, ttopo, lorentzAngle, genErrorDBObject, nullptr, nullptr, 59){

	tensorflow::setLogging("0");	
	session_x_vec = session_x_vec_;
	session_y_vec = session_y_vec_;
	inputTensorName_x = conf.getParameter<std::string>("inputTensorName_x");
	anglesTensorName_x = conf.getParameter<std::string>("anglesTensorName_x");
	cchargeTensorName_x = conf.getParameter<std::string>("cchargeTensorName_x");
	outputTensorName_x = conf.getParameter<std::string>("outputTensorName_x");

	inputTensorName_y = conf.getParameter<std::string>("inputTensorName_y");
	anglesTensorName_y = conf.getParameter<std::string>("anglesTensorName_y");
	cchargeTensorName_y = conf.getParameter<std::string>("cchargeTensorName_y");
	outputTensorName_y = conf.getParameter<std::string>("outputTensorName_y");

	cpe = conf.getParameter<std::string>("cpe");
	
	// float theClusterParam.NNXrec_ =  -99999.9f;
	// float theClusterParam.NNYrec_ =  -99999.9f;
	// float theClusterParam.NNSigmaX_ =  -99999.9f;
	// float theClusterParam.NNSigmaY_ = -99999.9f;

	if (!SiPixelGenError::pushfile(*genErrorDBObject_, thePixelGenError_))
      throw cms::Exception("InvalidCalibrationLoaded")
          << "ERROR: GenErrors not filled correctly. Check the sqlite file. Using SiPixelTemplateDBObject version "
          << (*genErrorDBObject_).version();
}

//-----------------------------------------------------------------------------
//  Clean up.
//-----------------------------------------------------------------------------
PixelCPENNReco::~PixelCPENNReco() {}

std::unique_ptr<PixelCPEBase::ClusterParam> PixelCPENNReco::createClusterParam(const SiPixelCluster& cl) const {
	return std::make_unique<ClusterParamTemplate>(cl);
}

//------------------------------------------------------------------
//  Public methods mandated by the base class.
//------------------------------------------------------------------

//------------------------------------------------------------------
//  The main call to the template code.
//------------------------------------------------------------------
LocalPoint PixelCPENNReco::localPosition(DetParam const& theDetParam, ClusterParam& theClusterParamBase) const {
	
       
	ClusterParamTemplate& theClusterParam = static_cast<ClusterParamTemplate&>(theClusterParamBase);
	ClusterParamGeneric& theClusterParam_ge = static_cast<ClusterParamGeneric&>(theClusterParamBase);

	float ierr = 0;

	if (!GeomDetEnumerators::isTrackerPixel(theDetParam.thePart))
		throw cms::Exception("PixelCPENNReco::localPosition :") << "A non-pixel detector type in here?";
  	int layer, ladder, module;
	const bool fpix = GeomDetEnumerators::isEndcap(theDetParam.thePart);

	if(fpix){
		//edm::LogError("PixelCPENNReco") << "@SUB = PixelCPENNReco::localPosition"
		//<< "Network not trained on FPIX D" << ttopo_.pxfDisk(theDetParam.theDet->geographicalId().rawId())
		//<< " (BPIX L" << ttopo_.pxbLayer(theDetParam.theDet->geographicalId().rawId()) << ")";
		ierr = 12345;
	}
  

	  layer = ttopo_.pxbLayer(theDetParam.theDet->geographicalId().rawId());
	  ladder = ttopo_.pxbLadder(theDetParam.theDet->geographicalId().rawId());
	  module = ttopo_.pxbModule(theDetParam.theDet->geographicalId().rawId());
	  if(!fpix) cout << "BPIX layer " << layer << " ladder " << ladder << " module " << module << endl;
	  /*
	  std::string input_1 = "input_1";
	  std::string input_2 = "input_2";
	  std::string input_3 = "input_3";
	  std::string input_4 = "input_4";
	  std::string input_5 = "input_5";
	  std::string input_6 = "input_6";
	  std::string input_7 = "input_7";
	  std::string input_8 = "input_8";
	  std::string cluster_tensor_x, angles_tensor_x, cluster_tensor_y, angles_tensor_y;
  	  */
  //outer ladders = unflipped = odd nos
  	  
	  const tensorflow::Session* session_x; 
          const tensorflow::Session* session_y;
	  if (layer == 1 and ladder%2 != 0) {
		session_x = session_x_vec.at(0); session_y = session_y_vec.at(0);
		//cluster_tensor_x = input_1; angles_tensor_x = input_2;
                //cluster_tensor_y = input_3; angles_tensor_y = input_4;
		}
	  else if (layer == 1 and ladder%2 == 0) {
		session_x = session_x_vec.at(1); session_y = session_y_vec.at(1);
		//cluster_tensor_x = input_1; angles_tensor_x = input_2; 
		//cluster_tensor_y = input_1; angles_tensor_y = input_2;
		}
	  else if (layer == 2) {
		session_x = session_x_vec.at(1); session_y = session_y_vec.at(1); 
		//cluster_tensor_x = input_5; angles_tensor_x = input_6;
                //cluster_tensor_y = input_7; angles_tensor_y = input_8;
				ierr = 12345;
		
		} // using L2old model for all of L2
	  else if (layer == 3 and module <= 4) {
		session_x = session_x_vec.at(4); session_y = session_y_vec.at(4);
		//cluster_tensor_x = input_1; angles_tensor_x = input_2;
                //cluster_tensor_y = input_3; angles_tensor_y = input_4;
		}
	  else if (layer == 3 and module > 4) {
		session_x = session_x_vec.at(5); session_y = session_y_vec.at(5);
		//cluster_tensor_x = input_1; angles_tensor_x = input_2;
                //cluster_tensor_y = input_3; angles_tensor_y = input_4;
		}
	  else if (layer == 4 and module <= 4) {
		session_x = session_x_vec.at(6); session_y = session_y_vec.at(6);
		//cluster_tensor_x = input_1; angles_tensor_x = input_2;
                //cluster_tensor_y = input_3; angles_tensor_y = input_4;
		}
	  else //if (layer == 4 and module > 4) 
		{session_x = session_x_vec.at(7); session_y = session_y_vec.at(7);
		//cluster_tensor_x = input_5; angles_tensor_x = input_6;
                //cluster_tensor_y = input_7; angles_tensor_y = input_8;
		}
  	  
   // Preparing to retrieve ADC counts from the SiPixeltheClusterParam.theCluster->  In the cluster,
  // we have the following:
  //   int minPixelRow(); // Minimum pixel index in the x direction (low edge).
  //   int maxPixelRow(); // Maximum pixel index in the x direction (top edge).
  //   int minPixelCol(); // Minimum pixel index in the y direction (left edge).
  //   int maxPixelCol(); // Maximum pixel index in the y direction (right edge).
  // So the pixels from minPixelRow() will go into clust_array_2d[0][*],
  // and the pixels from minPixelCol() will go into clust_array_2d[*][0].

	int row_offset = theClusterParam.theCluster->minPixelRow();
	int col_offset = theClusterParam.theCluster->minPixelCol();

  // Store the coordinates of the center of the (0,0) pixel of the array that
  // gets passed to PixelTempReco1D
  // Will add these values to the output of  PixelTempReco1D
	float tmp_x = float(row_offset) + 0.5f;
	float tmp_y = float(col_offset) + 0.5f;
  // Store these offsets (to be added later) in a LocalPoint after tranforming
  // them from measurement units (pixel units) to local coordinates (cm)
  //
  //

  // In case of template reco failure, these are the lorentz drift corrections
  // to be applied
	float lorentzshiftX = 0.5f * theDetParam.lorentzShiftInCmX;
	float lorentzshiftY = 0.5f * theDetParam.lorentzShiftInCmY;
  //printf("lorentzshiftX = %.2f, lorentzshiftY = %0.2f\n",lorentzshiftX,lorentzshiftY);
	LocalPoint lp;

	if (theClusterParam.with_track_angle)
		lp = theDetParam.theTopol->localPosition(MeasurementPoint(tmp_x, tmp_y), theClusterParam.loc_trk_pred);
	else {
		edm::LogError("PixelCPENNReco") << "@SUB = PixelCPENNReco::localPosition"
		<< "Should never be here. PixelCPENNReco should always be called with "
		"track angles. This is a bad error !!! ";

		lp = theDetParam.theTopol->localPosition(MeasurementPoint(tmp_x, tmp_y));
	}

  // first compute matrix size
	int mrow = 0, mcol = 0;
	for (int i = 0; i != theClusterParam.theCluster->size(); ++i) {
		auto pix = theClusterParam.theCluster->pixel(i);
		int irow = int(pix.x);
		int icol = int(pix.y);
		mrow = std::max(mrow, irow);
		mcol = std::max(mcol, icol);
	}
	mrow -= row_offset;
	mrow += 1;
	mrow = std::min(mrow, cluster_matrix_size_x);
	mcol -= col_offset;
	mcol += 1;
	mcol = std::min(mcol, cluster_matrix_size_y);
	assert(mrow > 0);
	assert(mcol > 0);

	float clustMatrix[TXSIZE][TYSIZE], clustMatrix_temp[TXSIZE][TYSIZE], clustMatrix_x[TXSIZE], clustMatrix_y[TYSIZE];
	float cluster_charge = 0, pixmax = -9999., norm_charge = 25000.;
	memset(clustMatrix, 0, sizeof(float) * TXSIZE * TYSIZE);
	memset(clustMatrix_temp, 0, sizeof(float) * TXSIZE * TYSIZE);
	memset(clustMatrix_x, 0, sizeof(float) * TXSIZE);
	memset(clustMatrix_y, 0, sizeof(float) * TYSIZE);

	int n_double_x = 0, n_double_y = 0;
	int mid_x = 0, mid_y = 0;    
	int clustersize = 0;
	int double_row[5], double_col[5]; 
	for(int i=0;i<5;i++){
		double_row[i]=-1;
		double_col[i]=-1;
	}

	int irow_sum = 0, icol_sum = 0;
	for (int i = 0;  i < theClusterParam.theCluster->size(); i++) {
		auto pix = theClusterParam.theCluster->pixel(i);
		int irow = int(pix.x) - row_offset;
		int icol = int(pix.y) - col_offset;
		if ((irow >= mrow) || (icol >= mcol)) continue; 
		if ((int)pix.x == 79 || (int)pix.x == 80){
			int flag=0;
			for(int j=0;j<5;j++){
				if(irow==double_row[j]) {flag = 1; break;}
			}
			if(flag!=1) {double_row[n_double_x]=irow; n_double_x++;}
		}
		if ((int)pix.y % 52 == 0 || (int)pix.y % 52 == 51){
			int flag=0;
			for(int j=0;j<5;j++){
				if(icol==double_col[j]) {flag = 1; break;}
			}
			if(flag!=1) {double_col[n_double_y]=icol; n_double_y++;}
		}
		irow_sum+=irow;
		icol_sum+=icol;
		clustersize++;
		//if(float(pix.adc) > cluster_max) cluster_max = float(pix.adc); 
		//if(float(pix.adc) < cluster_min) cluster_min = float(pix.adc); 

	}
	if(clustersize==0){edm::LogError("PixelCPENNReco") <<"EMPTY CLUSTER\n";} 
	if(n_double_x>2 or n_double_y>2){
		edm::LogError("PixelCPENNReco") << "MORE THAN 2 DOUBLE COL in X or Y";
	}
	n_double_x=0; n_double_y=0;
	  //printf("max = %f, min = %f\n",cluster_max,cluster_min);
	int clustersize_x = theClusterParam.theCluster->sizeX(), clustersize_y = theClusterParam.theCluster->sizeY();
	mid_x = round(float(irow_sum)/float(clustersize));
	mid_y = round(float(icol_sum)/float(clustersize));
	int offset_x = 6 - mid_x;
	int offset_y = 10 - mid_y;


	//printf("Cluster size in x: %i and y: %i\n",theClusterParam.theCluster->sizeX(),theClusterParam.theCluster->sizeY());
  // Copy clust's pixels (calibrated in electrons) into clusMatrix;
	for (int i = 0; i < theClusterParam.theCluster->size(); ++i) {
		auto pix = theClusterParam.theCluster->pixel(i);
		int irow = int(pix.x) - row_offset + offset_x;
		int icol = int(pix.y) - col_offset + offset_y;
		if(std::isnan(pix.adc)) printf("PIX.ADC IS NAN");
	//printf("irow = %i, icol = %i, pix.adc = %i, mrow = %i, offset_x = %i, mcol = %i, offset_y = %i\n",irow,icol,pix.adc,mrow,offset_x,mcol,offset_y);	
		if ((irow >= mrow+offset_x) || (icol >= mcol+offset_y)){
		//printf("irow or icol exceeded, SKIPPING. irow = %i, mrow = %i, offset_x = %i,icol = %i, mcol = %i, offset_y = %i\n",irow,mrow,offset_x,icol,mcol,offset_y);
			continue;
		}
		if ((int)pix.x == 79 || (int)pix.x == 80){
			int flag=0;
			for(int j=0;j<5;j++){
				if(irow==double_row[j]) {flag = 1; break;}
			}
			if(flag!=1) {double_row[n_double_x]=irow; n_double_x++;}
		}
		if ((int)pix.y % 52 == 0 || (int)pix.y % 52 == 51 ){
			int flag=0;
			for(int j=0;j<5;j++){
				if(icol==double_col[j]) {flag = 1; break;}
			}
			if(flag!=1) {double_col[n_double_y]=icol; n_double_y++;}
		}
	// Gavril : what do we do here if the row/column is larger than cluster_matrix_size_x/cluster_matrix_size_y  ?
	// Ignore them for the moment...
		if ((irow < mrow + offset_x) & (icol < mcol + offset_y)){
			if(isnan(pix.adc)){ 
				printf("PIX ADC IS NAN\n");
				edm::LogError("PixelCPENNReco") << "@SUB = PixelCPENNReco::localPosition"
				<< "Pixel adc is NaN !!! ";
			}
	//printf("%i\n",pix.adc);	
			
			clustMatrix_temp[irow][icol] = float(pix.adc)/norm_charge;
			
		}
	}
	
	

	if(clustersize_x > 11 or clustersize_y > 19) {
		edm::LogError("PixelCPENNReco") << "@SUB = PixelCPENNReco::localPosition"
		<< " CLUSTER IS ABSURDLY LARGE ! Clustersize in x = " << clustersize_x << " Clustersize in y = " << clustersize_y;
		ierr = 12345;
	}

   // if(n_double_x==1 && clustersize_x>12) {printf("clustersize_x > 12, SKIPPING\n"); } // NEED TO FIX CLUSTERSIZE COMPUTATION
   // if(n_double_x==2 && clustersize_x>11) {printf("clustersize_x > 11, SKIPPING\n"); }
   // if(n_double_y==1 && clustersize_y>20) {printf("clustersize_y = %i > 20, SKIPPING\n", clustersize_y);}
   // if(n_double_y==2 && clustersize_x>19) {printf("clustersize_y = %i > 19, SKIPPING\n", clustersize_y);}

//first deal with double width pixels in x
	int k=0,m=0;
	for(int i=0;i<TXSIZE;i++){
		if(i==double_row[m] and clustersize_x>1){
		//printf("TREATING DPIX%i IN X\n",m+1);
			for(int j=0;j<TYSIZE;j++){
				clustMatrix[i][j]=clustMatrix_temp[k][j]/2.;
				clustMatrix[i+1][j]=clustMatrix_temp[k][j]/2.;
			}
			i++;
			if(m==0 and n_double_x==2) {
				double_row[1]++;
				m++;
			}
		}
		else{
			for(int j=0;j<TYSIZE;j++){
				clustMatrix[i][j]=clustMatrix_temp[k][j];
			}
		}
		k++;
	}
	k=0;m=0;
	for(int i=0;i<TXSIZE;i++){
		for(int j=0;j<TYSIZE;j++){
			clustMatrix_temp[i][j]=clustMatrix[i][j];
			clustMatrix[i][j]=0.;
		}
	}
	for(int j=0;j<TYSIZE;j++){
		if(j==double_col[m] and clustersize_y>1){
		//printf("TREATING DPIX%i IN Y\n",m+1);
			for(int i=0;i<TXSIZE;i++){
				clustMatrix[i][j]=clustMatrix_temp[i][k]/2.;
				clustMatrix[i][j+1]=clustMatrix_temp[i][k]/2.;
			}
			j++;
			if(m==0 and n_double_y==2) {
				double_col[1]++;
				m++;
			}
		}
		else{
			for(int i=0;i<TXSIZE;i++){
				clustMatrix[i][j]=clustMatrix_temp[i][k];
			}
		}
		k++;
	}


	float locBz = theDetParam.bz;
	float locBx = theDetParam.bx;
	// LogDebug("PixelCPEFast") << "PixelCPEFast::localPosition(...) : locBz = " << locBz;
  
	theClusterParam_ge.pixmx = std::numeric_limits<int>::max();  // max pixel charge for truncation of 2-D cluster
  
	theClusterParam_ge.sigmay = -999.9;  // CPE Generic y-error for multi-pixel cluster
	theClusterParam_ge.sigmax = -999.9;  // CPE Generic x-error for multi-pixel cluster
	theClusterParam_ge.sy1 = -999.9;     // CPE Generic y-error for single single-pixel
	theClusterParam_ge.sy2 = -999.9;     // CPE Generic y-error for single double-pixel cluster
	theClusterParam_ge.sx1 = -999.9;     // CPE Generic x-error for single single-pixel cluster
	theClusterParam_ge.sx2 = -999.9;     // CPE Generic x-error for single double-pixel cluster
  
	float dummy;
	float qclus = 20000.;
	bool IBC = false;
  
	SiPixelGenError gtempl(thePixelGenError_);
	int gtemplID = theDetParam.detTemplateId;
  
	theClusterParam.qBin_ = gtempl.qbin(gtemplID,
										theClusterParam_ge.cotalpha,
										theClusterParam_ge.cotbeta,
										locBz,
										locBx,
										qclus,
										IBC,
										theClusterParam_ge.pixmx,
										theClusterParam_ge.sigmay,
										dummy,
										theClusterParam_ge.sigmax,
										dummy,
										theClusterParam_ge.sy1,
										dummy,
										theClusterParam_ge.sy2,
										dummy,
										theClusterParam_ge.sx1,
										dummy,
										theClusterParam_ge.sx2,
										dummy);
  
	pixmax = theClusterParam_ge.pixmx/norm_charge;
	cout << " theClusterParam_ge.pixmx =  " << pixmax << endl;
	
	//compute the 1d projection 
	for(int i = 0;i < TXSIZE; i++){
		for(int j = 0; j < TYSIZE; j++){
			if (clustMatrix[i][j] > pixmax) clustMatrix[i][j] = pixmax;
			clustMatrix_x[i] += clustMatrix[i][j];
		}
	}
	for(int i = 0;i < TYSIZE; i++){
		for(int j = 0; j < TXSIZE; j++){
			clustMatrix_y[i] += clustMatrix[j][i];
		}
	}
	
	
										// Output:

    cout << " ierr " << ierr << endl;

  //========================================================================================
 //  printf("1D CLUSTER cota = %.2f, cotb = %.2f, graphPath_x = %s, inputTensorname = %s, outputTensorName = %s and %s, anglesTensorName = %s\n",theClusterParam.cotalpha,theClusterParam.cotbeta, graphPath_x.c_str(), inputTensorName_x.c_str(),outputTensorName_x.c_str(),outputTensorName_y.c_str(),anglesTensorName_x.c_str());    
    if(ierr != 12345){ 
		   // define a tensor and fill it with cluster projection
    	tensorflow::Tensor cluster_flat_x(tensorflow::DT_FLOAT, {1,TXSIZE,1});
    	tensorflow::Tensor cluster_flat_y(tensorflow::DT_FLOAT, {1,TYSIZE,1});
		  //tensorflow::Tensor cluster_(tensorflow::DT_FLOAT, {1,TXSIZE,TYSIZE,1});
			// angles
    	tensorflow::Tensor angles(tensorflow::DT_FLOAT, {1,2});
	tensorflow::Tensor ccharge(tensorflow::DT_FLOAT, {1,1});

    	angles.tensor<float,2>()(0, 0) = theClusterParam.cotalpha;
    	angles.tensor<float,2>()(0, 1) = theClusterParam.cotbeta;
	ccharge.tensor<float,2>()(0, 0) = pixmax;

    	for (int i = 0; i < TXSIZE; i++) 
    		cluster_flat_x.tensor<float,3>()(0, i, 0) = clustMatrix_x[i];
    	for (int j = 0; j < TYSIZE; j++)
    		cluster_flat_y.tensor<float,3>()(0, j, 0) = clustMatrix_y[j];

		  //  Determine current time

		   //gettimeofday(&now0, &timz);
	 //cout<<"Running NN CPE inference"<<endl;
 	 std::vector<tensorflow::Tensor> output_x, output_y;   	
    		

		auto start = std::chrono::high_resolution_clock::now(); 

		tensorflow::run(const_cast<tensorflow::Session *>(session_x), {{inputTensorName_x,cluster_flat_x}, {cchargeTensorName_x,ccharge}, {anglesTensorName_x,angles}}, {outputTensorName_x}, &output_x);
    		tensorflow::run(const_cast<tensorflow::Session *>(session_y), {{inputTensorName_y,cluster_flat_y}, {cchargeTensorName_y,ccharge}, {anglesTensorName_y,angles}}, {outputTensorName_y}, &output_y);
    	
		auto end = std::chrono::high_resolution_clock::now();
		auto duration = std::chrono::duration_cast<std::chrono::microseconds>(end - start);

    		std::cout << "Execution time: " << duration.count() << " microseconds" << std::endl;
    	
	theClusterParam.NNXrec_ = output_x[0].matrix<float>()(0,0);
    	theClusterParam.NNXrec_ = theClusterParam.NNXrec_ + pixelsize_x*(mid_x); 
    	theClusterParam.NNSigmaX_ = sqrt(output_x[0].matrix<float>()(0,1));
		  //printf("x = %f, x_err = %f, y = %f, y_err = %f\n",theClusterParam.NNXrec_, theClusterParam.NNSigmaX_, theClusterParam.NNYrec_, theClusterParam.NNSigmaY_); 
    	theClusterParam.NNYrec_ = output_y[0].matrix<float>()(0,0);
    	theClusterParam.NNYrec_ = theClusterParam.NNYrec_ + pixelsize_y*(mid_y);
    	theClusterParam.NNSigmaY_ = sqrt(output_y[0].matrix<float>()(0,1));
		  //printf("x = %f, x_err = %f, y = %f, y_err = %f\n",theClusterParam.NNXrec_, theClusterParam.NNSigmaX_, theClusterParam.NNYrec_, theClusterParam.NNSigmaY_);

    	if(isnan(theClusterParam.NNXrec_) or theClusterParam.NNXrec_>=1300 or isnan(theClusterParam.NNYrec_) or theClusterParam.NNYrec_>=3150 ){
    		printf("====================== NN RECO HAS FAILED: POSITION LARGER THAN BUFFER ======================"); 
    		printf("x = %f,  y = %f\n",theClusterParam.NNXrec_, theClusterParam.NNYrec_);
    		ierr = 12345;
    		for(int i = 0 ; i < TXSIZE ; i++){
    			for(int j = 0 ; j < TYSIZE ; j++) 
    				printf("%.2f ",clustMatrix[i][j]);
    			printf("\n");
    		}
			// printf("1D CLUSTER cota = %.2f, cotb = %.2f, graphPath_x = %s, inputTensorname = %s, outputTensorName = %s, anglesTensorName = %s\n",theClusterParam.cotalpha,theClusterParam.cotbeta, graphPath_x.c_str(), inputTensorName_x.c_str(),outputTensorName_.c_str(),anglesTensorName_x.c_str());
    		for(int i = 0; i < TXSIZE; i++) printf("%.2f \n", cluster_flat_x.tensor<float,3>()(0, i, 0));
    	}

    	else ierr = 0.;
} 
  //printf("ierr = %i\n",ierr);
  // Check exit status
if(ierr != 0) {
	LogDebug("PixelCPENNReco::localPosition")
	<< "reconstruction failed with error " << ierr << "\n";
	printf("NN reco has failed, compute position estimates based on cluster center of gravity + Lorentz drift\n");
	// Template reco has failed, compute position estimates based on cluster center of gravity + Lorentz drift
	// Future improvement would be to call generic reco instead

	// ggiurgiu@jhu.edu, 21/09/2010 : trk angles needed to correct for bows/kinks
	if (theClusterParam.with_track_angle) {
	 //printf("theClusterParam.theCluster->x() = %f, lorentzshiftX = %f\n", theClusterParam.theCluster->x(),  lorentzshiftX);
	 //printf("theClusterParam.theCluster->y() = %f, lorentzshiftY = %f\n", theClusterParam.theCluster->y(),  lorentzshiftY);
		theClusterParam.NNXrec_ =
		theDetParam.theTopol->localX(theClusterParam.theCluster->x(), theClusterParam.loc_trk_pred) + lorentzshiftX;
		theClusterParam.NNYrec_ =
		theDetParam.theTopol->localY(theClusterParam.theCluster->y(), theClusterParam.loc_trk_pred ) + lorentzshiftY;
	} else {
		edm::LogError("PixelCPENNReco") << "@SUB = PixelCPENNReco::localPosition"
		<< "Should never be here. PixelCPENNReco should always be called "
		"with track angles. This is a bad error !!! ";

		theClusterParam.NNXrec_ = theDetParam.theTopol->localX(theClusterParam.theCluster->x()) + lorentzshiftX;
		theClusterParam.NNYrec_ = theDetParam.theTopol->localY(theClusterParam.theCluster->y()) + lorentzshiftY;
	}
} 
  else  // apparenly this is the good one!
  {
	// go from micrometer to centimeter
  	theClusterParam.NNXrec_ *= micronsToCm;
  	theClusterParam.NNYrec_ *= micronsToCm;
  	theClusterParam.NNXrec_ += lp.x();
  	theClusterParam.NNYrec_ += lp.y();
  }

  theClusterParam.probabilityX_ = 0.05;
  theClusterParam.probabilityY_ = 0.05;
  theClusterParam.probabilityQ_ = 0.05;
  //theClusterParam.qBin_ = 2;

  if (ierr == 0)  // always true here
  	theClusterParam.hasFilledProb_ = true;
  //printf("x = %f,  y = %f\n",theClusterParam.NNXrec_, theClusterParam.NNYrec_);
  return LocalPoint(theClusterParam.NNXrec_, theClusterParam.NNYrec_);
}

//------------------------------------------------------------------
//  localError() relies on localPosition() being called FIRST!!!
//------------------------------------------------------------------
LocalError PixelCPENNReco::localError(DetParam const& theDetParam, ClusterParam& theClusterParamBase) const {
	ClusterParamTemplate& theClusterParam = static_cast<ClusterParamTemplate&>(theClusterParamBase);


	float xerr, yerr;
	float ierr = 0;

  // Check if the errors were already set at the clusters splitting level
	if (theClusterParam.theCluster->getSplitClusterErrorX() > 0.0f &&
		theClusterParam.theCluster->getSplitClusterErrorX() < clusterSplitMaxError_ &&
		theClusterParam.theCluster->getSplitClusterErrorY() > 0.0f &&
		theClusterParam.theCluster->getSplitClusterErrorY() < clusterSplitMaxError_) {
		xerr = theClusterParam.theCluster->getSplitClusterErrorX() * micronsToCm;
	yerr = theClusterParam.theCluster->getSplitClusterErrorY() * micronsToCm;

	cout << "Errors set at cluster splitting level : " << endl;
	cout << "xerr = " << xerr << endl;
	cout << "yerr = " << yerr << endl;
} else {
	// If errors are not split at the cluster splitting level, set the errors here

	//cout  << "Errors are not split at the cluster splitting level, set the errors here : " << endl;

	int maxPixelCol = theClusterParam.theCluster->maxPixelCol();
	int maxPixelRow = theClusterParam.theCluster->maxPixelRow();
	int minPixelCol = theClusterParam.theCluster->minPixelCol();
	int minPixelRow = theClusterParam.theCluster->minPixelRow();

	//--- Are we near either of the edges?
	bool edgex = (theDetParam.theRecTopol->isItEdgePixelInX(minPixelRow) ||
		theDetParam.theRecTopol->isItEdgePixelInX(maxPixelRow));
	bool edgey = (theDetParam.theRecTopol->isItEdgePixelInY(minPixelCol) ||
		theDetParam.theRecTopol->isItEdgePixelInY(maxPixelCol));

	//ierr = 12345; // forcibly turn off error for now
	
	if(isnan(theClusterParam.NNSigmaX_) or theClusterParam.NNSigmaX_>=650 or isnan(theClusterParam.NNSigmaY_) or theClusterParam.NNSigmaY_>=1575){
		printf("====================== NN RECO HAS FAILED: ERROR LARGER THAN BUFFER ======================");
		printf("x = %f, x_err = %f, y = %f, y_err = %f\n",theClusterParam.NNXrec_*1e4, theClusterParam.NNSigmaX_, theClusterParam.NNYrec_*1e4, theClusterParam.NNSigmaY_);
		ierr = 12345;
	}
	if(theClusterParam.theCluster->sizeX() > 11 or theClusterParam.theCluster->sizeY() > 19){
		edm::LogError("PixelCPENNReco") << "@SUB = PixelCPENNReco::localPosition "
		<< "CLUSTER IS ABSURDLY LARGE ! Clustersize in x = " << theClusterParam.theCluster->sizeX() << " Clustersize in y = " << theClusterParam.theCluster->sizeY();
		ierr = 12345;
	}
	if (ierr != 0) {
	  // If reconstruction fails the hit position is calculated from cluster center of gravity
	  // corrected in x by average Lorentz drift. Assign huge errors.
	  //xerr = 10.0 * (float)theClusterParam.theCluster->sizeX() * xerr;
	  //yerr = 10.0 * (float)theClusterParam.theCluster->sizeX() * yerr;

		if (!GeomDetEnumerators::isTrackerPixel(theDetParam.thePart))
			throw cms::Exception("PixelCPENNReco::localPosition :") << "A non-pixel detector type in here?";

	  // Assign better errors based on the residuals for failed template cases
		if (GeomDetEnumerators::isBarrel(theDetParam.thePart)) {
			xerr = 55.0f * micronsToCm;
			yerr = 36.0f * micronsToCm;
		} else {
			xerr = 42.0f * micronsToCm;
			yerr = 39.0f * micronsToCm;
		}

	} else if (edgex || edgey) {
	  // for edge pixels assign errors according to observed residual RMS
		if (edgex && !edgey) {
			xerr = xEdgeXError_ * micronsToCm;
			yerr = xEdgeYError_ * micronsToCm;
		} else if (!edgex && edgey) {
			xerr = yEdgeXError_ * micronsToCm;
			yerr = yEdgeYError_ * micronsToCm;
		} else if (edgex && edgey) {
			xerr = bothEdgeXError_ * micronsToCm;
			yerr = bothEdgeYError_ * micronsToCm;
		} else {
			throw cms::Exception(" PixelCPENNReco::localError: Something wrong with pixel edge flag !!!");
		}

	  //cout << "xerr = " << xerr << endl;
	  //cout << "yerr = " << yerr << endl;
	} else {
	  // &&& need a class const
	  //const float micronsToCm = 1.0e-4;

		xerr = theClusterParam.NNSigmaX_ * micronsToCm;
		yerr = theClusterParam.NNSigmaY_ * micronsToCm;

		
	}

	if (theVerboseLevel > 9) {
		LogDebug("PixelCPENNReco") << " Sizex = " << theClusterParam.theCluster->sizeX()
		<< " Sizey = " << theClusterParam.theCluster->sizeY() << " Edgex = " << edgex
		<< " Edgey = " << edgey << " ErrX  = " << xerr << " ErrY  = " << yerr;
	}

  }  // else

  if (!(xerr > 0.0f))
  	throw cms::Exception("PixelCPENNReco::localError")
  << "\nERROR: Negative pixel error xerr = " << xerr << "\n\n";

  if (!(yerr > 0.0f))
  	throw cms::Exception("PixelCPENNReco::localError")
  << "\nERROR: Negative pixel error yerr = " << yerr << "\n\n";

  printf("xerr = %f,  yerr = %f\n", xerr, yerr);
  return LocalError(xerr * xerr, 0, yerr * yerr);
}

void PixelCPENNReco::fillPSetDescription(edm::ParameterSetDescription& desc) {
	
	PixelCPEGenericBase::fillPSetDescription(desc);
	desc.add<std::string>("inputTensorName_x","pixel_projection_x");
	desc.add<std::string>("anglesTensorName_x","angles");
	desc.add<std::string>("cchargeTensorName_x","cluster_charge");
	desc.add<std::string>("outputTensorName_x","Identity");
	desc.add<std::string>("inputTensorName_y","pixel_projection_y");
	desc.add<std::string>("anglesTensorName_y","angles");
	desc.add<std::string>("cchargeTensorName_y","cluster_charge");
	desc.add<std::string>("outputTensorName_y","Identity");
	desc.add<bool>("use_det_angles", false);
	desc.add<std::string>("cpe", "cnn1d");
	 // used by PixelCPEGenericBase
	desc.add<double>("EdgeClusterErrorX", 50.0);
	desc.add<double>("EdgeClusterErrorY", 85.0);
	desc.add<bool>("UseErrorsFromTemplates", true);
	desc.add<bool>("TruncatePixelCharge", true);
}
