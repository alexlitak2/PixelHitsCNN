�
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resource�
.
Identity

input"T
output"T"	
Ttype
\
	LeakyRelu
features"T
activations"T"
alphafloat%��L>"
Ttype0:
2
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
@
Softplus
features"T
activations"T"
Ttype:
2
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.13.12v2.13.0-17-gf841394b1b78��
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
�
Adam/v/dense_67/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/v/dense_67/bias
y
(Adam/v/dense_67/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_67/bias*
_output_shapes
:*
dtype0
�
Adam/m/dense_67/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/m/dense_67/bias
y
(Adam/m/dense_67/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_67/bias*
_output_shapes
:*
dtype0
�
Adam/v/dense_67/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*'
shared_nameAdam/v/dense_67/kernel
�
*Adam/v/dense_67/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_67/kernel*
_output_shapes

:@*
dtype0
�
Adam/m/dense_67/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*'
shared_nameAdam/m/dense_67/kernel
�
*Adam/m/dense_67/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_67/kernel*
_output_shapes

:@*
dtype0
�
Adam/v/dense_71/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/v/dense_71/bias
y
(Adam/v/dense_71/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_71/bias*
_output_shapes
:*
dtype0
�
Adam/m/dense_71/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/m/dense_71/bias
y
(Adam/m/dense_71/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_71/bias*
_output_shapes
:*
dtype0
�
Adam/v/dense_71/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*'
shared_nameAdam/v/dense_71/kernel
�
*Adam/v/dense_71/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_71/kernel*
_output_shapes

:@*
dtype0
�
Adam/m/dense_71/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*'
shared_nameAdam/m/dense_71/kernel
�
*Adam/m/dense_71/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_71/kernel*
_output_shapes

:@*
dtype0
�
Adam/v/dense_66/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/v/dense_66/bias
y
(Adam/v/dense_66/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_66/bias*
_output_shapes
:@*
dtype0
�
Adam/m/dense_66/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/m/dense_66/bias
y
(Adam/m/dense_66/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_66/bias*
_output_shapes
:@*
dtype0
�
Adam/v/dense_66/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*'
shared_nameAdam/v/dense_66/kernel
�
*Adam/v/dense_66/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_66/kernel*
_output_shapes

:@*
dtype0
�
Adam/m/dense_66/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*'
shared_nameAdam/m/dense_66/kernel
�
*Adam/m/dense_66/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_66/kernel*
_output_shapes

:@*
dtype0
�
Adam/v/dense_70/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/v/dense_70/bias
y
(Adam/v/dense_70/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_70/bias*
_output_shapes
:@*
dtype0
�
Adam/m/dense_70/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/m/dense_70/bias
y
(Adam/m/dense_70/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_70/bias*
_output_shapes
:@*
dtype0
�
Adam/v/dense_70/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*'
shared_nameAdam/v/dense_70/kernel
�
*Adam/v/dense_70/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_70/kernel*
_output_shapes

:@*
dtype0
�
Adam/m/dense_70/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*'
shared_nameAdam/m/dense_70/kernel
�
*Adam/m/dense_70/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_70/kernel*
_output_shapes

:@*
dtype0
�
"Adam/v/batch_normalization_16/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/v/batch_normalization_16/beta
�
6Adam/v/batch_normalization_16/beta/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_16/beta*
_output_shapes
:@*
dtype0
�
"Adam/m/batch_normalization_16/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/m/batch_normalization_16/beta
�
6Adam/m/batch_normalization_16/beta/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_16/beta*
_output_shapes
:@*
dtype0
�
#Adam/v/batch_normalization_16/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/v/batch_normalization_16/gamma
�
7Adam/v/batch_normalization_16/gamma/Read/ReadVariableOpReadVariableOp#Adam/v/batch_normalization_16/gamma*
_output_shapes
:@*
dtype0
�
#Adam/m/batch_normalization_16/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/m/batch_normalization_16/gamma
�
7Adam/m/batch_normalization_16/gamma/Read/ReadVariableOpReadVariableOp#Adam/m/batch_normalization_16/gamma*
_output_shapes
:@*
dtype0
�
"Adam/v/batch_normalization_17/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/v/batch_normalization_17/beta
�
6Adam/v/batch_normalization_17/beta/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_17/beta*
_output_shapes
:@*
dtype0
�
"Adam/m/batch_normalization_17/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/m/batch_normalization_17/beta
�
6Adam/m/batch_normalization_17/beta/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_17/beta*
_output_shapes
:@*
dtype0
�
#Adam/v/batch_normalization_17/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/v/batch_normalization_17/gamma
�
7Adam/v/batch_normalization_17/gamma/Read/ReadVariableOpReadVariableOp#Adam/v/batch_normalization_17/gamma*
_output_shapes
:@*
dtype0
�
#Adam/m/batch_normalization_17/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/m/batch_normalization_17/gamma
�
7Adam/m/batch_normalization_17/gamma/Read/ReadVariableOpReadVariableOp#Adam/m/batch_normalization_17/gamma*
_output_shapes
:@*
dtype0
�
Adam/v/dense_65/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/v/dense_65/bias
y
(Adam/v/dense_65/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_65/bias*
_output_shapes
:@*
dtype0
�
Adam/m/dense_65/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/m/dense_65/bias
y
(Adam/m/dense_65/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_65/bias*
_output_shapes
:@*
dtype0
�
Adam/v/dense_65/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*'
shared_nameAdam/v/dense_65/kernel
�
*Adam/v/dense_65/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_65/kernel*
_output_shapes
:	�@*
dtype0
�
Adam/m/dense_65/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*'
shared_nameAdam/m/dense_65/kernel
�
*Adam/m/dense_65/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_65/kernel*
_output_shapes
:	�@*
dtype0
�
Adam/v/dense_69/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/v/dense_69/bias
y
(Adam/v/dense_69/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_69/bias*
_output_shapes
:@*
dtype0
�
Adam/m/dense_69/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/m/dense_69/bias
y
(Adam/m/dense_69/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_69/bias*
_output_shapes
:@*
dtype0
�
Adam/v/dense_69/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*'
shared_nameAdam/v/dense_69/kernel
�
*Adam/v/dense_69/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_69/kernel*
_output_shapes
:	�@*
dtype0
�
Adam/m/dense_69/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*'
shared_nameAdam/m/dense_69/kernel
�
*Adam/m/dense_69/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_69/kernel*
_output_shapes
:	�@*
dtype0
�
Adam/v/dense_64/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/v/dense_64/bias
z
(Adam/v/dense_64/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_64/bias*
_output_shapes	
:�*
dtype0
�
Adam/m/dense_64/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/m/dense_64/bias
z
(Adam/m/dense_64/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_64/bias*
_output_shapes	
:�*
dtype0
�
Adam/v/dense_64/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*'
shared_nameAdam/v/dense_64/kernel
�
*Adam/v/dense_64/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_64/kernel*
_output_shapes
:	�*
dtype0
�
Adam/m/dense_64/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*'
shared_nameAdam/m/dense_64/kernel
�
*Adam/m/dense_64/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_64/kernel*
_output_shapes
:	�*
dtype0
�
Adam/v/dense_68/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/v/dense_68/bias
z
(Adam/v/dense_68/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_68/bias*
_output_shapes	
:�*
dtype0
�
Adam/m/dense_68/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/m/dense_68/bias
z
(Adam/m/dense_68/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_68/bias*
_output_shapes	
:�*
dtype0
�
Adam/v/dense_68/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*'
shared_nameAdam/v/dense_68/kernel
�
*Adam/v/dense_68/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_68/kernel*
_output_shapes
:	�*
dtype0
�
Adam/m/dense_68/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*'
shared_nameAdam/m/dense_68/kernel
�
*Adam/m/dense_68/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_68/kernel*
_output_shapes
:	�*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
r
dense_67/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_67/bias
k
!dense_67/bias/Read/ReadVariableOpReadVariableOpdense_67/bias*
_output_shapes
:*
dtype0
z
dense_67/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@* 
shared_namedense_67/kernel
s
#dense_67/kernel/Read/ReadVariableOpReadVariableOpdense_67/kernel*
_output_shapes

:@*
dtype0
r
dense_71/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_71/bias
k
!dense_71/bias/Read/ReadVariableOpReadVariableOpdense_71/bias*
_output_shapes
:*
dtype0
z
dense_71/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@* 
shared_namedense_71/kernel
s
#dense_71/kernel/Read/ReadVariableOpReadVariableOpdense_71/kernel*
_output_shapes

:@*
dtype0
r
dense_66/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_66/bias
k
!dense_66/bias/Read/ReadVariableOpReadVariableOpdense_66/bias*
_output_shapes
:@*
dtype0
z
dense_66/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@* 
shared_namedense_66/kernel
s
#dense_66/kernel/Read/ReadVariableOpReadVariableOpdense_66/kernel*
_output_shapes

:@*
dtype0
r
dense_70/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_70/bias
k
!dense_70/bias/Read/ReadVariableOpReadVariableOpdense_70/bias*
_output_shapes
:@*
dtype0
z
dense_70/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@* 
shared_namedense_70/kernel
s
#dense_70/kernel/Read/ReadVariableOpReadVariableOpdense_70/kernel*
_output_shapes

:@*
dtype0
�
&batch_normalization_16/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&batch_normalization_16/moving_variance
�
:batch_normalization_16/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_16/moving_variance*
_output_shapes
:@*
dtype0
�
"batch_normalization_16/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"batch_normalization_16/moving_mean
�
6batch_normalization_16/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_16/moving_mean*
_output_shapes
:@*
dtype0
�
batch_normalization_16/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_16/beta
�
/batch_normalization_16/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_16/beta*
_output_shapes
:@*
dtype0
�
batch_normalization_16/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_16/gamma
�
0batch_normalization_16/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_16/gamma*
_output_shapes
:@*
dtype0
�
&batch_normalization_17/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&batch_normalization_17/moving_variance
�
:batch_normalization_17/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_17/moving_variance*
_output_shapes
:@*
dtype0
�
"batch_normalization_17/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"batch_normalization_17/moving_mean
�
6batch_normalization_17/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_17/moving_mean*
_output_shapes
:@*
dtype0
�
batch_normalization_17/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_17/beta
�
/batch_normalization_17/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_17/beta*
_output_shapes
:@*
dtype0
�
batch_normalization_17/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_17/gamma
�
0batch_normalization_17/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_17/gamma*
_output_shapes
:@*
dtype0
r
dense_65/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_65/bias
k
!dense_65/bias/Read/ReadVariableOpReadVariableOpdense_65/bias*
_output_shapes
:@*
dtype0
{
dense_65/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@* 
shared_namedense_65/kernel
t
#dense_65/kernel/Read/ReadVariableOpReadVariableOpdense_65/kernel*
_output_shapes
:	�@*
dtype0
r
dense_69/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_69/bias
k
!dense_69/bias/Read/ReadVariableOpReadVariableOpdense_69/bias*
_output_shapes
:@*
dtype0
{
dense_69/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@* 
shared_namedense_69/kernel
t
#dense_69/kernel/Read/ReadVariableOpReadVariableOpdense_69/kernel*
_output_shapes
:	�@*
dtype0
s
dense_64/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_64/bias
l
!dense_64/bias/Read/ReadVariableOpReadVariableOpdense_64/bias*
_output_shapes	
:�*
dtype0
{
dense_64/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�* 
shared_namedense_64/kernel
t
#dense_64/kernel/Read/ReadVariableOpReadVariableOpdense_64/kernel*
_output_shapes
:	�*
dtype0
s
dense_68/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_68/bias
l
!dense_68/bias/Read/ReadVariableOpReadVariableOpdense_68/bias*
_output_shapes	
:�*
dtype0
{
dense_68/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�* 
shared_namedense_68/kernel
t
#dense_68/kernel/Read/ReadVariableOpReadVariableOpdense_68/kernel*
_output_shapes
:	�*
dtype0
y
serving_default_anglesPlaceholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
serving_default_cluster_chargePlaceholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
"serving_default_pixel_projection_xPlaceholder*+
_output_shapes
:���������*
dtype0* 
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_anglesserving_default_cluster_charge"serving_default_pixel_projection_xdense_68/kerneldense_68/biasdense_64/kerneldense_64/biasdense_69/kerneldense_69/biasdense_65/kerneldense_65/bias&batch_normalization_17/moving_variancebatch_normalization_17/gamma"batch_normalization_17/moving_meanbatch_normalization_17/betadense_70/kerneldense_70/bias&batch_normalization_16/moving_variancebatch_normalization_16/gamma"batch_normalization_16/moving_meanbatch_normalization_16/betadense_66/kerneldense_66/biasdense_71/kerneldense_71/biasdense_67/kerneldense_67/bias*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*:
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2*0,1J 8� *.
f)R'
%__inference_signature_wrapper_2549108

NoOpNoOp
��
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ů
value��B�� B��
�
layer-0
layer-1
layer-2
layer-3
layer-4
layer_with_weights-0
layer-5
layer_with_weights-1
layer-6
layer-7
	layer-8

layer_with_weights-2

layer-9
layer_with_weights-3
layer-10
layer-11
layer-12
layer_with_weights-4
layer-13
layer_with_weights-5
layer-14
layer-15
layer_with_weights-6
layer-16
layer-17
layer_with_weights-7
layer-18
layer-19
layer-20
layer_with_weights-8
layer-21
layer_with_weights-9
layer-22
layer-23
layer-24
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
 _default_save_signature
!	optimizer
"
signatures*
* 
�
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses* 
* 
* 
�
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses* 
�
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses

5kernel
6bias*
�
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses

=kernel
>bias*
�
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses* 
�
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses* 
�
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses

Qkernel
Rbias*
�
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses

Ykernel
Zbias*
�
[	variables
\trainable_variables
]regularization_losses
^	keras_api
___call__
*`&call_and_return_all_conditional_losses* 
�
a	variables
btrainable_variables
cregularization_losses
d	keras_api
e__call__
*f&call_and_return_all_conditional_losses* 
�
g	variables
htrainable_variables
iregularization_losses
j	keras_api
k__call__
*l&call_and_return_all_conditional_losses
maxis
	ngamma
obeta
pmoving_mean
qmoving_variance*
�
r	variables
strainable_variables
tregularization_losses
u	keras_api
v__call__
*w&call_and_return_all_conditional_losses
xaxis
	ygamma
zbeta
{moving_mean
|moving_variance*
�
}	variables
~trainable_variables
regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias*

�	keras_api* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
50
61
=2
>3
Q4
R5
Y6
Z7
n8
o9
p10
q11
y12
z13
{14
|15
�16
�17
�18
�19
�20
�21
�22
�23*
�
50
61
=2
>3
Q4
R5
Y6
Z7
n8
o9
y10
z11
�12
�13
�14
�15
�16
�17
�18
�19*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
 _default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
�
�
_variables
�_iterations
�_learning_rate
�_index_dict
�
_momentums
�_velocities
�_update_step_xla*

�serving_default* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

50
61*

50
61*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_68/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_68/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

=0
>1*

=0
>1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_64/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_64/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

Q0
R1*

Q0
R1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_69/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_69/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

Y0
Z1*

Y0
Z1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_65/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_65/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
 
n0
o1
p2
q3*

n0
o1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
g	variables
htrainable_variables
iregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_17/gamma5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_17/beta4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_17/moving_mean;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_17/moving_variance?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
 
y0
z1
{2
|3*

y0
z1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
r	variables
strainable_variables
tregularization_losses
v__call__
*w&call_and_return_all_conditional_losses
&w"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_16/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_16/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_16/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_16/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
}	variables
~trainable_variables
regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_70/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_70/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_66/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_66/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_71/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_71/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_67/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_67/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
 
p0
q1
{2
|3*
�
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24*

�0
�1
�2*
* 
* 
* 
* 
* 
* 
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19*
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19*
�
�trace_0
�trace_1
�trace_2
�trace_3
�trace_4
�trace_5
�trace_6
�trace_7
�trace_8
�trace_9
�trace_10
�trace_11
�trace_12
�trace_13
�trace_14
�trace_15
�trace_16
�trace_17
�trace_18
�trace_19* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

p0
q1*
* 
* 
* 
* 
* 
* 
* 
* 

{0
|1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
a[
VARIABLE_VALUEAdam/m/dense_68/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_68/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_68/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_68/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_64/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_64/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_64/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_64/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_69/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_69/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_69/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_69/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_65/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_65/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_65/bias2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_65/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/m/batch_normalization_17/gamma2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/v/batch_normalization_17/gamma2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_17/beta2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_17/beta2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/m/batch_normalization_16/gamma2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/v/batch_normalization_16/gamma2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_16/beta2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_16/beta2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_70/kernel2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_70/kernel2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_70/bias2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_70/bias2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_66/kernel2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_66/kernel2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_66/bias2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_66/bias2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_71/kernel2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_71/kernel2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_71/bias2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_71/bias2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_67/kernel2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_67/kernel2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_67/bias2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_67/bias2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_24keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_24keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamedense_68/kerneldense_68/biasdense_64/kerneldense_64/biasdense_69/kerneldense_69/biasdense_65/kerneldense_65/biasbatch_normalization_17/gammabatch_normalization_17/beta"batch_normalization_17/moving_mean&batch_normalization_17/moving_variancebatch_normalization_16/gammabatch_normalization_16/beta"batch_normalization_16/moving_mean&batch_normalization_16/moving_variancedense_70/kerneldense_70/biasdense_66/kerneldense_66/biasdense_71/kerneldense_71/biasdense_67/kerneldense_67/bias	iterationlearning_rateAdam/m/dense_68/kernelAdam/v/dense_68/kernelAdam/m/dense_68/biasAdam/v/dense_68/biasAdam/m/dense_64/kernelAdam/v/dense_64/kernelAdam/m/dense_64/biasAdam/v/dense_64/biasAdam/m/dense_69/kernelAdam/v/dense_69/kernelAdam/m/dense_69/biasAdam/v/dense_69/biasAdam/m/dense_65/kernelAdam/v/dense_65/kernelAdam/m/dense_65/biasAdam/v/dense_65/bias#Adam/m/batch_normalization_17/gamma#Adam/v/batch_normalization_17/gamma"Adam/m/batch_normalization_17/beta"Adam/v/batch_normalization_17/beta#Adam/m/batch_normalization_16/gamma#Adam/v/batch_normalization_16/gamma"Adam/m/batch_normalization_16/beta"Adam/v/batch_normalization_16/betaAdam/m/dense_70/kernelAdam/v/dense_70/kernelAdam/m/dense_70/biasAdam/v/dense_70/biasAdam/m/dense_66/kernelAdam/v/dense_66/kernelAdam/m/dense_66/biasAdam/v/dense_66/biasAdam/m/dense_71/kernelAdam/v/dense_71/kernelAdam/m/dense_71/biasAdam/v/dense_71/biasAdam/m/dense_67/kernelAdam/v/dense_67/kernelAdam/m/dense_67/biasAdam/v/dense_67/biastotal_2count_2total_1count_1totalcountConst*U
TinN
L2J*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *)
f$R"
 __inference__traced_save_2550134
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_68/kerneldense_68/biasdense_64/kerneldense_64/biasdense_69/kerneldense_69/biasdense_65/kerneldense_65/biasbatch_normalization_17/gammabatch_normalization_17/beta"batch_normalization_17/moving_mean&batch_normalization_17/moving_variancebatch_normalization_16/gammabatch_normalization_16/beta"batch_normalization_16/moving_mean&batch_normalization_16/moving_variancedense_70/kerneldense_70/biasdense_66/kerneldense_66/biasdense_71/kerneldense_71/biasdense_67/kerneldense_67/bias	iterationlearning_rateAdam/m/dense_68/kernelAdam/v/dense_68/kernelAdam/m/dense_68/biasAdam/v/dense_68/biasAdam/m/dense_64/kernelAdam/v/dense_64/kernelAdam/m/dense_64/biasAdam/v/dense_64/biasAdam/m/dense_69/kernelAdam/v/dense_69/kernelAdam/m/dense_69/biasAdam/v/dense_69/biasAdam/m/dense_65/kernelAdam/v/dense_65/kernelAdam/m/dense_65/biasAdam/v/dense_65/bias#Adam/m/batch_normalization_17/gamma#Adam/v/batch_normalization_17/gamma"Adam/m/batch_normalization_17/beta"Adam/v/batch_normalization_17/beta#Adam/m/batch_normalization_16/gamma#Adam/v/batch_normalization_16/gamma"Adam/m/batch_normalization_16/beta"Adam/v/batch_normalization_16/betaAdam/m/dense_70/kernelAdam/v/dense_70/kernelAdam/m/dense_70/biasAdam/v/dense_70/biasAdam/m/dense_66/kernelAdam/v/dense_66/kernelAdam/m/dense_66/biasAdam/v/dense_66/biasAdam/m/dense_71/kernelAdam/v/dense_71/kernelAdam/m/dense_71/biasAdam/v/dense_71/biasAdam/m/dense_67/kernelAdam/v/dense_67/kernelAdam/m/dense_67/biasAdam/v/dense_67/biastotal_2count_2total_1count_1totalcount*T
TinM
K2I*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *,
f'R%
#__inference__traced_restore_2550359��
�
�
*__inference_dense_66_layer_call_fn_2549592

inputs
unknown:@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *N
fIRG
E__inference_dense_66_layer_call_and_return_conditional_losses_2548652o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	2549588:'#
!
_user_specified_name	2549586:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
g
K__inference_leaky_re_lu_32_layer_call_and_return_conditional_losses_2548548

inputs
identityX
	LeakyRelu	LeakyReluinputs*(
_output_shapes
:����������*
alpha%
�#<`
IdentityIdentityLeakyRelu:activations:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
8__inference_batch_normalization_17_layer_call_fn_2549376

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *\
fWRU
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_2548366o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	2549372:'#
!
_user_specified_name	2549370:'#
!
_user_specified_name	2549368:'#
!
_user_specified_name	2549366:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
H
,__inference_dropout_16_layer_call_fn_2549566

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_dropout_16_layer_call_and_return_conditional_losses_2548774`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�	
�
8__inference_batch_normalization_16_layer_call_fn_2549443

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *\
fWRU
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_2548426o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	2549439:'#
!
_user_specified_name	2549437:'#
!
_user_specified_name	2549435:'#
!
_user_specified_name	2549433:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�	
�
E__inference_dense_65_layer_call_and_return_conditional_losses_2548565

inputs1
matmul_readvariableop_resource:	�@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������@S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

f
G__inference_dropout_16_layer_call_and_return_conditional_losses_2549578

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������@Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������@T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
e
,__inference_dropout_17_layer_call_fn_2549515

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_dropout_17_layer_call_and_return_conditional_losses_2548597o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�	
�
E__inference_dense_69_layer_call_and_return_conditional_losses_2549311

inputs1
matmul_readvariableop_resource:	�@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������@S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
E__inference_dense_65_layer_call_and_return_conditional_losses_2549330

inputs1
matmul_readvariableop_resource:	�@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������@S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
b
F__inference_flatten_8_layer_call_and_return_conditional_losses_2549219

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:���������X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
u
K__inference_concatenate_17_layer_call_and_return_conditional_losses_2548706

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :u
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*'
_output_shapes
:���������W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������:���������:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
L
$__inference__update_step_xla_2549198
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:
"
_user_specified_name
gradient
�
g
K__inference_leaky_re_lu_35_layer_call_and_return_conditional_losses_2548554

inputs
identityW
	LeakyRelu	LeakyReluinputs*'
_output_shapes
:���������@*
alpha%
�#<_
IdentityIdentityLeakyRelu:activations:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
L
$__inference__update_step_xla_2549163
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:@
"
_user_specified_name
gradient
�
L
0__inference_leaky_re_lu_35_layer_call_fn_2549335

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *T
fORM
K__inference_leaky_re_lu_35_layer_call_and_return_conditional_losses_2548554`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
e
G__inference_dropout_16_layer_call_and_return_conditional_losses_2548774

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:���������@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
L
$__inference__update_step_xla_2549158
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:@
"
_user_specified_name
gradient
�
Q
$__inference__update_step_xla_2549133
gradient
variable:	�@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime* 
_input_shapes
:	�@: *
	_noinline(:($
"
_user_specified_name
variable:I E

_output_shapes
:	�@
"
_user_specified_name
gradient
�
M
$__inference__update_step_xla_2549128
gradient
variable:	�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:�: *
	_noinline(:($
"
_user_specified_name
variable:E A

_output_shapes	
:�
"
_user_specified_name
gradient
�
�
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_2548446

inputs/
!batchnorm_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@1
#batchnorm_readvariableop_1_resource:@1
#batchnorm_readvariableop_2_resource:@
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������@z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:@z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������@b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:���������@�
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@: : : : 28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_224
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�	
�
E__inference_dense_64_layer_call_and_return_conditional_losses_2548523

inputs1
matmul_readvariableop_resource:	�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�&
�
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_2549490

inputs5
'assignmovingavg_readvariableop_resource:@7
)assignmovingavg_1_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@/
!batchnorm_readvariableop_resource:@
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:@�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:���������@l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:@*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:@x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:@�
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:@*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:@~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:@�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������@h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:@v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������@b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:���������@�
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@: : : : 2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12"
AssignMovingAvgAssignMovingAvg24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
Q
$__inference__update_step_xla_2549123
gradient
variable:	�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime* 
_input_shapes
:	�: *
	_noinline(:($
"
_user_specified_name
variable:I E

_output_shapes
:	�
"
_user_specified_name
gradient
�
�
*__inference_dense_70_layer_call_fn_2549546

inputs
unknown:@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *N
fIRG
E__inference_dense_70_layer_call_and_return_conditional_losses_2548608o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	2549542:'#
!
_user_specified_name	2549540:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�&
�
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_2548426

inputs5
'assignmovingavg_readvariableop_resource:@7
)assignmovingavg_1_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@/
!batchnorm_readvariableop_resource:@
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:@�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:���������@l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:@*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:@x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:@�
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:@*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:@~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:@�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������@h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:@v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������@b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:���������@�
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@: : : : 2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12"
AssignMovingAvgAssignMovingAvg24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�	
�
8__inference_batch_normalization_17_layer_call_fn_2549363

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *\
fWRU
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_2548346o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	2549359:'#
!
_user_specified_name	2549357:'#
!
_user_specified_name	2549355:'#
!
_user_specified_name	2549353:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
)__inference_model_8_layer_call_fn_2548853
pixel_projection_x

angles
cluster_charge
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
	unknown_3:	�@
	unknown_4:@
	unknown_5:	�@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@

unknown_11:@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@

unknown_17:@

unknown_18:@

unknown_19:@

unknown_20:

unknown_21:@

unknown_22:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallpixel_projection_xanglescluster_chargeunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*6
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2*0,1J 8� *M
fHRF
D__inference_model_8_layer_call_and_return_conditional_losses_2548709o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapeso
m:���������:���������:���������: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	2548849:'#
!
_user_specified_name	2548847:'#
!
_user_specified_name	2548845:'#
!
_user_specified_name	2548843:'#
!
_user_specified_name	2548841:'#
!
_user_specified_name	2548839:'#
!
_user_specified_name	2548837:'#
!
_user_specified_name	2548835:'#
!
_user_specified_name	2548833:'#
!
_user_specified_name	2548831:'#
!
_user_specified_name	2548829:'#
!
_user_specified_name	2548827:'#
!
_user_specified_name	2548825:'#
!
_user_specified_name	2548823:'#
!
_user_specified_name	2548821:'#
!
_user_specified_name	2548819:'
#
!
_user_specified_name	2548817:'	#
!
_user_specified_name	2548815:'#
!
_user_specified_name	2548813:'#
!
_user_specified_name	2548811:'#
!
_user_specified_name	2548809:'#
!
_user_specified_name	2548807:'#
!
_user_specified_name	2548805:'#
!
_user_specified_name	2548803:WS
'
_output_shapes
:���������
(
_user_specified_namecluster_charge:OK
'
_output_shapes
:���������
 
_user_specified_nameangles:_ [
+
_output_shapes
:���������
,
_user_specified_namepixel_projection_x
�	
�
E__inference_dense_66_layer_call_and_return_conditional_losses_2549602

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������@S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
8__inference_batch_normalization_16_layer_call_fn_2549456

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *\
fWRU
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_2548446o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	2549452:'#
!
_user_specified_name	2549450:'#
!
_user_specified_name	2549448:'#
!
_user_specified_name	2549446:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
��
�-
#__inference__traced_restore_2550359
file_prefix3
 assignvariableop_dense_68_kernel:	�/
 assignvariableop_1_dense_68_bias:	�5
"assignvariableop_2_dense_64_kernel:	�/
 assignvariableop_3_dense_64_bias:	�5
"assignvariableop_4_dense_69_kernel:	�@.
 assignvariableop_5_dense_69_bias:@5
"assignvariableop_6_dense_65_kernel:	�@.
 assignvariableop_7_dense_65_bias:@=
/assignvariableop_8_batch_normalization_17_gamma:@<
.assignvariableop_9_batch_normalization_17_beta:@D
6assignvariableop_10_batch_normalization_17_moving_mean:@H
:assignvariableop_11_batch_normalization_17_moving_variance:@>
0assignvariableop_12_batch_normalization_16_gamma:@=
/assignvariableop_13_batch_normalization_16_beta:@D
6assignvariableop_14_batch_normalization_16_moving_mean:@H
:assignvariableop_15_batch_normalization_16_moving_variance:@5
#assignvariableop_16_dense_70_kernel:@/
!assignvariableop_17_dense_70_bias:@5
#assignvariableop_18_dense_66_kernel:@/
!assignvariableop_19_dense_66_bias:@5
#assignvariableop_20_dense_71_kernel:@/
!assignvariableop_21_dense_71_bias:5
#assignvariableop_22_dense_67_kernel:@/
!assignvariableop_23_dense_67_bias:'
assignvariableop_24_iteration:	 +
!assignvariableop_25_learning_rate: =
*assignvariableop_26_adam_m_dense_68_kernel:	�=
*assignvariableop_27_adam_v_dense_68_kernel:	�7
(assignvariableop_28_adam_m_dense_68_bias:	�7
(assignvariableop_29_adam_v_dense_68_bias:	�=
*assignvariableop_30_adam_m_dense_64_kernel:	�=
*assignvariableop_31_adam_v_dense_64_kernel:	�7
(assignvariableop_32_adam_m_dense_64_bias:	�7
(assignvariableop_33_adam_v_dense_64_bias:	�=
*assignvariableop_34_adam_m_dense_69_kernel:	�@=
*assignvariableop_35_adam_v_dense_69_kernel:	�@6
(assignvariableop_36_adam_m_dense_69_bias:@6
(assignvariableop_37_adam_v_dense_69_bias:@=
*assignvariableop_38_adam_m_dense_65_kernel:	�@=
*assignvariableop_39_adam_v_dense_65_kernel:	�@6
(assignvariableop_40_adam_m_dense_65_bias:@6
(assignvariableop_41_adam_v_dense_65_bias:@E
7assignvariableop_42_adam_m_batch_normalization_17_gamma:@E
7assignvariableop_43_adam_v_batch_normalization_17_gamma:@D
6assignvariableop_44_adam_m_batch_normalization_17_beta:@D
6assignvariableop_45_adam_v_batch_normalization_17_beta:@E
7assignvariableop_46_adam_m_batch_normalization_16_gamma:@E
7assignvariableop_47_adam_v_batch_normalization_16_gamma:@D
6assignvariableop_48_adam_m_batch_normalization_16_beta:@D
6assignvariableop_49_adam_v_batch_normalization_16_beta:@<
*assignvariableop_50_adam_m_dense_70_kernel:@<
*assignvariableop_51_adam_v_dense_70_kernel:@6
(assignvariableop_52_adam_m_dense_70_bias:@6
(assignvariableop_53_adam_v_dense_70_bias:@<
*assignvariableop_54_adam_m_dense_66_kernel:@<
*assignvariableop_55_adam_v_dense_66_kernel:@6
(assignvariableop_56_adam_m_dense_66_bias:@6
(assignvariableop_57_adam_v_dense_66_bias:@<
*assignvariableop_58_adam_m_dense_71_kernel:@<
*assignvariableop_59_adam_v_dense_71_kernel:@6
(assignvariableop_60_adam_m_dense_71_bias:6
(assignvariableop_61_adam_v_dense_71_bias:<
*assignvariableop_62_adam_m_dense_67_kernel:@<
*assignvariableop_63_adam_v_dense_67_kernel:@6
(assignvariableop_64_adam_m_dense_67_bias:6
(assignvariableop_65_adam_v_dense_67_bias:%
assignvariableop_66_total_2: %
assignvariableop_67_count_2: %
assignvariableop_68_total_1: %
assignvariableop_69_count_1: #
assignvariableop_70_total: #
assignvariableop_71_count: 
identity_73��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_59�AssignVariableOp_6�AssignVariableOp_60�AssignVariableOp_61�AssignVariableOp_62�AssignVariableOp_63�AssignVariableOp_64�AssignVariableOp_65�AssignVariableOp_66�AssignVariableOp_67�AssignVariableOp_68�AssignVariableOp_69�AssignVariableOp_7�AssignVariableOp_70�AssignVariableOp_71�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:I*
dtype0*�
value�B�IB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:I*
dtype0*�
value�B�IB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*W
dtypesM
K2I	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp assignvariableop_dense_68_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_68_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_64_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_64_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_69_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_69_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_65_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_65_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp/assignvariableop_8_batch_normalization_17_gammaIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp.assignvariableop_9_batch_normalization_17_betaIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp6assignvariableop_10_batch_normalization_17_moving_meanIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp:assignvariableop_11_batch_normalization_17_moving_varianceIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp0assignvariableop_12_batch_normalization_16_gammaIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp/assignvariableop_13_batch_normalization_16_betaIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp6assignvariableop_14_batch_normalization_16_moving_meanIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp:assignvariableop_15_batch_normalization_16_moving_varianceIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp#assignvariableop_16_dense_70_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp!assignvariableop_17_dense_70_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp#assignvariableop_18_dense_66_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp!assignvariableop_19_dense_66_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp#assignvariableop_20_dense_71_kernelIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp!assignvariableop_21_dense_71_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp#assignvariableop_22_dense_67_kernelIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp!assignvariableop_23_dense_67_biasIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_24AssignVariableOpassignvariableop_24_iterationIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp!assignvariableop_25_learning_rateIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp*assignvariableop_26_adam_m_dense_68_kernelIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_v_dense_68_kernelIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_m_dense_68_biasIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp(assignvariableop_29_adam_v_dense_68_biasIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp*assignvariableop_30_adam_m_dense_64_kernelIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_v_dense_64_kernelIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_m_dense_64_biasIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp(assignvariableop_33_adam_v_dense_64_biasIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp*assignvariableop_34_adam_m_dense_69_kernelIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_v_dense_69_kernelIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_m_dense_69_biasIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp(assignvariableop_37_adam_v_dense_69_biasIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp*assignvariableop_38_adam_m_dense_65_kernelIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp*assignvariableop_39_adam_v_dense_65_kernelIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp(assignvariableop_40_adam_m_dense_65_biasIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp(assignvariableop_41_adam_v_dense_65_biasIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp7assignvariableop_42_adam_m_batch_normalization_17_gammaIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp7assignvariableop_43_adam_v_batch_normalization_17_gammaIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp6assignvariableop_44_adam_m_batch_normalization_17_betaIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp6assignvariableop_45_adam_v_batch_normalization_17_betaIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp7assignvariableop_46_adam_m_batch_normalization_16_gammaIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp7assignvariableop_47_adam_v_batch_normalization_16_gammaIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp6assignvariableop_48_adam_m_batch_normalization_16_betaIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp6assignvariableop_49_adam_v_batch_normalization_16_betaIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp*assignvariableop_50_adam_m_dense_70_kernelIdentity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOp*assignvariableop_51_adam_v_dense_70_kernelIdentity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOp(assignvariableop_52_adam_m_dense_70_biasIdentity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOp(assignvariableop_53_adam_v_dense_70_biasIdentity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOp*assignvariableop_54_adam_m_dense_66_kernelIdentity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOp*assignvariableop_55_adam_v_dense_66_kernelIdentity_55:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOp(assignvariableop_56_adam_m_dense_66_biasIdentity_56:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOp(assignvariableop_57_adam_v_dense_66_biasIdentity_57:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOp*assignvariableop_58_adam_m_dense_71_kernelIdentity_58:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_59AssignVariableOp*assignvariableop_59_adam_v_dense_71_kernelIdentity_59:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_60AssignVariableOp(assignvariableop_60_adam_m_dense_71_biasIdentity_60:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_61AssignVariableOp(assignvariableop_61_adam_v_dense_71_biasIdentity_61:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_62AssignVariableOp*assignvariableop_62_adam_m_dense_67_kernelIdentity_62:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_63AssignVariableOp*assignvariableop_63_adam_v_dense_67_kernelIdentity_63:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_64AssignVariableOp(assignvariableop_64_adam_m_dense_67_biasIdentity_64:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_65AssignVariableOp(assignvariableop_65_adam_v_dense_67_biasIdentity_65:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_66AssignVariableOpassignvariableop_66_total_2Identity_66:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_67AssignVariableOpassignvariableop_67_count_2Identity_67:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_68AssignVariableOpassignvariableop_68_total_1Identity_68:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_69AssignVariableOpassignvariableop_69_count_1Identity_69:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_70AssignVariableOpassignvariableop_70_totalIdentity_70:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_71AssignVariableOpassignvariableop_71_countIdentity_71:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_72Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_73IdentityIdentity_72:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_73Identity_73:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:%H!

_user_specified_namecount:%G!

_user_specified_nametotal:'F#
!
_user_specified_name	count_1:'E#
!
_user_specified_name	total_1:'D#
!
_user_specified_name	count_2:'C#
!
_user_specified_name	total_2:4B0
.
_user_specified_nameAdam/v/dense_67/bias:4A0
.
_user_specified_nameAdam/m/dense_67/bias:6@2
0
_user_specified_nameAdam/v/dense_67/kernel:6?2
0
_user_specified_nameAdam/m/dense_67/kernel:4>0
.
_user_specified_nameAdam/v/dense_71/bias:4=0
.
_user_specified_nameAdam/m/dense_71/bias:6<2
0
_user_specified_nameAdam/v/dense_71/kernel:6;2
0
_user_specified_nameAdam/m/dense_71/kernel:4:0
.
_user_specified_nameAdam/v/dense_66/bias:490
.
_user_specified_nameAdam/m/dense_66/bias:682
0
_user_specified_nameAdam/v/dense_66/kernel:672
0
_user_specified_nameAdam/m/dense_66/kernel:460
.
_user_specified_nameAdam/v/dense_70/bias:450
.
_user_specified_nameAdam/m/dense_70/bias:642
0
_user_specified_nameAdam/v/dense_70/kernel:632
0
_user_specified_nameAdam/m/dense_70/kernel:B2>
<
_user_specified_name$"Adam/v/batch_normalization_16/beta:B1>
<
_user_specified_name$"Adam/m/batch_normalization_16/beta:C0?
=
_user_specified_name%#Adam/v/batch_normalization_16/gamma:C/?
=
_user_specified_name%#Adam/m/batch_normalization_16/gamma:B.>
<
_user_specified_name$"Adam/v/batch_normalization_17/beta:B->
<
_user_specified_name$"Adam/m/batch_normalization_17/beta:C,?
=
_user_specified_name%#Adam/v/batch_normalization_17/gamma:C+?
=
_user_specified_name%#Adam/m/batch_normalization_17/gamma:4*0
.
_user_specified_nameAdam/v/dense_65/bias:4)0
.
_user_specified_nameAdam/m/dense_65/bias:6(2
0
_user_specified_nameAdam/v/dense_65/kernel:6'2
0
_user_specified_nameAdam/m/dense_65/kernel:4&0
.
_user_specified_nameAdam/v/dense_69/bias:4%0
.
_user_specified_nameAdam/m/dense_69/bias:6$2
0
_user_specified_nameAdam/v/dense_69/kernel:6#2
0
_user_specified_nameAdam/m/dense_69/kernel:4"0
.
_user_specified_nameAdam/v/dense_64/bias:4!0
.
_user_specified_nameAdam/m/dense_64/bias:6 2
0
_user_specified_nameAdam/v/dense_64/kernel:62
0
_user_specified_nameAdam/m/dense_64/kernel:40
.
_user_specified_nameAdam/v/dense_68/bias:40
.
_user_specified_nameAdam/m/dense_68/bias:62
0
_user_specified_nameAdam/v/dense_68/kernel:62
0
_user_specified_nameAdam/m/dense_68/kernel:-)
'
_user_specified_namelearning_rate:)%
#
_user_specified_name	iteration:-)
'
_user_specified_namedense_67/bias:/+
)
_user_specified_namedense_67/kernel:-)
'
_user_specified_namedense_71/bias:/+
)
_user_specified_namedense_71/kernel:-)
'
_user_specified_namedense_66/bias:/+
)
_user_specified_namedense_66/kernel:-)
'
_user_specified_namedense_70/bias:/+
)
_user_specified_namedense_70/kernel:FB
@
_user_specified_name(&batch_normalization_16/moving_variance:B>
<
_user_specified_name$"batch_normalization_16/moving_mean:;7
5
_user_specified_namebatch_normalization_16/beta:<8
6
_user_specified_namebatch_normalization_16/gamma:FB
@
_user_specified_name(&batch_normalization_17/moving_variance:B>
<
_user_specified_name$"batch_normalization_17/moving_mean:;
7
5
_user_specified_namebatch_normalization_17/beta:<	8
6
_user_specified_namebatch_normalization_17/gamma:-)
'
_user_specified_namedense_65/bias:/+
)
_user_specified_namedense_65/kernel:-)
'
_user_specified_namedense_69/bias:/+
)
_user_specified_namedense_69/kernel:-)
'
_user_specified_namedense_64/bias:/+
)
_user_specified_namedense_64/kernel:-)
'
_user_specified_namedense_68/bias:/+
)
_user_specified_namedense_68/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
e
G__inference_dropout_17_layer_call_and_return_conditional_losses_2549537

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:���������@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
g
K__inference_leaky_re_lu_33_layer_call_and_return_conditional_losses_2548584

inputs
identityW
	LeakyRelu	LeakyReluinputs*'
_output_shapes
:���������@*
alpha%
�#<_
IdentityIdentityLeakyRelu:activations:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
e
G__inference_dropout_17_layer_call_and_return_conditional_losses_2548753

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:���������@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
\
0__inference_concatenate_17_layer_call_fn_2549671
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *T
fORM
K__inference_concatenate_17_layer_call_and_return_conditional_losses_2548706`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������:���������:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs_1:Q M
'
_output_shapes
:���������
"
_user_specified_name
inputs_0
�
L
$__inference__update_step_xla_2549168
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:@
"
_user_specified_name
gradient
�
�
*__inference_dense_65_layer_call_fn_2549320

inputs
unknown:	�@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *N
fIRG
E__inference_dense_65_layer_call_and_return_conditional_losses_2548565o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	2549316:'#
!
_user_specified_name	2549314:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
L
0__inference_leaky_re_lu_32_layer_call_fn_2549287

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *T
fORM
K__inference_leaky_re_lu_32_layer_call_and_return_conditional_losses_2548548a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
m
C__inference_add_17_layer_call_and_return_conditional_losses_2548628

inputs
inputs_1
identityP
addAddV2inputsinputs_1*
T0*'
_output_shapes
:���������@O
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������@:���������@:OK
'
_output_shapes
:���������@
 
_user_specified_nameinputs:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_2548366

inputs/
!batchnorm_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@1
#batchnorm_readvariableop_1_resource:@1
#batchnorm_readvariableop_2_resource:@
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������@z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:@z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������@b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:���������@�
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@: : : : 28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_224
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
o
C__inference_add_17_layer_call_and_return_conditional_losses_2549614
inputs_0
inputs_1
identityR
addAddV2inputs_0inputs_1*
T0*'
_output_shapes
:���������@O
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������@:���������@:QM
'
_output_shapes
:���������@
"
_user_specified_name
inputs_1:Q M
'
_output_shapes
:���������@
"
_user_specified_name
inputs_0
�
�
*__inference_dense_68_layer_call_fn_2549243

inputs
unknown:	�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *N
fIRG
E__inference_dense_68_layer_call_and_return_conditional_losses_2548502p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	2549239:'#
!
_user_specified_name	2549237:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
E__inference_dense_67_layer_call_and_return_conditional_losses_2549665

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
P
$__inference__update_step_xla_2549183
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
:@: *
	_noinline(:($
"
_user_specified_name
variable:H D

_output_shapes

:@
"
_user_specified_name
gradient
�
L
0__inference_leaky_re_lu_33_layer_call_fn_2549345

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *T
fORM
K__inference_leaky_re_lu_33_layer_call_and_return_conditional_losses_2548584`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
g
K__inference_leaky_re_lu_32_layer_call_and_return_conditional_losses_2549292

inputs
identityX
	LeakyRelu	LeakyReluinputs*(
_output_shapes
:����������*
alpha%
�#<`
IdentityIdentityLeakyRelu:activations:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
L
$__inference__update_step_xla_2549178
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:@
"
_user_specified_name
gradient
�	
�
E__inference_dense_67_layer_call_and_return_conditional_losses_2548690

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
m
C__inference_add_16_layer_call_and_return_conditional_losses_2548679

inputs
inputs_1
identityP
addAddV2inputsinputs_1*
T0*'
_output_shapes
:���������@O
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������@:���������@:OK
'
_output_shapes
:���������@
 
_user_specified_nameinputs:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
T
(__inference_add_16_layer_call_fn_2549620
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *L
fGRE
C__inference_add_16_layer_call_and_return_conditional_losses_2548679`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������@:���������@:QM
'
_output_shapes
:���������@
"
_user_specified_name
inputs_1:Q M
'
_output_shapes
:���������@
"
_user_specified_name
inputs_0
�
Q
$__inference__update_step_xla_2549113
gradient
variable:	�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime* 
_input_shapes
:	�: *
	_noinline(:($
"
_user_specified_name
variable:I E

_output_shapes
:	�
"
_user_specified_name
gradient
�
g
K__inference_leaky_re_lu_35_layer_call_and_return_conditional_losses_2549340

inputs
identityW
	LeakyRelu	LeakyReluinputs*'
_output_shapes
:���������@*
alpha%
�#<_
IdentityIdentityLeakyRelu:activations:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�

�
E__inference_dense_71_layer_call_and_return_conditional_losses_2549646

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������X
SoftplusSoftplusBiasAdd:output:0*
T0*'
_output_shapes
:���������e
IdentityIdentitySoftplus:activations:0^NoOp*
T0*'
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
)__inference_model_8_layer_call_fn_2548908
pixel_projection_x

angles
cluster_charge
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
	unknown_3:	�@
	unknown_4:@
	unknown_5:	�@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@

unknown_11:@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@

unknown_17:@

unknown_18:@

unknown_19:@

unknown_20:

unknown_21:@

unknown_22:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallpixel_projection_xanglescluster_chargeunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*:
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2*0,1J 8� *M
fHRF
D__inference_model_8_layer_call_and_return_conditional_losses_2548798o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapeso
m:���������:���������:���������: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	2548904:'#
!
_user_specified_name	2548902:'#
!
_user_specified_name	2548900:'#
!
_user_specified_name	2548898:'#
!
_user_specified_name	2548896:'#
!
_user_specified_name	2548894:'#
!
_user_specified_name	2548892:'#
!
_user_specified_name	2548890:'#
!
_user_specified_name	2548888:'#
!
_user_specified_name	2548886:'#
!
_user_specified_name	2548884:'#
!
_user_specified_name	2548882:'#
!
_user_specified_name	2548880:'#
!
_user_specified_name	2548878:'#
!
_user_specified_name	2548876:'#
!
_user_specified_name	2548874:'
#
!
_user_specified_name	2548872:'	#
!
_user_specified_name	2548870:'#
!
_user_specified_name	2548868:'#
!
_user_specified_name	2548866:'#
!
_user_specified_name	2548864:'#
!
_user_specified_name	2548862:'#
!
_user_specified_name	2548860:'#
!
_user_specified_name	2548858:WS
'
_output_shapes
:���������
(
_user_specified_namecluster_charge:OK
'
_output_shapes
:���������
 
_user_specified_nameangles:_ [
+
_output_shapes
:���������
,
_user_specified_namepixel_projection_x
�
P
$__inference__update_step_xla_2549173
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
:@: *
	_noinline(:($
"
_user_specified_name
variable:H D

_output_shapes

:@
"
_user_specified_name
gradient
�
j
0__inference_concatenate_16_layer_call_fn_2549226
inputs_0
inputs_1
inputs_2
identity�
PartitionedCallPartitionedCallinputs_0inputs_1inputs_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *T
fORM
K__inference_concatenate_16_layer_call_and_return_conditional_losses_2548491`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:���������:���������:���������:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs_2:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs_1:Q M
'
_output_shapes
:���������
"
_user_specified_name
inputs_0
�
e
,__inference_dropout_16_layer_call_fn_2549561

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_dropout_16_layer_call_and_return_conditional_losses_2548641o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
L
$__inference__update_step_xla_2549138
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:@
"
_user_specified_name
gradient
�
L
$__inference__update_step_xla_2549208
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:
"
_user_specified_name
gradient
�
H
,__inference_dropout_17_layer_call_fn_2549520

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_dropout_17_layer_call_and_return_conditional_losses_2548753`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
L
$__inference__update_step_xla_2549148
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:@
"
_user_specified_name
gradient
��
�
"__inference__wrapped_model_2548312
pixel_projection_x

angles
cluster_chargeB
/model_8_dense_68_matmul_readvariableop_resource:	�?
0model_8_dense_68_biasadd_readvariableop_resource:	�B
/model_8_dense_64_matmul_readvariableop_resource:	�?
0model_8_dense_64_biasadd_readvariableop_resource:	�B
/model_8_dense_69_matmul_readvariableop_resource:	�@>
0model_8_dense_69_biasadd_readvariableop_resource:@B
/model_8_dense_65_matmul_readvariableop_resource:	�@>
0model_8_dense_65_biasadd_readvariableop_resource:@N
@model_8_batch_normalization_17_batchnorm_readvariableop_resource:@R
Dmodel_8_batch_normalization_17_batchnorm_mul_readvariableop_resource:@P
Bmodel_8_batch_normalization_17_batchnorm_readvariableop_1_resource:@P
Bmodel_8_batch_normalization_17_batchnorm_readvariableop_2_resource:@A
/model_8_dense_70_matmul_readvariableop_resource:@>
0model_8_dense_70_biasadd_readvariableop_resource:@N
@model_8_batch_normalization_16_batchnorm_readvariableop_resource:@R
Dmodel_8_batch_normalization_16_batchnorm_mul_readvariableop_resource:@P
Bmodel_8_batch_normalization_16_batchnorm_readvariableop_1_resource:@P
Bmodel_8_batch_normalization_16_batchnorm_readvariableop_2_resource:@A
/model_8_dense_66_matmul_readvariableop_resource:@>
0model_8_dense_66_biasadd_readvariableop_resource:@A
/model_8_dense_71_matmul_readvariableop_resource:@>
0model_8_dense_71_biasadd_readvariableop_resource:A
/model_8_dense_67_matmul_readvariableop_resource:@>
0model_8_dense_67_biasadd_readvariableop_resource:
identity��7model_8/batch_normalization_16/batchnorm/ReadVariableOp�9model_8/batch_normalization_16/batchnorm/ReadVariableOp_1�9model_8/batch_normalization_16/batchnorm/ReadVariableOp_2�;model_8/batch_normalization_16/batchnorm/mul/ReadVariableOp�7model_8/batch_normalization_17/batchnorm/ReadVariableOp�9model_8/batch_normalization_17/batchnorm/ReadVariableOp_1�9model_8/batch_normalization_17/batchnorm/ReadVariableOp_2�;model_8/batch_normalization_17/batchnorm/mul/ReadVariableOp�'model_8/dense_64/BiasAdd/ReadVariableOp�&model_8/dense_64/MatMul/ReadVariableOp�'model_8/dense_65/BiasAdd/ReadVariableOp�&model_8/dense_65/MatMul/ReadVariableOp�'model_8/dense_66/BiasAdd/ReadVariableOp�&model_8/dense_66/MatMul/ReadVariableOp�'model_8/dense_67/BiasAdd/ReadVariableOp�&model_8/dense_67/MatMul/ReadVariableOp�'model_8/dense_68/BiasAdd/ReadVariableOp�&model_8/dense_68/MatMul/ReadVariableOp�'model_8/dense_69/BiasAdd/ReadVariableOp�&model_8/dense_69/MatMul/ReadVariableOp�'model_8/dense_70/BiasAdd/ReadVariableOp�&model_8/dense_70/MatMul/ReadVariableOp�'model_8/dense_71/BiasAdd/ReadVariableOp�&model_8/dense_71/MatMul/ReadVariableOph
model_8/flatten_8/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
model_8/flatten_8/ReshapeReshapepixel_projection_x model_8/flatten_8/Const:output:0*
T0*'
_output_shapes
:���������d
"model_8/concatenate_16/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
model_8/concatenate_16/concatConcatV2"model_8/flatten_8/Reshape:output:0anglescluster_charge+model_8/concatenate_16/concat/axis:output:0*
N*
T0*'
_output_shapes
:����������
&model_8/dense_68/MatMul/ReadVariableOpReadVariableOp/model_8_dense_68_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
model_8/dense_68/MatMulMatMul&model_8/concatenate_16/concat:output:0.model_8/dense_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'model_8/dense_68/BiasAdd/ReadVariableOpReadVariableOp0model_8_dense_68_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model_8/dense_68/BiasAddBiasAdd!model_8/dense_68/MatMul:product:0/model_8/dense_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 model_8/leaky_re_lu_34/LeakyRelu	LeakyRelu!model_8/dense_68/BiasAdd:output:0*(
_output_shapes
:����������*
alpha%
�#<�
&model_8/dense_64/MatMul/ReadVariableOpReadVariableOp/model_8_dense_64_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
model_8/dense_64/MatMulMatMul&model_8/concatenate_16/concat:output:0.model_8/dense_64/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'model_8/dense_64/BiasAdd/ReadVariableOpReadVariableOp0model_8_dense_64_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model_8/dense_64/BiasAddBiasAdd!model_8/dense_64/MatMul:product:0/model_8/dense_64/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
&model_8/dense_69/MatMul/ReadVariableOpReadVariableOp/model_8_dense_69_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
model_8/dense_69/MatMulMatMul.model_8/leaky_re_lu_34/LeakyRelu:activations:0.model_8/dense_69/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
'model_8/dense_69/BiasAdd/ReadVariableOpReadVariableOp0model_8_dense_69_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model_8/dense_69/BiasAddBiasAdd!model_8/dense_69/MatMul:product:0/model_8/dense_69/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
 model_8/leaky_re_lu_32/LeakyRelu	LeakyRelu!model_8/dense_64/BiasAdd:output:0*(
_output_shapes
:����������*
alpha%
�#<�
 model_8/leaky_re_lu_35/LeakyRelu	LeakyRelu!model_8/dense_69/BiasAdd:output:0*'
_output_shapes
:���������@*
alpha%
�#<�
&model_8/dense_65/MatMul/ReadVariableOpReadVariableOp/model_8_dense_65_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
model_8/dense_65/MatMulMatMul.model_8/leaky_re_lu_32/LeakyRelu:activations:0.model_8/dense_65/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
'model_8/dense_65/BiasAdd/ReadVariableOpReadVariableOp0model_8_dense_65_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model_8/dense_65/BiasAddBiasAdd!model_8/dense_65/MatMul:product:0/model_8/dense_65/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
7model_8/batch_normalization_17/batchnorm/ReadVariableOpReadVariableOp@model_8_batch_normalization_17_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0s
.model_8/batch_normalization_17/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
,model_8/batch_normalization_17/batchnorm/addAddV2?model_8/batch_normalization_17/batchnorm/ReadVariableOp:value:07model_8/batch_normalization_17/batchnorm/add/y:output:0*
T0*
_output_shapes
:@�
.model_8/batch_normalization_17/batchnorm/RsqrtRsqrt0model_8/batch_normalization_17/batchnorm/add:z:0*
T0*
_output_shapes
:@�
;model_8/batch_normalization_17/batchnorm/mul/ReadVariableOpReadVariableOpDmodel_8_batch_normalization_17_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0�
,model_8/batch_normalization_17/batchnorm/mulMul2model_8/batch_normalization_17/batchnorm/Rsqrt:y:0Cmodel_8/batch_normalization_17/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@�
.model_8/batch_normalization_17/batchnorm/mul_1Mul.model_8/leaky_re_lu_35/LeakyRelu:activations:00model_8/batch_normalization_17/batchnorm/mul:z:0*
T0*'
_output_shapes
:���������@�
9model_8/batch_normalization_17/batchnorm/ReadVariableOp_1ReadVariableOpBmodel_8_batch_normalization_17_batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
.model_8/batch_normalization_17/batchnorm/mul_2MulAmodel_8/batch_normalization_17/batchnorm/ReadVariableOp_1:value:00model_8/batch_normalization_17/batchnorm/mul:z:0*
T0*
_output_shapes
:@�
9model_8/batch_normalization_17/batchnorm/ReadVariableOp_2ReadVariableOpBmodel_8_batch_normalization_17_batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype0�
,model_8/batch_normalization_17/batchnorm/subSubAmodel_8/batch_normalization_17/batchnorm/ReadVariableOp_2:value:02model_8/batch_normalization_17/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@�
.model_8/batch_normalization_17/batchnorm/add_1AddV22model_8/batch_normalization_17/batchnorm/mul_1:z:00model_8/batch_normalization_17/batchnorm/sub:z:0*
T0*'
_output_shapes
:���������@�
 model_8/leaky_re_lu_33/LeakyRelu	LeakyRelu!model_8/dense_65/BiasAdd:output:0*'
_output_shapes
:���������@*
alpha%
�#<�
model_8/dropout_17/IdentityIdentity2model_8/batch_normalization_17/batchnorm/add_1:z:0*
T0*'
_output_shapes
:���������@�
&model_8/dense_70/MatMul/ReadVariableOpReadVariableOp/model_8_dense_70_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
model_8/dense_70/MatMulMatMul&model_8/concatenate_16/concat:output:0.model_8/dense_70/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
'model_8/dense_70/BiasAdd/ReadVariableOpReadVariableOp0model_8_dense_70_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model_8/dense_70/BiasAddBiasAdd!model_8/dense_70/MatMul:product:0/model_8/dense_70/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
7model_8/batch_normalization_16/batchnorm/ReadVariableOpReadVariableOp@model_8_batch_normalization_16_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0s
.model_8/batch_normalization_16/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
,model_8/batch_normalization_16/batchnorm/addAddV2?model_8/batch_normalization_16/batchnorm/ReadVariableOp:value:07model_8/batch_normalization_16/batchnorm/add/y:output:0*
T0*
_output_shapes
:@�
.model_8/batch_normalization_16/batchnorm/RsqrtRsqrt0model_8/batch_normalization_16/batchnorm/add:z:0*
T0*
_output_shapes
:@�
;model_8/batch_normalization_16/batchnorm/mul/ReadVariableOpReadVariableOpDmodel_8_batch_normalization_16_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0�
,model_8/batch_normalization_16/batchnorm/mulMul2model_8/batch_normalization_16/batchnorm/Rsqrt:y:0Cmodel_8/batch_normalization_16/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@�
.model_8/batch_normalization_16/batchnorm/mul_1Mul.model_8/leaky_re_lu_33/LeakyRelu:activations:00model_8/batch_normalization_16/batchnorm/mul:z:0*
T0*'
_output_shapes
:���������@�
9model_8/batch_normalization_16/batchnorm/ReadVariableOp_1ReadVariableOpBmodel_8_batch_normalization_16_batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
.model_8/batch_normalization_16/batchnorm/mul_2MulAmodel_8/batch_normalization_16/batchnorm/ReadVariableOp_1:value:00model_8/batch_normalization_16/batchnorm/mul:z:0*
T0*
_output_shapes
:@�
9model_8/batch_normalization_16/batchnorm/ReadVariableOp_2ReadVariableOpBmodel_8_batch_normalization_16_batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype0�
,model_8/batch_normalization_16/batchnorm/subSubAmodel_8/batch_normalization_16/batchnorm/ReadVariableOp_2:value:02model_8/batch_normalization_16/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@�
.model_8/batch_normalization_16/batchnorm/add_1AddV22model_8/batch_normalization_16/batchnorm/mul_1:z:00model_8/batch_normalization_16/batchnorm/sub:z:0*
T0*'
_output_shapes
:���������@�
model_8/add_17/addAddV2$model_8/dropout_17/Identity:output:0!model_8/dense_70/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
model_8/dropout_16/IdentityIdentity2model_8/batch_normalization_16/batchnorm/add_1:z:0*
T0*'
_output_shapes
:���������@�
&model_8/dense_66/MatMul/ReadVariableOpReadVariableOp/model_8_dense_66_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
model_8/dense_66/MatMulMatMul&model_8/concatenate_16/concat:output:0.model_8/dense_66/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
'model_8/dense_66/BiasAdd/ReadVariableOpReadVariableOp0model_8_dense_66_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model_8/dense_66/BiasAddBiasAdd!model_8/dense_66/MatMul:product:0/model_8/dense_66/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
&model_8/dense_71/MatMul/ReadVariableOpReadVariableOp/model_8_dense_71_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
model_8/dense_71/MatMulMatMulmodel_8/add_17/add:z:0.model_8/dense_71/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
'model_8/dense_71/BiasAdd/ReadVariableOpReadVariableOp0model_8_dense_71_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_8/dense_71/BiasAddBiasAdd!model_8/dense_71/MatMul:product:0/model_8/dense_71/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������z
model_8/dense_71/SoftplusSoftplus!model_8/dense_71/BiasAdd:output:0*
T0*'
_output_shapes
:����������
model_8/add_16/addAddV2$model_8/dropout_16/Identity:output:0!model_8/dense_66/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
&model_8/dense_67/MatMul/ReadVariableOpReadVariableOp/model_8_dense_67_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
model_8/dense_67/MatMulMatMulmodel_8/add_16/add:z:0.model_8/dense_67/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
'model_8/dense_67/BiasAdd/ReadVariableOpReadVariableOp0model_8_dense_67_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_8/dense_67/BiasAddBiasAdd!model_8/dense_67/MatMul:product:0/model_8/dense_67/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������w
2model_8/tf.clip_by_value_8/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �B�
0model_8/tf.clip_by_value_8/clip_by_value/MinimumMinimum'model_8/dense_71/Softplus:activations:0;model_8/tf.clip_by_value_8/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:���������o
*model_8/tf.clip_by_value_8/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@�
(model_8/tf.clip_by_value_8/clip_by_valueMaximum4model_8/tf.clip_by_value_8/clip_by_value/Minimum:z:03model_8/tf.clip_by_value_8/clip_by_value/y:output:0*
T0*'
_output_shapes
:���������d
"model_8/concatenate_17/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
model_8/concatenate_17/concatConcatV2!model_8/dense_67/BiasAdd:output:0,model_8/tf.clip_by_value_8/clip_by_value:z:0+model_8/concatenate_17/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������u
IdentityIdentity&model_8/concatenate_17/concat:output:0^NoOp*
T0*'
_output_shapes
:����������	
NoOpNoOp8^model_8/batch_normalization_16/batchnorm/ReadVariableOp:^model_8/batch_normalization_16/batchnorm/ReadVariableOp_1:^model_8/batch_normalization_16/batchnorm/ReadVariableOp_2<^model_8/batch_normalization_16/batchnorm/mul/ReadVariableOp8^model_8/batch_normalization_17/batchnorm/ReadVariableOp:^model_8/batch_normalization_17/batchnorm/ReadVariableOp_1:^model_8/batch_normalization_17/batchnorm/ReadVariableOp_2<^model_8/batch_normalization_17/batchnorm/mul/ReadVariableOp(^model_8/dense_64/BiasAdd/ReadVariableOp'^model_8/dense_64/MatMul/ReadVariableOp(^model_8/dense_65/BiasAdd/ReadVariableOp'^model_8/dense_65/MatMul/ReadVariableOp(^model_8/dense_66/BiasAdd/ReadVariableOp'^model_8/dense_66/MatMul/ReadVariableOp(^model_8/dense_67/BiasAdd/ReadVariableOp'^model_8/dense_67/MatMul/ReadVariableOp(^model_8/dense_68/BiasAdd/ReadVariableOp'^model_8/dense_68/MatMul/ReadVariableOp(^model_8/dense_69/BiasAdd/ReadVariableOp'^model_8/dense_69/MatMul/ReadVariableOp(^model_8/dense_70/BiasAdd/ReadVariableOp'^model_8/dense_70/MatMul/ReadVariableOp(^model_8/dense_71/BiasAdd/ReadVariableOp'^model_8/dense_71/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapeso
m:���������:���������:���������: : : : : : : : : : : : : : : : : : : : : : : : 2v
9model_8/batch_normalization_16/batchnorm/ReadVariableOp_19model_8/batch_normalization_16/batchnorm/ReadVariableOp_12v
9model_8/batch_normalization_16/batchnorm/ReadVariableOp_29model_8/batch_normalization_16/batchnorm/ReadVariableOp_22r
7model_8/batch_normalization_16/batchnorm/ReadVariableOp7model_8/batch_normalization_16/batchnorm/ReadVariableOp2z
;model_8/batch_normalization_16/batchnorm/mul/ReadVariableOp;model_8/batch_normalization_16/batchnorm/mul/ReadVariableOp2v
9model_8/batch_normalization_17/batchnorm/ReadVariableOp_19model_8/batch_normalization_17/batchnorm/ReadVariableOp_12v
9model_8/batch_normalization_17/batchnorm/ReadVariableOp_29model_8/batch_normalization_17/batchnorm/ReadVariableOp_22r
7model_8/batch_normalization_17/batchnorm/ReadVariableOp7model_8/batch_normalization_17/batchnorm/ReadVariableOp2z
;model_8/batch_normalization_17/batchnorm/mul/ReadVariableOp;model_8/batch_normalization_17/batchnorm/mul/ReadVariableOp2R
'model_8/dense_64/BiasAdd/ReadVariableOp'model_8/dense_64/BiasAdd/ReadVariableOp2P
&model_8/dense_64/MatMul/ReadVariableOp&model_8/dense_64/MatMul/ReadVariableOp2R
'model_8/dense_65/BiasAdd/ReadVariableOp'model_8/dense_65/BiasAdd/ReadVariableOp2P
&model_8/dense_65/MatMul/ReadVariableOp&model_8/dense_65/MatMul/ReadVariableOp2R
'model_8/dense_66/BiasAdd/ReadVariableOp'model_8/dense_66/BiasAdd/ReadVariableOp2P
&model_8/dense_66/MatMul/ReadVariableOp&model_8/dense_66/MatMul/ReadVariableOp2R
'model_8/dense_67/BiasAdd/ReadVariableOp'model_8/dense_67/BiasAdd/ReadVariableOp2P
&model_8/dense_67/MatMul/ReadVariableOp&model_8/dense_67/MatMul/ReadVariableOp2R
'model_8/dense_68/BiasAdd/ReadVariableOp'model_8/dense_68/BiasAdd/ReadVariableOp2P
&model_8/dense_68/MatMul/ReadVariableOp&model_8/dense_68/MatMul/ReadVariableOp2R
'model_8/dense_69/BiasAdd/ReadVariableOp'model_8/dense_69/BiasAdd/ReadVariableOp2P
&model_8/dense_69/MatMul/ReadVariableOp&model_8/dense_69/MatMul/ReadVariableOp2R
'model_8/dense_70/BiasAdd/ReadVariableOp'model_8/dense_70/BiasAdd/ReadVariableOp2P
&model_8/dense_70/MatMul/ReadVariableOp&model_8/dense_70/MatMul/ReadVariableOp2R
'model_8/dense_71/BiasAdd/ReadVariableOp'model_8/dense_71/BiasAdd/ReadVariableOp2P
&model_8/dense_71/MatMul/ReadVariableOp&model_8/dense_71/MatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:WS
'
_output_shapes
:���������
(
_user_specified_namecluster_charge:OK
'
_output_shapes
:���������
 
_user_specified_nameangles:_ [
+
_output_shapes
:���������
,
_user_specified_namepixel_projection_x
�
L
$__inference__update_step_xla_2549188
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:@
"
_user_specified_name
gradient
�
b
F__inference_flatten_8_layer_call_and_return_conditional_losses_2548482

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:���������X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
M
$__inference__update_step_xla_2549118
gradient
variable:	�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:�: *
	_noinline(:($
"
_user_specified_name
variable:E A

_output_shapes	
:�
"
_user_specified_name
gradient
�	
�
E__inference_dense_68_layer_call_and_return_conditional_losses_2548502

inputs1
matmul_readvariableop_resource:	�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
*__inference_dense_64_layer_call_fn_2549262

inputs
unknown:	�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *N
fIRG
E__inference_dense_64_layer_call_and_return_conditional_losses_2548523p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	2549258:'#
!
_user_specified_name	2549256:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
g
K__inference_leaky_re_lu_33_layer_call_and_return_conditional_losses_2549350

inputs
identityW
	LeakyRelu	LeakyReluinputs*'
_output_shapes
:���������@*
alpha%
�#<_
IdentityIdentityLeakyRelu:activations:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
w
K__inference_concatenate_17_layer_call_and_return_conditional_losses_2549678
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :w
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*'
_output_shapes
:���������W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������:���������:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs_1:Q M
'
_output_shapes
:���������
"
_user_specified_name
inputs_0
�
Q
$__inference__update_step_xla_2549143
gradient
variable:	�@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime* 
_input_shapes
:	�@: *
	_noinline(:($
"
_user_specified_name
variable:I E

_output_shapes
:	�@
"
_user_specified_name
gradient
�	
�
E__inference_dense_69_layer_call_and_return_conditional_losses_2548538

inputs1
matmul_readvariableop_resource:	�@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������@S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

f
G__inference_dropout_17_layer_call_and_return_conditional_losses_2549532

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������@Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������@T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_2549430

inputs/
!batchnorm_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@1
#batchnorm_readvariableop_1_resource:@1
#batchnorm_readvariableop_2_resource:@
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������@z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:@z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������@b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:���������@�
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@: : : : 28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_224
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
e
G__inference_dropout_16_layer_call_and_return_conditional_losses_2549583

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:���������@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
G
+__inference_flatten_8_layer_call_fn_2549213

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *O
fJRH
F__inference_flatten_8_layer_call_and_return_conditional_losses_2548482`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
E__inference_dense_68_layer_call_and_return_conditional_losses_2549253

inputs1
matmul_readvariableop_resource:	�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

f
G__inference_dropout_17_layer_call_and_return_conditional_losses_2548597

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������@Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������@T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�	
�
E__inference_dense_70_layer_call_and_return_conditional_losses_2548608

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������@S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
P
$__inference__update_step_xla_2549203
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
:@: *
	_noinline(:($
"
_user_specified_name
variable:H D

_output_shapes

:@
"
_user_specified_name
gradient
�
o
C__inference_add_16_layer_call_and_return_conditional_losses_2549626
inputs_0
inputs_1
identityR
addAddV2inputs_0inputs_1*
T0*'
_output_shapes
:���������@O
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������@:���������@:QM
'
_output_shapes
:���������@
"
_user_specified_name
inputs_1:Q M
'
_output_shapes
:���������@
"
_user_specified_name
inputs_0
�
�
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_2549510

inputs/
!batchnorm_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@1
#batchnorm_readvariableop_1_resource:@1
#batchnorm_readvariableop_2_resource:@
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������@z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:@z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������@b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:���������@�
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@: : : : 28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_224
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
*__inference_dense_69_layer_call_fn_2549301

inputs
unknown:	�@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *N
fIRG
E__inference_dense_69_layer_call_and_return_conditional_losses_2548538o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	2549297:'#
!
_user_specified_name	2549295:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
E__inference_dense_71_layer_call_and_return_conditional_losses_2548668

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������X
SoftplusSoftplusBiasAdd:output:0*
T0*'
_output_shapes
:���������e
IdentityIdentitySoftplus:activations:0^NoOp*
T0*'
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
g
K__inference_leaky_re_lu_34_layer_call_and_return_conditional_losses_2548512

inputs
identityX
	LeakyRelu	LeakyReluinputs*(
_output_shapes
:����������*
alpha%
�#<`
IdentityIdentityLeakyRelu:activations:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
E__inference_dense_70_layer_call_and_return_conditional_losses_2549556

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������@S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�&
�
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_2549410

inputs5
'assignmovingavg_readvariableop_resource:@7
)assignmovingavg_1_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@/
!batchnorm_readvariableop_resource:@
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:@�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:���������@l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:@*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:@x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:@�
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:@*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:@~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:@�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������@h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:@v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������@b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:���������@�
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@: : : : 2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12"
AssignMovingAvgAssignMovingAvg24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�	
�
E__inference_dense_64_layer_call_and_return_conditional_losses_2549272

inputs1
matmul_readvariableop_resource:	�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

f
G__inference_dropout_16_layer_call_and_return_conditional_losses_2548641

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������@Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������@T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
K__inference_concatenate_16_layer_call_and_return_conditional_losses_2549234
inputs_0
inputs_1
inputs_2
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2inputs_0inputs_1inputs_2concat/axis:output:0*
N*
T0*'
_output_shapes
:���������W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:���������:���������:���������:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs_2:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs_1:Q M
'
_output_shapes
:���������
"
_user_specified_name
inputs_0
�
g
K__inference_leaky_re_lu_34_layer_call_and_return_conditional_losses_2549282

inputs
identityX
	LeakyRelu	LeakyReluinputs*(
_output_shapes
:����������*
alpha%
�#<`
IdentityIdentityLeakyRelu:activations:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
ޝ
�B
 __inference__traced_save_2550134
file_prefix9
&read_disablecopyonread_dense_68_kernel:	�5
&read_1_disablecopyonread_dense_68_bias:	�;
(read_2_disablecopyonread_dense_64_kernel:	�5
&read_3_disablecopyonread_dense_64_bias:	�;
(read_4_disablecopyonread_dense_69_kernel:	�@4
&read_5_disablecopyonread_dense_69_bias:@;
(read_6_disablecopyonread_dense_65_kernel:	�@4
&read_7_disablecopyonread_dense_65_bias:@C
5read_8_disablecopyonread_batch_normalization_17_gamma:@B
4read_9_disablecopyonread_batch_normalization_17_beta:@J
<read_10_disablecopyonread_batch_normalization_17_moving_mean:@N
@read_11_disablecopyonread_batch_normalization_17_moving_variance:@D
6read_12_disablecopyonread_batch_normalization_16_gamma:@C
5read_13_disablecopyonread_batch_normalization_16_beta:@J
<read_14_disablecopyonread_batch_normalization_16_moving_mean:@N
@read_15_disablecopyonread_batch_normalization_16_moving_variance:@;
)read_16_disablecopyonread_dense_70_kernel:@5
'read_17_disablecopyonread_dense_70_bias:@;
)read_18_disablecopyonread_dense_66_kernel:@5
'read_19_disablecopyonread_dense_66_bias:@;
)read_20_disablecopyonread_dense_71_kernel:@5
'read_21_disablecopyonread_dense_71_bias:;
)read_22_disablecopyonread_dense_67_kernel:@5
'read_23_disablecopyonread_dense_67_bias:-
#read_24_disablecopyonread_iteration:	 1
'read_25_disablecopyonread_learning_rate: C
0read_26_disablecopyonread_adam_m_dense_68_kernel:	�C
0read_27_disablecopyonread_adam_v_dense_68_kernel:	�=
.read_28_disablecopyonread_adam_m_dense_68_bias:	�=
.read_29_disablecopyonread_adam_v_dense_68_bias:	�C
0read_30_disablecopyonread_adam_m_dense_64_kernel:	�C
0read_31_disablecopyonread_adam_v_dense_64_kernel:	�=
.read_32_disablecopyonread_adam_m_dense_64_bias:	�=
.read_33_disablecopyonread_adam_v_dense_64_bias:	�C
0read_34_disablecopyonread_adam_m_dense_69_kernel:	�@C
0read_35_disablecopyonread_adam_v_dense_69_kernel:	�@<
.read_36_disablecopyonread_adam_m_dense_69_bias:@<
.read_37_disablecopyonread_adam_v_dense_69_bias:@C
0read_38_disablecopyonread_adam_m_dense_65_kernel:	�@C
0read_39_disablecopyonread_adam_v_dense_65_kernel:	�@<
.read_40_disablecopyonread_adam_m_dense_65_bias:@<
.read_41_disablecopyonread_adam_v_dense_65_bias:@K
=read_42_disablecopyonread_adam_m_batch_normalization_17_gamma:@K
=read_43_disablecopyonread_adam_v_batch_normalization_17_gamma:@J
<read_44_disablecopyonread_adam_m_batch_normalization_17_beta:@J
<read_45_disablecopyonread_adam_v_batch_normalization_17_beta:@K
=read_46_disablecopyonread_adam_m_batch_normalization_16_gamma:@K
=read_47_disablecopyonread_adam_v_batch_normalization_16_gamma:@J
<read_48_disablecopyonread_adam_m_batch_normalization_16_beta:@J
<read_49_disablecopyonread_adam_v_batch_normalization_16_beta:@B
0read_50_disablecopyonread_adam_m_dense_70_kernel:@B
0read_51_disablecopyonread_adam_v_dense_70_kernel:@<
.read_52_disablecopyonread_adam_m_dense_70_bias:@<
.read_53_disablecopyonread_adam_v_dense_70_bias:@B
0read_54_disablecopyonread_adam_m_dense_66_kernel:@B
0read_55_disablecopyonread_adam_v_dense_66_kernel:@<
.read_56_disablecopyonread_adam_m_dense_66_bias:@<
.read_57_disablecopyonread_adam_v_dense_66_bias:@B
0read_58_disablecopyonread_adam_m_dense_71_kernel:@B
0read_59_disablecopyonread_adam_v_dense_71_kernel:@<
.read_60_disablecopyonread_adam_m_dense_71_bias:<
.read_61_disablecopyonread_adam_v_dense_71_bias:B
0read_62_disablecopyonread_adam_m_dense_67_kernel:@B
0read_63_disablecopyonread_adam_v_dense_67_kernel:@<
.read_64_disablecopyonread_adam_m_dense_67_bias:<
.read_65_disablecopyonread_adam_v_dense_67_bias:+
!read_66_disablecopyonread_total_2: +
!read_67_disablecopyonread_count_2: +
!read_68_disablecopyonread_total_1: +
!read_69_disablecopyonread_count_1: )
read_70_disablecopyonread_total: )
read_71_disablecopyonread_count: 
savev2_const
identity_145��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_30/DisableCopyOnRead�Read_30/ReadVariableOp�Read_31/DisableCopyOnRead�Read_31/ReadVariableOp�Read_32/DisableCopyOnRead�Read_32/ReadVariableOp�Read_33/DisableCopyOnRead�Read_33/ReadVariableOp�Read_34/DisableCopyOnRead�Read_34/ReadVariableOp�Read_35/DisableCopyOnRead�Read_35/ReadVariableOp�Read_36/DisableCopyOnRead�Read_36/ReadVariableOp�Read_37/DisableCopyOnRead�Read_37/ReadVariableOp�Read_38/DisableCopyOnRead�Read_38/ReadVariableOp�Read_39/DisableCopyOnRead�Read_39/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_40/DisableCopyOnRead�Read_40/ReadVariableOp�Read_41/DisableCopyOnRead�Read_41/ReadVariableOp�Read_42/DisableCopyOnRead�Read_42/ReadVariableOp�Read_43/DisableCopyOnRead�Read_43/ReadVariableOp�Read_44/DisableCopyOnRead�Read_44/ReadVariableOp�Read_45/DisableCopyOnRead�Read_45/ReadVariableOp�Read_46/DisableCopyOnRead�Read_46/ReadVariableOp�Read_47/DisableCopyOnRead�Read_47/ReadVariableOp�Read_48/DisableCopyOnRead�Read_48/ReadVariableOp�Read_49/DisableCopyOnRead�Read_49/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_50/DisableCopyOnRead�Read_50/ReadVariableOp�Read_51/DisableCopyOnRead�Read_51/ReadVariableOp�Read_52/DisableCopyOnRead�Read_52/ReadVariableOp�Read_53/DisableCopyOnRead�Read_53/ReadVariableOp�Read_54/DisableCopyOnRead�Read_54/ReadVariableOp�Read_55/DisableCopyOnRead�Read_55/ReadVariableOp�Read_56/DisableCopyOnRead�Read_56/ReadVariableOp�Read_57/DisableCopyOnRead�Read_57/ReadVariableOp�Read_58/DisableCopyOnRead�Read_58/ReadVariableOp�Read_59/DisableCopyOnRead�Read_59/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_60/DisableCopyOnRead�Read_60/ReadVariableOp�Read_61/DisableCopyOnRead�Read_61/ReadVariableOp�Read_62/DisableCopyOnRead�Read_62/ReadVariableOp�Read_63/DisableCopyOnRead�Read_63/ReadVariableOp�Read_64/DisableCopyOnRead�Read_64/ReadVariableOp�Read_65/DisableCopyOnRead�Read_65/ReadVariableOp�Read_66/DisableCopyOnRead�Read_66/ReadVariableOp�Read_67/DisableCopyOnRead�Read_67/ReadVariableOp�Read_68/DisableCopyOnRead�Read_68/ReadVariableOp�Read_69/DisableCopyOnRead�Read_69/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_70/DisableCopyOnRead�Read_70/ReadVariableOp�Read_71/DisableCopyOnRead�Read_71/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: x
Read/DisableCopyOnReadDisableCopyOnRead&read_disablecopyonread_dense_68_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp&read_disablecopyonread_dense_68_kernel^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0j
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�b

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes
:	�z
Read_1/DisableCopyOnReadDisableCopyOnRead&read_1_disablecopyonread_dense_68_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp&read_1_disablecopyonread_dense_68_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0j

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�`

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes	
:�|
Read_2/DisableCopyOnReadDisableCopyOnRead(read_2_disablecopyonread_dense_64_kernel"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp(read_2_disablecopyonread_dense_64_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0n

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�d

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
:	�z
Read_3/DisableCopyOnReadDisableCopyOnRead&read_3_disablecopyonread_dense_64_bias"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp&read_3_disablecopyonread_dense_64_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0j

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�`

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes	
:�|
Read_4/DisableCopyOnReadDisableCopyOnRead(read_4_disablecopyonread_dense_69_kernel"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp(read_4_disablecopyonread_dense_69_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�@*
dtype0n

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�@d

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
:	�@z
Read_5/DisableCopyOnReadDisableCopyOnRead&read_5_disablecopyonread_dense_69_bias"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp&read_5_disablecopyonread_dense_69_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:@|
Read_6/DisableCopyOnReadDisableCopyOnRead(read_6_disablecopyonread_dense_65_kernel"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp(read_6_disablecopyonread_dense_65_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�@*
dtype0o
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�@f
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes
:	�@z
Read_7/DisableCopyOnReadDisableCopyOnRead&read_7_disablecopyonread_dense_65_bias"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp&read_7_disablecopyonread_dense_65_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_8/DisableCopyOnReadDisableCopyOnRead5read_8_disablecopyonread_batch_normalization_17_gamma"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp5read_8_disablecopyonread_batch_normalization_17_gamma^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_9/DisableCopyOnReadDisableCopyOnRead4read_9_disablecopyonread_batch_normalization_17_beta"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp4read_9_disablecopyonread_batch_normalization_17_beta^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_10/DisableCopyOnReadDisableCopyOnRead<read_10_disablecopyonread_batch_normalization_17_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp<read_10_disablecopyonread_batch_normalization_17_moving_mean^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_11/DisableCopyOnReadDisableCopyOnRead@read_11_disablecopyonread_batch_normalization_17_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp@read_11_disablecopyonread_batch_normalization_17_moving_variance^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_12/DisableCopyOnReadDisableCopyOnRead6read_12_disablecopyonread_batch_normalization_16_gamma"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp6read_12_disablecopyonread_batch_normalization_16_gamma^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_13/DisableCopyOnReadDisableCopyOnRead5read_13_disablecopyonread_batch_normalization_16_beta"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp5read_13_disablecopyonread_batch_normalization_16_beta^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_14/DisableCopyOnReadDisableCopyOnRead<read_14_disablecopyonread_batch_normalization_16_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp<read_14_disablecopyonread_batch_normalization_16_moving_mean^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_15/DisableCopyOnReadDisableCopyOnRead@read_15_disablecopyonread_batch_normalization_16_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp@read_15_disablecopyonread_batch_normalization_16_moving_variance^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
:@~
Read_16/DisableCopyOnReadDisableCopyOnRead)read_16_disablecopyonread_dense_70_kernel"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp)read_16_disablecopyonread_dense_70_kernel^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes

:@|
Read_17/DisableCopyOnReadDisableCopyOnRead'read_17_disablecopyonread_dense_70_bias"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp'read_17_disablecopyonread_dense_70_bias^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
:@~
Read_18/DisableCopyOnReadDisableCopyOnRead)read_18_disablecopyonread_dense_66_kernel"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp)read_18_disablecopyonread_dense_66_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes

:@|
Read_19/DisableCopyOnReadDisableCopyOnRead'read_19_disablecopyonread_dense_66_bias"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp'read_19_disablecopyonread_dense_66_bias^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
:@~
Read_20/DisableCopyOnReadDisableCopyOnRead)read_20_disablecopyonread_dense_71_kernel"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp)read_20_disablecopyonread_dense_71_kernel^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes

:@|
Read_21/DisableCopyOnReadDisableCopyOnRead'read_21_disablecopyonread_dense_71_bias"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp'read_21_disablecopyonread_dense_71_bias^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
:~
Read_22/DisableCopyOnReadDisableCopyOnRead)read_22_disablecopyonread_dense_67_kernel"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp)read_22_disablecopyonread_dense_67_kernel^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes

:@|
Read_23/DisableCopyOnReadDisableCopyOnRead'read_23_disablecopyonread_dense_67_bias"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp'read_23_disablecopyonread_dense_67_bias^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_24/DisableCopyOnReadDisableCopyOnRead#read_24_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp#read_24_disablecopyonread_iteration^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_25/DisableCopyOnReadDisableCopyOnRead'read_25_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp'read_25_disablecopyonread_learning_rate^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_26/DisableCopyOnReadDisableCopyOnRead0read_26_disablecopyonread_adam_m_dense_68_kernel"/device:CPU:0*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp0read_26_disablecopyonread_adam_m_dense_68_kernel^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_27/DisableCopyOnReadDisableCopyOnRead0read_27_disablecopyonread_adam_v_dense_68_kernel"/device:CPU:0*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp0read_27_disablecopyonread_adam_v_dense_68_kernel^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_28/DisableCopyOnReadDisableCopyOnRead.read_28_disablecopyonread_adam_m_dense_68_bias"/device:CPU:0*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOp.read_28_disablecopyonread_adam_m_dense_68_bias^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_29/DisableCopyOnReadDisableCopyOnRead.read_29_disablecopyonread_adam_v_dense_68_bias"/device:CPU:0*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOp.read_29_disablecopyonread_adam_v_dense_68_bias^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_30/DisableCopyOnReadDisableCopyOnRead0read_30_disablecopyonread_adam_m_dense_64_kernel"/device:CPU:0*
_output_shapes
 �
Read_30/ReadVariableOpReadVariableOp0read_30_disablecopyonread_adam_m_dense_64_kernel^Read_30/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_31/DisableCopyOnReadDisableCopyOnRead0read_31_disablecopyonread_adam_v_dense_64_kernel"/device:CPU:0*
_output_shapes
 �
Read_31/ReadVariableOpReadVariableOp0read_31_disablecopyonread_adam_v_dense_64_kernel^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_32/DisableCopyOnReadDisableCopyOnRead.read_32_disablecopyonread_adam_m_dense_64_bias"/device:CPU:0*
_output_shapes
 �
Read_32/ReadVariableOpReadVariableOp.read_32_disablecopyonread_adam_m_dense_64_bias^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_33/DisableCopyOnReadDisableCopyOnRead.read_33_disablecopyonread_adam_v_dense_64_bias"/device:CPU:0*
_output_shapes
 �
Read_33/ReadVariableOpReadVariableOp.read_33_disablecopyonread_adam_v_dense_64_bias^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_34/DisableCopyOnReadDisableCopyOnRead0read_34_disablecopyonread_adam_m_dense_69_kernel"/device:CPU:0*
_output_shapes
 �
Read_34/ReadVariableOpReadVariableOp0read_34_disablecopyonread_adam_m_dense_69_kernel^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�@*
dtype0p
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�@f
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes
:	�@�
Read_35/DisableCopyOnReadDisableCopyOnRead0read_35_disablecopyonread_adam_v_dense_69_kernel"/device:CPU:0*
_output_shapes
 �
Read_35/ReadVariableOpReadVariableOp0read_35_disablecopyonread_adam_v_dense_69_kernel^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�@*
dtype0p
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�@f
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes
:	�@�
Read_36/DisableCopyOnReadDisableCopyOnRead.read_36_disablecopyonread_adam_m_dense_69_bias"/device:CPU:0*
_output_shapes
 �
Read_36/ReadVariableOpReadVariableOp.read_36_disablecopyonread_adam_m_dense_69_bias^Read_36/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_37/DisableCopyOnReadDisableCopyOnRead.read_37_disablecopyonread_adam_v_dense_69_bias"/device:CPU:0*
_output_shapes
 �
Read_37/ReadVariableOpReadVariableOp.read_37_disablecopyonread_adam_v_dense_69_bias^Read_37/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_38/DisableCopyOnReadDisableCopyOnRead0read_38_disablecopyonread_adam_m_dense_65_kernel"/device:CPU:0*
_output_shapes
 �
Read_38/ReadVariableOpReadVariableOp0read_38_disablecopyonread_adam_m_dense_65_kernel^Read_38/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�@*
dtype0p
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�@f
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*
_output_shapes
:	�@�
Read_39/DisableCopyOnReadDisableCopyOnRead0read_39_disablecopyonread_adam_v_dense_65_kernel"/device:CPU:0*
_output_shapes
 �
Read_39/ReadVariableOpReadVariableOp0read_39_disablecopyonread_adam_v_dense_65_kernel^Read_39/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�@*
dtype0p
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�@f
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*
_output_shapes
:	�@�
Read_40/DisableCopyOnReadDisableCopyOnRead.read_40_disablecopyonread_adam_m_dense_65_bias"/device:CPU:0*
_output_shapes
 �
Read_40/ReadVariableOpReadVariableOp.read_40_disablecopyonread_adam_m_dense_65_bias^Read_40/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_41/DisableCopyOnReadDisableCopyOnRead.read_41_disablecopyonread_adam_v_dense_65_bias"/device:CPU:0*
_output_shapes
 �
Read_41/ReadVariableOpReadVariableOp.read_41_disablecopyonread_adam_v_dense_65_bias^Read_41/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_42/DisableCopyOnReadDisableCopyOnRead=read_42_disablecopyonread_adam_m_batch_normalization_17_gamma"/device:CPU:0*
_output_shapes
 �
Read_42/ReadVariableOpReadVariableOp=read_42_disablecopyonread_adam_m_batch_normalization_17_gamma^Read_42/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_84IdentityRead_42/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_43/DisableCopyOnReadDisableCopyOnRead=read_43_disablecopyonread_adam_v_batch_normalization_17_gamma"/device:CPU:0*
_output_shapes
 �
Read_43/ReadVariableOpReadVariableOp=read_43_disablecopyonread_adam_v_batch_normalization_17_gamma^Read_43/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_86IdentityRead_43/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_87IdentityIdentity_86:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_44/DisableCopyOnReadDisableCopyOnRead<read_44_disablecopyonread_adam_m_batch_normalization_17_beta"/device:CPU:0*
_output_shapes
 �
Read_44/ReadVariableOpReadVariableOp<read_44_disablecopyonread_adam_m_batch_normalization_17_beta^Read_44/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_88IdentityRead_44/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_89IdentityIdentity_88:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_45/DisableCopyOnReadDisableCopyOnRead<read_45_disablecopyonread_adam_v_batch_normalization_17_beta"/device:CPU:0*
_output_shapes
 �
Read_45/ReadVariableOpReadVariableOp<read_45_disablecopyonread_adam_v_batch_normalization_17_beta^Read_45/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_90IdentityRead_45/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_91IdentityIdentity_90:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_46/DisableCopyOnReadDisableCopyOnRead=read_46_disablecopyonread_adam_m_batch_normalization_16_gamma"/device:CPU:0*
_output_shapes
 �
Read_46/ReadVariableOpReadVariableOp=read_46_disablecopyonread_adam_m_batch_normalization_16_gamma^Read_46/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_92IdentityRead_46/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_93IdentityIdentity_92:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_47/DisableCopyOnReadDisableCopyOnRead=read_47_disablecopyonread_adam_v_batch_normalization_16_gamma"/device:CPU:0*
_output_shapes
 �
Read_47/ReadVariableOpReadVariableOp=read_47_disablecopyonread_adam_v_batch_normalization_16_gamma^Read_47/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_94IdentityRead_47/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_95IdentityIdentity_94:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_48/DisableCopyOnReadDisableCopyOnRead<read_48_disablecopyonread_adam_m_batch_normalization_16_beta"/device:CPU:0*
_output_shapes
 �
Read_48/ReadVariableOpReadVariableOp<read_48_disablecopyonread_adam_m_batch_normalization_16_beta^Read_48/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_96IdentityRead_48/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_97IdentityIdentity_96:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_49/DisableCopyOnReadDisableCopyOnRead<read_49_disablecopyonread_adam_v_batch_normalization_16_beta"/device:CPU:0*
_output_shapes
 �
Read_49/ReadVariableOpReadVariableOp<read_49_disablecopyonread_adam_v_batch_normalization_16_beta^Read_49/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_98IdentityRead_49/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_99IdentityIdentity_98:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_50/DisableCopyOnReadDisableCopyOnRead0read_50_disablecopyonread_adam_m_dense_70_kernel"/device:CPU:0*
_output_shapes
 �
Read_50/ReadVariableOpReadVariableOp0read_50_disablecopyonread_adam_m_dense_70_kernel^Read_50/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0p
Identity_100IdentityRead_50/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@g
Identity_101IdentityIdentity_100:output:0"/device:CPU:0*
T0*
_output_shapes

:@�
Read_51/DisableCopyOnReadDisableCopyOnRead0read_51_disablecopyonread_adam_v_dense_70_kernel"/device:CPU:0*
_output_shapes
 �
Read_51/ReadVariableOpReadVariableOp0read_51_disablecopyonread_adam_v_dense_70_kernel^Read_51/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0p
Identity_102IdentityRead_51/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@g
Identity_103IdentityIdentity_102:output:0"/device:CPU:0*
T0*
_output_shapes

:@�
Read_52/DisableCopyOnReadDisableCopyOnRead.read_52_disablecopyonread_adam_m_dense_70_bias"/device:CPU:0*
_output_shapes
 �
Read_52/ReadVariableOpReadVariableOp.read_52_disablecopyonread_adam_m_dense_70_bias^Read_52/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_104IdentityRead_52/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_105IdentityIdentity_104:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_53/DisableCopyOnReadDisableCopyOnRead.read_53_disablecopyonread_adam_v_dense_70_bias"/device:CPU:0*
_output_shapes
 �
Read_53/ReadVariableOpReadVariableOp.read_53_disablecopyonread_adam_v_dense_70_bias^Read_53/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_106IdentityRead_53/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_107IdentityIdentity_106:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_54/DisableCopyOnReadDisableCopyOnRead0read_54_disablecopyonread_adam_m_dense_66_kernel"/device:CPU:0*
_output_shapes
 �
Read_54/ReadVariableOpReadVariableOp0read_54_disablecopyonread_adam_m_dense_66_kernel^Read_54/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0p
Identity_108IdentityRead_54/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@g
Identity_109IdentityIdentity_108:output:0"/device:CPU:0*
T0*
_output_shapes

:@�
Read_55/DisableCopyOnReadDisableCopyOnRead0read_55_disablecopyonread_adam_v_dense_66_kernel"/device:CPU:0*
_output_shapes
 �
Read_55/ReadVariableOpReadVariableOp0read_55_disablecopyonread_adam_v_dense_66_kernel^Read_55/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0p
Identity_110IdentityRead_55/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@g
Identity_111IdentityIdentity_110:output:0"/device:CPU:0*
T0*
_output_shapes

:@�
Read_56/DisableCopyOnReadDisableCopyOnRead.read_56_disablecopyonread_adam_m_dense_66_bias"/device:CPU:0*
_output_shapes
 �
Read_56/ReadVariableOpReadVariableOp.read_56_disablecopyonread_adam_m_dense_66_bias^Read_56/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_112IdentityRead_56/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_113IdentityIdentity_112:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_57/DisableCopyOnReadDisableCopyOnRead.read_57_disablecopyonread_adam_v_dense_66_bias"/device:CPU:0*
_output_shapes
 �
Read_57/ReadVariableOpReadVariableOp.read_57_disablecopyonread_adam_v_dense_66_bias^Read_57/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_114IdentityRead_57/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_115IdentityIdentity_114:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_58/DisableCopyOnReadDisableCopyOnRead0read_58_disablecopyonread_adam_m_dense_71_kernel"/device:CPU:0*
_output_shapes
 �
Read_58/ReadVariableOpReadVariableOp0read_58_disablecopyonread_adam_m_dense_71_kernel^Read_58/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0p
Identity_116IdentityRead_58/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@g
Identity_117IdentityIdentity_116:output:0"/device:CPU:0*
T0*
_output_shapes

:@�
Read_59/DisableCopyOnReadDisableCopyOnRead0read_59_disablecopyonread_adam_v_dense_71_kernel"/device:CPU:0*
_output_shapes
 �
Read_59/ReadVariableOpReadVariableOp0read_59_disablecopyonread_adam_v_dense_71_kernel^Read_59/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0p
Identity_118IdentityRead_59/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@g
Identity_119IdentityIdentity_118:output:0"/device:CPU:0*
T0*
_output_shapes

:@�
Read_60/DisableCopyOnReadDisableCopyOnRead.read_60_disablecopyonread_adam_m_dense_71_bias"/device:CPU:0*
_output_shapes
 �
Read_60/ReadVariableOpReadVariableOp.read_60_disablecopyonread_adam_m_dense_71_bias^Read_60/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_120IdentityRead_60/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_121IdentityIdentity_120:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_61/DisableCopyOnReadDisableCopyOnRead.read_61_disablecopyonread_adam_v_dense_71_bias"/device:CPU:0*
_output_shapes
 �
Read_61/ReadVariableOpReadVariableOp.read_61_disablecopyonread_adam_v_dense_71_bias^Read_61/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_122IdentityRead_61/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_123IdentityIdentity_122:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_62/DisableCopyOnReadDisableCopyOnRead0read_62_disablecopyonread_adam_m_dense_67_kernel"/device:CPU:0*
_output_shapes
 �
Read_62/ReadVariableOpReadVariableOp0read_62_disablecopyonread_adam_m_dense_67_kernel^Read_62/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0p
Identity_124IdentityRead_62/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@g
Identity_125IdentityIdentity_124:output:0"/device:CPU:0*
T0*
_output_shapes

:@�
Read_63/DisableCopyOnReadDisableCopyOnRead0read_63_disablecopyonread_adam_v_dense_67_kernel"/device:CPU:0*
_output_shapes
 �
Read_63/ReadVariableOpReadVariableOp0read_63_disablecopyonread_adam_v_dense_67_kernel^Read_63/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0p
Identity_126IdentityRead_63/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@g
Identity_127IdentityIdentity_126:output:0"/device:CPU:0*
T0*
_output_shapes

:@�
Read_64/DisableCopyOnReadDisableCopyOnRead.read_64_disablecopyonread_adam_m_dense_67_bias"/device:CPU:0*
_output_shapes
 �
Read_64/ReadVariableOpReadVariableOp.read_64_disablecopyonread_adam_m_dense_67_bias^Read_64/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_128IdentityRead_64/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_129IdentityIdentity_128:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_65/DisableCopyOnReadDisableCopyOnRead.read_65_disablecopyonread_adam_v_dense_67_bias"/device:CPU:0*
_output_shapes
 �
Read_65/ReadVariableOpReadVariableOp.read_65_disablecopyonread_adam_v_dense_67_bias^Read_65/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_130IdentityRead_65/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_131IdentityIdentity_130:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_66/DisableCopyOnReadDisableCopyOnRead!read_66_disablecopyonread_total_2"/device:CPU:0*
_output_shapes
 �
Read_66/ReadVariableOpReadVariableOp!read_66_disablecopyonread_total_2^Read_66/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_132IdentityRead_66/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_133IdentityIdentity_132:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_67/DisableCopyOnReadDisableCopyOnRead!read_67_disablecopyonread_count_2"/device:CPU:0*
_output_shapes
 �
Read_67/ReadVariableOpReadVariableOp!read_67_disablecopyonread_count_2^Read_67/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_134IdentityRead_67/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_135IdentityIdentity_134:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_68/DisableCopyOnReadDisableCopyOnRead!read_68_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 �
Read_68/ReadVariableOpReadVariableOp!read_68_disablecopyonread_total_1^Read_68/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_136IdentityRead_68/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_137IdentityIdentity_136:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_69/DisableCopyOnReadDisableCopyOnRead!read_69_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 �
Read_69/ReadVariableOpReadVariableOp!read_69_disablecopyonread_count_1^Read_69/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_138IdentityRead_69/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_139IdentityIdentity_138:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_70/DisableCopyOnReadDisableCopyOnReadread_70_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_70/ReadVariableOpReadVariableOpread_70_disablecopyonread_total^Read_70/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_140IdentityRead_70/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_141IdentityIdentity_140:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_71/DisableCopyOnReadDisableCopyOnReadread_71_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_71/ReadVariableOpReadVariableOpread_71_disablecopyonread_count^Read_71/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_142IdentityRead_71/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_143IdentityIdentity_142:output:0"/device:CPU:0*
T0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:I*
dtype0*�
value�B�IB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:I*
dtype0*�
value�B�IB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0Identity_91:output:0Identity_93:output:0Identity_95:output:0Identity_97:output:0Identity_99:output:0Identity_101:output:0Identity_103:output:0Identity_105:output:0Identity_107:output:0Identity_109:output:0Identity_111:output:0Identity_113:output:0Identity_115:output:0Identity_117:output:0Identity_119:output:0Identity_121:output:0Identity_123:output:0Identity_125:output:0Identity_127:output:0Identity_129:output:0Identity_131:output:0Identity_133:output:0Identity_135:output:0Identity_137:output:0Identity_139:output:0Identity_141:output:0Identity_143:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *W
dtypesM
K2I	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 j
Identity_144Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: W
Identity_145IdentityIdentity_144:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_44/DisableCopyOnRead^Read_44/ReadVariableOp^Read_45/DisableCopyOnRead^Read_45/ReadVariableOp^Read_46/DisableCopyOnRead^Read_46/ReadVariableOp^Read_47/DisableCopyOnRead^Read_47/ReadVariableOp^Read_48/DisableCopyOnRead^Read_48/ReadVariableOp^Read_49/DisableCopyOnRead^Read_49/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_50/DisableCopyOnRead^Read_50/ReadVariableOp^Read_51/DisableCopyOnRead^Read_51/ReadVariableOp^Read_52/DisableCopyOnRead^Read_52/ReadVariableOp^Read_53/DisableCopyOnRead^Read_53/ReadVariableOp^Read_54/DisableCopyOnRead^Read_54/ReadVariableOp^Read_55/DisableCopyOnRead^Read_55/ReadVariableOp^Read_56/DisableCopyOnRead^Read_56/ReadVariableOp^Read_57/DisableCopyOnRead^Read_57/ReadVariableOp^Read_58/DisableCopyOnRead^Read_58/ReadVariableOp^Read_59/DisableCopyOnRead^Read_59/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_60/DisableCopyOnRead^Read_60/ReadVariableOp^Read_61/DisableCopyOnRead^Read_61/ReadVariableOp^Read_62/DisableCopyOnRead^Read_62/ReadVariableOp^Read_63/DisableCopyOnRead^Read_63/ReadVariableOp^Read_64/DisableCopyOnRead^Read_64/ReadVariableOp^Read_65/DisableCopyOnRead^Read_65/ReadVariableOp^Read_66/DisableCopyOnRead^Read_66/ReadVariableOp^Read_67/DisableCopyOnRead^Read_67/ReadVariableOp^Read_68/DisableCopyOnRead^Read_68/ReadVariableOp^Read_69/DisableCopyOnRead^Read_69/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_70/DisableCopyOnRead^Read_70/ReadVariableOp^Read_71/DisableCopyOnRead^Read_71/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "%
identity_145Identity_145:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp26
Read_42/DisableCopyOnReadRead_42/DisableCopyOnRead20
Read_42/ReadVariableOpRead_42/ReadVariableOp26
Read_43/DisableCopyOnReadRead_43/DisableCopyOnRead20
Read_43/ReadVariableOpRead_43/ReadVariableOp26
Read_44/DisableCopyOnReadRead_44/DisableCopyOnRead20
Read_44/ReadVariableOpRead_44/ReadVariableOp26
Read_45/DisableCopyOnReadRead_45/DisableCopyOnRead20
Read_45/ReadVariableOpRead_45/ReadVariableOp26
Read_46/DisableCopyOnReadRead_46/DisableCopyOnRead20
Read_46/ReadVariableOpRead_46/ReadVariableOp26
Read_47/DisableCopyOnReadRead_47/DisableCopyOnRead20
Read_47/ReadVariableOpRead_47/ReadVariableOp26
Read_48/DisableCopyOnReadRead_48/DisableCopyOnRead20
Read_48/ReadVariableOpRead_48/ReadVariableOp26
Read_49/DisableCopyOnReadRead_49/DisableCopyOnRead20
Read_49/ReadVariableOpRead_49/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp26
Read_50/DisableCopyOnReadRead_50/DisableCopyOnRead20
Read_50/ReadVariableOpRead_50/ReadVariableOp26
Read_51/DisableCopyOnReadRead_51/DisableCopyOnRead20
Read_51/ReadVariableOpRead_51/ReadVariableOp26
Read_52/DisableCopyOnReadRead_52/DisableCopyOnRead20
Read_52/ReadVariableOpRead_52/ReadVariableOp26
Read_53/DisableCopyOnReadRead_53/DisableCopyOnRead20
Read_53/ReadVariableOpRead_53/ReadVariableOp26
Read_54/DisableCopyOnReadRead_54/DisableCopyOnRead20
Read_54/ReadVariableOpRead_54/ReadVariableOp26
Read_55/DisableCopyOnReadRead_55/DisableCopyOnRead20
Read_55/ReadVariableOpRead_55/ReadVariableOp26
Read_56/DisableCopyOnReadRead_56/DisableCopyOnRead20
Read_56/ReadVariableOpRead_56/ReadVariableOp26
Read_57/DisableCopyOnReadRead_57/DisableCopyOnRead20
Read_57/ReadVariableOpRead_57/ReadVariableOp26
Read_58/DisableCopyOnReadRead_58/DisableCopyOnRead20
Read_58/ReadVariableOpRead_58/ReadVariableOp26
Read_59/DisableCopyOnReadRead_59/DisableCopyOnRead20
Read_59/ReadVariableOpRead_59/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp26
Read_60/DisableCopyOnReadRead_60/DisableCopyOnRead20
Read_60/ReadVariableOpRead_60/ReadVariableOp26
Read_61/DisableCopyOnReadRead_61/DisableCopyOnRead20
Read_61/ReadVariableOpRead_61/ReadVariableOp26
Read_62/DisableCopyOnReadRead_62/DisableCopyOnRead20
Read_62/ReadVariableOpRead_62/ReadVariableOp26
Read_63/DisableCopyOnReadRead_63/DisableCopyOnRead20
Read_63/ReadVariableOpRead_63/ReadVariableOp26
Read_64/DisableCopyOnReadRead_64/DisableCopyOnRead20
Read_64/ReadVariableOpRead_64/ReadVariableOp26
Read_65/DisableCopyOnReadRead_65/DisableCopyOnRead20
Read_65/ReadVariableOpRead_65/ReadVariableOp26
Read_66/DisableCopyOnReadRead_66/DisableCopyOnRead20
Read_66/ReadVariableOpRead_66/ReadVariableOp26
Read_67/DisableCopyOnReadRead_67/DisableCopyOnRead20
Read_67/ReadVariableOpRead_67/ReadVariableOp26
Read_68/DisableCopyOnReadRead_68/DisableCopyOnRead20
Read_68/ReadVariableOpRead_68/ReadVariableOp26
Read_69/DisableCopyOnReadRead_69/DisableCopyOnRead20
Read_69/ReadVariableOpRead_69/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp26
Read_70/DisableCopyOnReadRead_70/DisableCopyOnRead20
Read_70/ReadVariableOpRead_70/ReadVariableOp26
Read_71/DisableCopyOnReadRead_71/DisableCopyOnRead20
Read_71/ReadVariableOpRead_71/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:=I9

_output_shapes
: 

_user_specified_nameConst:%H!

_user_specified_namecount:%G!

_user_specified_nametotal:'F#
!
_user_specified_name	count_1:'E#
!
_user_specified_name	total_1:'D#
!
_user_specified_name	count_2:'C#
!
_user_specified_name	total_2:4B0
.
_user_specified_nameAdam/v/dense_67/bias:4A0
.
_user_specified_nameAdam/m/dense_67/bias:6@2
0
_user_specified_nameAdam/v/dense_67/kernel:6?2
0
_user_specified_nameAdam/m/dense_67/kernel:4>0
.
_user_specified_nameAdam/v/dense_71/bias:4=0
.
_user_specified_nameAdam/m/dense_71/bias:6<2
0
_user_specified_nameAdam/v/dense_71/kernel:6;2
0
_user_specified_nameAdam/m/dense_71/kernel:4:0
.
_user_specified_nameAdam/v/dense_66/bias:490
.
_user_specified_nameAdam/m/dense_66/bias:682
0
_user_specified_nameAdam/v/dense_66/kernel:672
0
_user_specified_nameAdam/m/dense_66/kernel:460
.
_user_specified_nameAdam/v/dense_70/bias:450
.
_user_specified_nameAdam/m/dense_70/bias:642
0
_user_specified_nameAdam/v/dense_70/kernel:632
0
_user_specified_nameAdam/m/dense_70/kernel:B2>
<
_user_specified_name$"Adam/v/batch_normalization_16/beta:B1>
<
_user_specified_name$"Adam/m/batch_normalization_16/beta:C0?
=
_user_specified_name%#Adam/v/batch_normalization_16/gamma:C/?
=
_user_specified_name%#Adam/m/batch_normalization_16/gamma:B.>
<
_user_specified_name$"Adam/v/batch_normalization_17/beta:B->
<
_user_specified_name$"Adam/m/batch_normalization_17/beta:C,?
=
_user_specified_name%#Adam/v/batch_normalization_17/gamma:C+?
=
_user_specified_name%#Adam/m/batch_normalization_17/gamma:4*0
.
_user_specified_nameAdam/v/dense_65/bias:4)0
.
_user_specified_nameAdam/m/dense_65/bias:6(2
0
_user_specified_nameAdam/v/dense_65/kernel:6'2
0
_user_specified_nameAdam/m/dense_65/kernel:4&0
.
_user_specified_nameAdam/v/dense_69/bias:4%0
.
_user_specified_nameAdam/m/dense_69/bias:6$2
0
_user_specified_nameAdam/v/dense_69/kernel:6#2
0
_user_specified_nameAdam/m/dense_69/kernel:4"0
.
_user_specified_nameAdam/v/dense_64/bias:4!0
.
_user_specified_nameAdam/m/dense_64/bias:6 2
0
_user_specified_nameAdam/v/dense_64/kernel:62
0
_user_specified_nameAdam/m/dense_64/kernel:40
.
_user_specified_nameAdam/v/dense_68/bias:40
.
_user_specified_nameAdam/m/dense_68/bias:62
0
_user_specified_nameAdam/v/dense_68/kernel:62
0
_user_specified_nameAdam/m/dense_68/kernel:-)
'
_user_specified_namelearning_rate:)%
#
_user_specified_name	iteration:-)
'
_user_specified_namedense_67/bias:/+
)
_user_specified_namedense_67/kernel:-)
'
_user_specified_namedense_71/bias:/+
)
_user_specified_namedense_71/kernel:-)
'
_user_specified_namedense_66/bias:/+
)
_user_specified_namedense_66/kernel:-)
'
_user_specified_namedense_70/bias:/+
)
_user_specified_namedense_70/kernel:FB
@
_user_specified_name(&batch_normalization_16/moving_variance:B>
<
_user_specified_name$"batch_normalization_16/moving_mean:;7
5
_user_specified_namebatch_normalization_16/beta:<8
6
_user_specified_namebatch_normalization_16/gamma:FB
@
_user_specified_name(&batch_normalization_17/moving_variance:B>
<
_user_specified_name$"batch_normalization_17/moving_mean:;
7
5
_user_specified_namebatch_normalization_17/beta:<	8
6
_user_specified_namebatch_normalization_17/gamma:-)
'
_user_specified_namedense_65/bias:/+
)
_user_specified_namedense_65/kernel:-)
'
_user_specified_namedense_69/bias:/+
)
_user_specified_namedense_69/kernel:-)
'
_user_specified_namedense_64/bias:/+
)
_user_specified_namedense_64/kernel:-)
'
_user_specified_namedense_68/bias:/+
)
_user_specified_namedense_68/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
*__inference_dense_67_layer_call_fn_2549655

inputs
unknown:@
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *N
fIRG
E__inference_dense_67_layer_call_and_return_conditional_losses_2548690o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	2549651:'#
!
_user_specified_name	2549649:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
L
$__inference__update_step_xla_2549153
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:@
"
_user_specified_name
gradient
�
T
(__inference_add_17_layer_call_fn_2549608
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *L
fGRE
C__inference_add_17_layer_call_and_return_conditional_losses_2548628`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������@:���������@:QM
'
_output_shapes
:���������@
"
_user_specified_name
inputs_1:Q M
'
_output_shapes
:���������@
"
_user_specified_name
inputs_0
�
�
K__inference_concatenate_16_layer_call_and_return_conditional_losses_2548491

inputs
inputs_1
inputs_2
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
concatConcatV2inputsinputs_1inputs_2concat/axis:output:0*
N*
T0*'
_output_shapes
:���������W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:���������:���������:���������:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
L
0__inference_leaky_re_lu_34_layer_call_fn_2549277

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *T
fORM
K__inference_leaky_re_lu_34_layer_call_and_return_conditional_losses_2548512a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
%__inference_signature_wrapper_2549108

angles
cluster_charge
pixel_projection_x
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
	unknown_3:	�@
	unknown_4:@
	unknown_5:	�@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@

unknown_11:@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@

unknown_17:@

unknown_18:@

unknown_19:@

unknown_20:

unknown_21:@

unknown_22:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallpixel_projection_xanglescluster_chargeunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*:
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2*0,1J 8� *+
f&R$
"__inference__wrapped_model_2548312o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapeso
m:���������:���������:���������: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	2549104:'#
!
_user_specified_name	2549102:'#
!
_user_specified_name	2549100:'#
!
_user_specified_name	2549098:'#
!
_user_specified_name	2549096:'#
!
_user_specified_name	2549094:'#
!
_user_specified_name	2549092:'#
!
_user_specified_name	2549090:'#
!
_user_specified_name	2549088:'#
!
_user_specified_name	2549086:'#
!
_user_specified_name	2549084:'#
!
_user_specified_name	2549082:'#
!
_user_specified_name	2549080:'#
!
_user_specified_name	2549078:'#
!
_user_specified_name	2549076:'#
!
_user_specified_name	2549074:'
#
!
_user_specified_name	2549072:'	#
!
_user_specified_name	2549070:'#
!
_user_specified_name	2549068:'#
!
_user_specified_name	2549066:'#
!
_user_specified_name	2549064:'#
!
_user_specified_name	2549062:'#
!
_user_specified_name	2549060:'#
!
_user_specified_name	2549058:_[
+
_output_shapes
:���������
,
_user_specified_namepixel_projection_x:WS
'
_output_shapes
:���������
(
_user_specified_namecluster_charge:O K
'
_output_shapes
:���������
 
_user_specified_nameangles
�
�
*__inference_dense_71_layer_call_fn_2549635

inputs
unknown:@
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *N
fIRG
E__inference_dense_71_layer_call_and_return_conditional_losses_2548668o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	2549631:'#
!
_user_specified_name	2549629:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�	
�
E__inference_dense_66_layer_call_and_return_conditional_losses_2548652

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������@S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�g
�
D__inference_model_8_layer_call_and_return_conditional_losses_2548798
pixel_projection_x

angles
cluster_charge#
dense_68_2548716:	�
dense_68_2548718:	�#
dense_64_2548722:	�
dense_64_2548724:	�#
dense_69_2548727:	�@
dense_69_2548729:@#
dense_65_2548734:	�@
dense_65_2548736:@,
batch_normalization_17_2548739:@,
batch_normalization_17_2548741:@,
batch_normalization_17_2548743:@,
batch_normalization_17_2548745:@"
dense_70_2548755:@
dense_70_2548757:@,
batch_normalization_16_2548760:@,
batch_normalization_16_2548762:@,
batch_normalization_16_2548764:@,
batch_normalization_16_2548766:@"
dense_66_2548776:@
dense_66_2548778:@"
dense_71_2548781:@
dense_71_2548783:"
dense_67_2548787:@
dense_67_2548789:
identity��.batch_normalization_16/StatefulPartitionedCall�.batch_normalization_17/StatefulPartitionedCall� dense_64/StatefulPartitionedCall� dense_65/StatefulPartitionedCall� dense_66/StatefulPartitionedCall� dense_67/StatefulPartitionedCall� dense_68/StatefulPartitionedCall� dense_69/StatefulPartitionedCall� dense_70/StatefulPartitionedCall� dense_71/StatefulPartitionedCall�
flatten_8/PartitionedCallPartitionedCallpixel_projection_x*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *O
fJRH
F__inference_flatten_8_layer_call_and_return_conditional_losses_2548482�
concatenate_16/PartitionedCallPartitionedCall"flatten_8/PartitionedCall:output:0anglescluster_charge*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *T
fORM
K__inference_concatenate_16_layer_call_and_return_conditional_losses_2548491�
 dense_68/StatefulPartitionedCallStatefulPartitionedCall'concatenate_16/PartitionedCall:output:0dense_68_2548716dense_68_2548718*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *N
fIRG
E__inference_dense_68_layer_call_and_return_conditional_losses_2548502�
leaky_re_lu_34/PartitionedCallPartitionedCall)dense_68/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *T
fORM
K__inference_leaky_re_lu_34_layer_call_and_return_conditional_losses_2548512�
 dense_64/StatefulPartitionedCallStatefulPartitionedCall'concatenate_16/PartitionedCall:output:0dense_64_2548722dense_64_2548724*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *N
fIRG
E__inference_dense_64_layer_call_and_return_conditional_losses_2548523�
 dense_69/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_34/PartitionedCall:output:0dense_69_2548727dense_69_2548729*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *N
fIRG
E__inference_dense_69_layer_call_and_return_conditional_losses_2548538�
leaky_re_lu_32/PartitionedCallPartitionedCall)dense_64/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *T
fORM
K__inference_leaky_re_lu_32_layer_call_and_return_conditional_losses_2548548�
leaky_re_lu_35/PartitionedCallPartitionedCall)dense_69/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *T
fORM
K__inference_leaky_re_lu_35_layer_call_and_return_conditional_losses_2548554�
 dense_65/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_32/PartitionedCall:output:0dense_65_2548734dense_65_2548736*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *N
fIRG
E__inference_dense_65_layer_call_and_return_conditional_losses_2548565�
.batch_normalization_17/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_35/PartitionedCall:output:0batch_normalization_17_2548739batch_normalization_17_2548741batch_normalization_17_2548743batch_normalization_17_2548745*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *\
fWRU
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_2548366�
leaky_re_lu_33/PartitionedCallPartitionedCall)dense_65/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *T
fORM
K__inference_leaky_re_lu_33_layer_call_and_return_conditional_losses_2548584�
dropout_17/PartitionedCallPartitionedCall7batch_normalization_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_dropout_17_layer_call_and_return_conditional_losses_2548753�
 dense_70/StatefulPartitionedCallStatefulPartitionedCall'concatenate_16/PartitionedCall:output:0dense_70_2548755dense_70_2548757*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *N
fIRG
E__inference_dense_70_layer_call_and_return_conditional_losses_2548608�
.batch_normalization_16/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_33/PartitionedCall:output:0batch_normalization_16_2548760batch_normalization_16_2548762batch_normalization_16_2548764batch_normalization_16_2548766*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *\
fWRU
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_2548446�
add_17/PartitionedCallPartitionedCall#dropout_17/PartitionedCall:output:0)dense_70/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *L
fGRE
C__inference_add_17_layer_call_and_return_conditional_losses_2548628�
dropout_16/PartitionedCallPartitionedCall7batch_normalization_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_dropout_16_layer_call_and_return_conditional_losses_2548774�
 dense_66/StatefulPartitionedCallStatefulPartitionedCall'concatenate_16/PartitionedCall:output:0dense_66_2548776dense_66_2548778*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *N
fIRG
E__inference_dense_66_layer_call_and_return_conditional_losses_2548652�
 dense_71/StatefulPartitionedCallStatefulPartitionedCalladd_17/PartitionedCall:output:0dense_71_2548781dense_71_2548783*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *N
fIRG
E__inference_dense_71_layer_call_and_return_conditional_losses_2548668�
add_16/PartitionedCallPartitionedCall#dropout_16/PartitionedCall:output:0)dense_66/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *L
fGRE
C__inference_add_16_layer_call_and_return_conditional_losses_2548679�
 dense_67/StatefulPartitionedCallStatefulPartitionedCalladd_16/PartitionedCall:output:0dense_67_2548787dense_67_2548789*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *N
fIRG
E__inference_dense_67_layer_call_and_return_conditional_losses_2548690o
*tf.clip_by_value_8/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �B�
(tf.clip_by_value_8/clip_by_value/MinimumMinimum)dense_71/StatefulPartitionedCall:output:03tf.clip_by_value_8/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:���������g
"tf.clip_by_value_8/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@�
 tf.clip_by_value_8/clip_by_valueMaximum,tf.clip_by_value_8/clip_by_value/Minimum:z:0+tf.clip_by_value_8/clip_by_value/y:output:0*
T0*'
_output_shapes
:����������
concatenate_17/PartitionedCallPartitionedCall)dense_67/StatefulPartitionedCall:output:0$tf.clip_by_value_8/clip_by_value:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *T
fORM
K__inference_concatenate_17_layer_call_and_return_conditional_losses_2548706v
IdentityIdentity'concatenate_17/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp/^batch_normalization_16/StatefulPartitionedCall/^batch_normalization_17/StatefulPartitionedCall!^dense_64/StatefulPartitionedCall!^dense_65/StatefulPartitionedCall!^dense_66/StatefulPartitionedCall!^dense_67/StatefulPartitionedCall!^dense_68/StatefulPartitionedCall!^dense_69/StatefulPartitionedCall!^dense_70/StatefulPartitionedCall!^dense_71/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapeso
m:���������:���������:���������: : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_16/StatefulPartitionedCall.batch_normalization_16/StatefulPartitionedCall2`
.batch_normalization_17/StatefulPartitionedCall.batch_normalization_17/StatefulPartitionedCall2D
 dense_64/StatefulPartitionedCall dense_64/StatefulPartitionedCall2D
 dense_65/StatefulPartitionedCall dense_65/StatefulPartitionedCall2D
 dense_66/StatefulPartitionedCall dense_66/StatefulPartitionedCall2D
 dense_67/StatefulPartitionedCall dense_67/StatefulPartitionedCall2D
 dense_68/StatefulPartitionedCall dense_68/StatefulPartitionedCall2D
 dense_69/StatefulPartitionedCall dense_69/StatefulPartitionedCall2D
 dense_70/StatefulPartitionedCall dense_70/StatefulPartitionedCall2D
 dense_71/StatefulPartitionedCall dense_71/StatefulPartitionedCall:'#
!
_user_specified_name	2548789:'#
!
_user_specified_name	2548787:'#
!
_user_specified_name	2548783:'#
!
_user_specified_name	2548781:'#
!
_user_specified_name	2548778:'#
!
_user_specified_name	2548776:'#
!
_user_specified_name	2548766:'#
!
_user_specified_name	2548764:'#
!
_user_specified_name	2548762:'#
!
_user_specified_name	2548760:'#
!
_user_specified_name	2548757:'#
!
_user_specified_name	2548755:'#
!
_user_specified_name	2548745:'#
!
_user_specified_name	2548743:'#
!
_user_specified_name	2548741:'#
!
_user_specified_name	2548739:'
#
!
_user_specified_name	2548736:'	#
!
_user_specified_name	2548734:'#
!
_user_specified_name	2548729:'#
!
_user_specified_name	2548727:'#
!
_user_specified_name	2548724:'#
!
_user_specified_name	2548722:'#
!
_user_specified_name	2548718:'#
!
_user_specified_name	2548716:WS
'
_output_shapes
:���������
(
_user_specified_namecluster_charge:OK
'
_output_shapes
:���������
 
_user_specified_nameangles:_ [
+
_output_shapes
:���������
,
_user_specified_namepixel_projection_x
�j
�
D__inference_model_8_layer_call_and_return_conditional_losses_2548709
pixel_projection_x

angles
cluster_charge#
dense_68_2548503:	�
dense_68_2548505:	�#
dense_64_2548524:	�
dense_64_2548526:	�#
dense_69_2548539:	�@
dense_69_2548541:@#
dense_65_2548566:	�@
dense_65_2548568:@,
batch_normalization_17_2548571:@,
batch_normalization_17_2548573:@,
batch_normalization_17_2548575:@,
batch_normalization_17_2548577:@"
dense_70_2548609:@
dense_70_2548611:@,
batch_normalization_16_2548614:@,
batch_normalization_16_2548616:@,
batch_normalization_16_2548618:@,
batch_normalization_16_2548620:@"
dense_66_2548653:@
dense_66_2548655:@"
dense_71_2548669:@
dense_71_2548671:"
dense_67_2548691:@
dense_67_2548693:
identity��.batch_normalization_16/StatefulPartitionedCall�.batch_normalization_17/StatefulPartitionedCall� dense_64/StatefulPartitionedCall� dense_65/StatefulPartitionedCall� dense_66/StatefulPartitionedCall� dense_67/StatefulPartitionedCall� dense_68/StatefulPartitionedCall� dense_69/StatefulPartitionedCall� dense_70/StatefulPartitionedCall� dense_71/StatefulPartitionedCall�"dropout_16/StatefulPartitionedCall�"dropout_17/StatefulPartitionedCall�
flatten_8/PartitionedCallPartitionedCallpixel_projection_x*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *O
fJRH
F__inference_flatten_8_layer_call_and_return_conditional_losses_2548482�
concatenate_16/PartitionedCallPartitionedCall"flatten_8/PartitionedCall:output:0anglescluster_charge*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *T
fORM
K__inference_concatenate_16_layer_call_and_return_conditional_losses_2548491�
 dense_68/StatefulPartitionedCallStatefulPartitionedCall'concatenate_16/PartitionedCall:output:0dense_68_2548503dense_68_2548505*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *N
fIRG
E__inference_dense_68_layer_call_and_return_conditional_losses_2548502�
leaky_re_lu_34/PartitionedCallPartitionedCall)dense_68/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *T
fORM
K__inference_leaky_re_lu_34_layer_call_and_return_conditional_losses_2548512�
 dense_64/StatefulPartitionedCallStatefulPartitionedCall'concatenate_16/PartitionedCall:output:0dense_64_2548524dense_64_2548526*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *N
fIRG
E__inference_dense_64_layer_call_and_return_conditional_losses_2548523�
 dense_69/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_34/PartitionedCall:output:0dense_69_2548539dense_69_2548541*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *N
fIRG
E__inference_dense_69_layer_call_and_return_conditional_losses_2548538�
leaky_re_lu_32/PartitionedCallPartitionedCall)dense_64/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *T
fORM
K__inference_leaky_re_lu_32_layer_call_and_return_conditional_losses_2548548�
leaky_re_lu_35/PartitionedCallPartitionedCall)dense_69/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *T
fORM
K__inference_leaky_re_lu_35_layer_call_and_return_conditional_losses_2548554�
 dense_65/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_32/PartitionedCall:output:0dense_65_2548566dense_65_2548568*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *N
fIRG
E__inference_dense_65_layer_call_and_return_conditional_losses_2548565�
.batch_normalization_17/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_35/PartitionedCall:output:0batch_normalization_17_2548571batch_normalization_17_2548573batch_normalization_17_2548575batch_normalization_17_2548577*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *\
fWRU
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_2548346�
leaky_re_lu_33/PartitionedCallPartitionedCall)dense_65/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *T
fORM
K__inference_leaky_re_lu_33_layer_call_and_return_conditional_losses_2548584�
"dropout_17/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_dropout_17_layer_call_and_return_conditional_losses_2548597�
 dense_70/StatefulPartitionedCallStatefulPartitionedCall'concatenate_16/PartitionedCall:output:0dense_70_2548609dense_70_2548611*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *N
fIRG
E__inference_dense_70_layer_call_and_return_conditional_losses_2548608�
.batch_normalization_16/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_33/PartitionedCall:output:0batch_normalization_16_2548614batch_normalization_16_2548616batch_normalization_16_2548618batch_normalization_16_2548620*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *\
fWRU
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_2548426�
add_17/PartitionedCallPartitionedCall+dropout_17/StatefulPartitionedCall:output:0)dense_70/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *L
fGRE
C__inference_add_17_layer_call_and_return_conditional_losses_2548628�
"dropout_16/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_16/StatefulPartitionedCall:output:0#^dropout_17/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_dropout_16_layer_call_and_return_conditional_losses_2548641�
 dense_66/StatefulPartitionedCallStatefulPartitionedCall'concatenate_16/PartitionedCall:output:0dense_66_2548653dense_66_2548655*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *N
fIRG
E__inference_dense_66_layer_call_and_return_conditional_losses_2548652�
 dense_71/StatefulPartitionedCallStatefulPartitionedCalladd_17/PartitionedCall:output:0dense_71_2548669dense_71_2548671*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *N
fIRG
E__inference_dense_71_layer_call_and_return_conditional_losses_2548668�
add_16/PartitionedCallPartitionedCall+dropout_16/StatefulPartitionedCall:output:0)dense_66/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *L
fGRE
C__inference_add_16_layer_call_and_return_conditional_losses_2548679�
 dense_67/StatefulPartitionedCallStatefulPartitionedCalladd_16/PartitionedCall:output:0dense_67_2548691dense_67_2548693*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *N
fIRG
E__inference_dense_67_layer_call_and_return_conditional_losses_2548690o
*tf.clip_by_value_8/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �B�
(tf.clip_by_value_8/clip_by_value/MinimumMinimum)dense_71/StatefulPartitionedCall:output:03tf.clip_by_value_8/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:���������g
"tf.clip_by_value_8/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@�
 tf.clip_by_value_8/clip_by_valueMaximum,tf.clip_by_value_8/clip_by_value/Minimum:z:0+tf.clip_by_value_8/clip_by_value/y:output:0*
T0*'
_output_shapes
:����������
concatenate_17/PartitionedCallPartitionedCall)dense_67/StatefulPartitionedCall:output:0$tf.clip_by_value_8/clip_by_value:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *T
fORM
K__inference_concatenate_17_layer_call_and_return_conditional_losses_2548706v
IdentityIdentity'concatenate_17/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp/^batch_normalization_16/StatefulPartitionedCall/^batch_normalization_17/StatefulPartitionedCall!^dense_64/StatefulPartitionedCall!^dense_65/StatefulPartitionedCall!^dense_66/StatefulPartitionedCall!^dense_67/StatefulPartitionedCall!^dense_68/StatefulPartitionedCall!^dense_69/StatefulPartitionedCall!^dense_70/StatefulPartitionedCall!^dense_71/StatefulPartitionedCall#^dropout_16/StatefulPartitionedCall#^dropout_17/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapeso
m:���������:���������:���������: : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_16/StatefulPartitionedCall.batch_normalization_16/StatefulPartitionedCall2`
.batch_normalization_17/StatefulPartitionedCall.batch_normalization_17/StatefulPartitionedCall2D
 dense_64/StatefulPartitionedCall dense_64/StatefulPartitionedCall2D
 dense_65/StatefulPartitionedCall dense_65/StatefulPartitionedCall2D
 dense_66/StatefulPartitionedCall dense_66/StatefulPartitionedCall2D
 dense_67/StatefulPartitionedCall dense_67/StatefulPartitionedCall2D
 dense_68/StatefulPartitionedCall dense_68/StatefulPartitionedCall2D
 dense_69/StatefulPartitionedCall dense_69/StatefulPartitionedCall2D
 dense_70/StatefulPartitionedCall dense_70/StatefulPartitionedCall2D
 dense_71/StatefulPartitionedCall dense_71/StatefulPartitionedCall2H
"dropout_16/StatefulPartitionedCall"dropout_16/StatefulPartitionedCall2H
"dropout_17/StatefulPartitionedCall"dropout_17/StatefulPartitionedCall:'#
!
_user_specified_name	2548693:'#
!
_user_specified_name	2548691:'#
!
_user_specified_name	2548671:'#
!
_user_specified_name	2548669:'#
!
_user_specified_name	2548655:'#
!
_user_specified_name	2548653:'#
!
_user_specified_name	2548620:'#
!
_user_specified_name	2548618:'#
!
_user_specified_name	2548616:'#
!
_user_specified_name	2548614:'#
!
_user_specified_name	2548611:'#
!
_user_specified_name	2548609:'#
!
_user_specified_name	2548577:'#
!
_user_specified_name	2548575:'#
!
_user_specified_name	2548573:'#
!
_user_specified_name	2548571:'
#
!
_user_specified_name	2548568:'	#
!
_user_specified_name	2548566:'#
!
_user_specified_name	2548541:'#
!
_user_specified_name	2548539:'#
!
_user_specified_name	2548526:'#
!
_user_specified_name	2548524:'#
!
_user_specified_name	2548505:'#
!
_user_specified_name	2548503:WS
'
_output_shapes
:���������
(
_user_specified_namecluster_charge:OK
'
_output_shapes
:���������
 
_user_specified_nameangles:_ [
+
_output_shapes
:���������
,
_user_specified_namepixel_projection_x
�&
�
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_2548346

inputs5
'assignmovingavg_readvariableop_resource:@7
)assignmovingavg_1_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@/
!batchnorm_readvariableop_resource:@
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:@�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:���������@l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:@*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:@x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:@�
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:@*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:@~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:@�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������@h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:@v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������@b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:���������@�
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@: : : : 2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12"
AssignMovingAvgAssignMovingAvg24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
P
$__inference__update_step_xla_2549193
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
:@: *
	_noinline(:($
"
_user_specified_name
variable:H D

_output_shapes

:@
"
_user_specified_name
gradient"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
9
angles/
serving_default_angles:0���������
I
cluster_charge7
 serving_default_cluster_charge:0���������
U
pixel_projection_x?
$serving_default_pixel_projection_x:0���������B
concatenate_170
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer-0
layer-1
layer-2
layer-3
layer-4
layer_with_weights-0
layer-5
layer_with_weights-1
layer-6
layer-7
	layer-8

layer_with_weights-2

layer-9
layer_with_weights-3
layer-10
layer-11
layer-12
layer_with_weights-4
layer-13
layer_with_weights-5
layer-14
layer-15
layer_with_weights-6
layer-16
layer-17
layer_with_weights-7
layer-18
layer-19
layer-20
layer_with_weights-8
layer-21
layer_with_weights-9
layer-22
layer-23
layer-24
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
 _default_save_signature
!	optimizer
"
signatures"
_tf_keras_network
"
_tf_keras_input_layer
�
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses"
_tf_keras_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
�
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses"
_tf_keras_layer
�
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses

5kernel
6bias"
_tf_keras_layer
�
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses

=kernel
>bias"
_tf_keras_layer
�
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses"
_tf_keras_layer
�
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses"
_tf_keras_layer
�
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses

Qkernel
Rbias"
_tf_keras_layer
�
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses

Ykernel
Zbias"
_tf_keras_layer
�
[	variables
\trainable_variables
]regularization_losses
^	keras_api
___call__
*`&call_and_return_all_conditional_losses"
_tf_keras_layer
�
a	variables
btrainable_variables
cregularization_losses
d	keras_api
e__call__
*f&call_and_return_all_conditional_losses"
_tf_keras_layer
�
g	variables
htrainable_variables
iregularization_losses
j	keras_api
k__call__
*l&call_and_return_all_conditional_losses
maxis
	ngamma
obeta
pmoving_mean
qmoving_variance"
_tf_keras_layer
�
r	variables
strainable_variables
tregularization_losses
u	keras_api
v__call__
*w&call_and_return_all_conditional_losses
xaxis
	ygamma
zbeta
{moving_mean
|moving_variance"
_tf_keras_layer
�
}	variables
~trainable_variables
regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias"
_tf_keras_layer
)
�	keras_api"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
50
61
=2
>3
Q4
R5
Y6
Z7
n8
o9
p10
q11
y12
z13
{14
|15
�16
�17
�18
�19
�20
�21
�22
�23"
trackable_list_wrapper
�
50
61
=2
>3
Q4
R5
Y6
Z7
n8
o9
y10
z11
�12
�13
�14
�15
�16
�17
�18
�19"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
 _default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
)__inference_model_8_layer_call_fn_2548853
)__inference_model_8_layer_call_fn_2548908�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
D__inference_model_8_layer_call_and_return_conditional_losses_2548709
D__inference_model_8_layer_call_and_return_conditional_losses_2548798�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�B�
"__inference__wrapped_model_2548312pixel_projection_xanglescluster_charge"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�
_variables
�_iterations
�_learning_rate
�_index_dict
�
_momentums
�_velocities
�_update_step_xla"
experimentalOptimizer
-
�serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_flatten_8_layer_call_fn_2549213�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_flatten_8_layer_call_and_return_conditional_losses_2549219�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
0__inference_concatenate_16_layer_call_fn_2549226�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
K__inference_concatenate_16_layer_call_and_return_conditional_losses_2549234�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
50
61"
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_dense_68_layer_call_fn_2549243�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_dense_68_layer_call_and_return_conditional_losses_2549253�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
": 	�2dense_68/kernel
:�2dense_68/bias
.
=0
>1"
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_dense_64_layer_call_fn_2549262�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_dense_64_layer_call_and_return_conditional_losses_2549272�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
": 	�2dense_64/kernel
:�2dense_64/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
0__inference_leaky_re_lu_34_layer_call_fn_2549277�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
K__inference_leaky_re_lu_34_layer_call_and_return_conditional_losses_2549282�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
0__inference_leaky_re_lu_32_layer_call_fn_2549287�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
K__inference_leaky_re_lu_32_layer_call_and_return_conditional_losses_2549292�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
Q0
R1"
trackable_list_wrapper
.
Q0
R1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_dense_69_layer_call_fn_2549301�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_dense_69_layer_call_and_return_conditional_losses_2549311�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
": 	�@2dense_69/kernel
:@2dense_69/bias
.
Y0
Z1"
trackable_list_wrapper
.
Y0
Z1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_dense_65_layer_call_fn_2549320�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_dense_65_layer_call_and_return_conditional_losses_2549330�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
": 	�@2dense_65/kernel
:@2dense_65/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
0__inference_leaky_re_lu_35_layer_call_fn_2549335�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
K__inference_leaky_re_lu_35_layer_call_and_return_conditional_losses_2549340�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
0__inference_leaky_re_lu_33_layer_call_fn_2549345�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
K__inference_leaky_re_lu_33_layer_call_and_return_conditional_losses_2549350�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
<
n0
o1
p2
q3"
trackable_list_wrapper
.
n0
o1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
g	variables
htrainable_variables
iregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
8__inference_batch_normalization_17_layer_call_fn_2549363
8__inference_batch_normalization_17_layer_call_fn_2549376�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_2549410
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_2549430�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
*:(@2batch_normalization_17/gamma
):'@2batch_normalization_17/beta
2:0@ (2"batch_normalization_17/moving_mean
6:4@ (2&batch_normalization_17/moving_variance
<
y0
z1
{2
|3"
trackable_list_wrapper
.
y0
z1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
r	variables
strainable_variables
tregularization_losses
v__call__
*w&call_and_return_all_conditional_losses
&w"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
8__inference_batch_normalization_16_layer_call_fn_2549443
8__inference_batch_normalization_16_layer_call_fn_2549456�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_2549490
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_2549510�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
*:(@2batch_normalization_16/gamma
):'@2batch_normalization_16/beta
2:0@ (2"batch_normalization_16/moving_mean
6:4@ (2&batch_normalization_16/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
}	variables
~trainable_variables
regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
,__inference_dropout_17_layer_call_fn_2549515
,__inference_dropout_17_layer_call_fn_2549520�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
G__inference_dropout_17_layer_call_and_return_conditional_losses_2549532
G__inference_dropout_17_layer_call_and_return_conditional_losses_2549537�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_dense_70_layer_call_fn_2549546�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_dense_70_layer_call_and_return_conditional_losses_2549556�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
!:@2dense_70/kernel
:@2dense_70/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
,__inference_dropout_16_layer_call_fn_2549561
,__inference_dropout_16_layer_call_fn_2549566�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
G__inference_dropout_16_layer_call_and_return_conditional_losses_2549578
G__inference_dropout_16_layer_call_and_return_conditional_losses_2549583�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_dense_66_layer_call_fn_2549592�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_dense_66_layer_call_and_return_conditional_losses_2549602�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
!:@2dense_66/kernel
:@2dense_66/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_add_17_layer_call_fn_2549608�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
C__inference_add_17_layer_call_and_return_conditional_losses_2549614�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_add_16_layer_call_fn_2549620�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
C__inference_add_16_layer_call_and_return_conditional_losses_2549626�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_dense_71_layer_call_fn_2549635�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_dense_71_layer_call_and_return_conditional_losses_2549646�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
!:@2dense_71/kernel
:2dense_71/bias
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_dense_67_layer_call_fn_2549655�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_dense_67_layer_call_and_return_conditional_losses_2549665�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
!:@2dense_67/kernel
:2dense_67/bias
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
0__inference_concatenate_17_layer_call_fn_2549671�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
K__inference_concatenate_17_layer_call_and_return_conditional_losses_2549678�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
<
p0
q1
{2
|3"
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24"
trackable_list_wrapper
8
�0
�1
�2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_model_8_layer_call_fn_2548853pixel_projection_xanglescluster_charge"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
)__inference_model_8_layer_call_fn_2548908pixel_projection_xanglescluster_charge"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_model_8_layer_call_and_return_conditional_losses_2548709pixel_projection_xanglescluster_charge"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_model_8_layer_call_and_return_conditional_losses_2548798pixel_projection_xanglescluster_charge"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19"
trackable_list_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19"
trackable_list_wrapper
�
�trace_0
�trace_1
�trace_2
�trace_3
�trace_4
�trace_5
�trace_6
�trace_7
�trace_8
�trace_9
�trace_10
�trace_11
�trace_12
�trace_13
�trace_14
�trace_15
�trace_16
�trace_17
�trace_18
�trace_192�
$__inference__update_step_xla_2549113
$__inference__update_step_xla_2549118
$__inference__update_step_xla_2549123
$__inference__update_step_xla_2549128
$__inference__update_step_xla_2549133
$__inference__update_step_xla_2549138
$__inference__update_step_xla_2549143
$__inference__update_step_xla_2549148
$__inference__update_step_xla_2549153
$__inference__update_step_xla_2549158
$__inference__update_step_xla_2549163
$__inference__update_step_xla_2549168
$__inference__update_step_xla_2549173
$__inference__update_step_xla_2549178
$__inference__update_step_xla_2549183
$__inference__update_step_xla_2549188
$__inference__update_step_xla_2549193
$__inference__update_step_xla_2549198
$__inference__update_step_xla_2549203
$__inference__update_step_xla_2549208�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0z�trace_0z�trace_1z�trace_2z�trace_3z�trace_4z�trace_5z�trace_6z�trace_7z�trace_8z�trace_9z�trace_10z�trace_11z�trace_12z�trace_13z�trace_14z�trace_15z�trace_16z�trace_17z�trace_18z�trace_19
�B�
%__inference_signature_wrapper_2549108anglescluster_chargepixel_projection_x"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
+__inference_flatten_8_layer_call_fn_2549213inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_flatten_8_layer_call_and_return_conditional_losses_2549219inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
0__inference_concatenate_16_layer_call_fn_2549226inputs_0inputs_1inputs_2"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
K__inference_concatenate_16_layer_call_and_return_conditional_losses_2549234inputs_0inputs_1inputs_2"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_dense_68_layer_call_fn_2549243inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_dense_68_layer_call_and_return_conditional_losses_2549253inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_dense_64_layer_call_fn_2549262inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_dense_64_layer_call_and_return_conditional_losses_2549272inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
0__inference_leaky_re_lu_34_layer_call_fn_2549277inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
K__inference_leaky_re_lu_34_layer_call_and_return_conditional_losses_2549282inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
0__inference_leaky_re_lu_32_layer_call_fn_2549287inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
K__inference_leaky_re_lu_32_layer_call_and_return_conditional_losses_2549292inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_dense_69_layer_call_fn_2549301inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_dense_69_layer_call_and_return_conditional_losses_2549311inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_dense_65_layer_call_fn_2549320inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_dense_65_layer_call_and_return_conditional_losses_2549330inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
0__inference_leaky_re_lu_35_layer_call_fn_2549335inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
K__inference_leaky_re_lu_35_layer_call_and_return_conditional_losses_2549340inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
0__inference_leaky_re_lu_33_layer_call_fn_2549345inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
K__inference_leaky_re_lu_33_layer_call_and_return_conditional_losses_2549350inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
p0
q1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
8__inference_batch_normalization_17_layer_call_fn_2549363inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
8__inference_batch_normalization_17_layer_call_fn_2549376inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_2549410inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_2549430inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
{0
|1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
8__inference_batch_normalization_16_layer_call_fn_2549443inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
8__inference_batch_normalization_16_layer_call_fn_2549456inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_2549490inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_2549510inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_dropout_17_layer_call_fn_2549515inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
,__inference_dropout_17_layer_call_fn_2549520inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_dropout_17_layer_call_and_return_conditional_losses_2549532inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_dropout_17_layer_call_and_return_conditional_losses_2549537inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_dense_70_layer_call_fn_2549546inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_dense_70_layer_call_and_return_conditional_losses_2549556inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_dropout_16_layer_call_fn_2549561inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
,__inference_dropout_16_layer_call_fn_2549566inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_dropout_16_layer_call_and_return_conditional_losses_2549578inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_dropout_16_layer_call_and_return_conditional_losses_2549583inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_dense_66_layer_call_fn_2549592inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_dense_66_layer_call_and_return_conditional_losses_2549602inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_add_17_layer_call_fn_2549608inputs_0inputs_1"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_add_17_layer_call_and_return_conditional_losses_2549614inputs_0inputs_1"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_add_16_layer_call_fn_2549620inputs_0inputs_1"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_add_16_layer_call_and_return_conditional_losses_2549626inputs_0inputs_1"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_dense_71_layer_call_fn_2549635inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_dense_71_layer_call_and_return_conditional_losses_2549646inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_dense_67_layer_call_fn_2549655inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_dense_67_layer_call_and_return_conditional_losses_2549665inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
0__inference_concatenate_17_layer_call_fn_2549671inputs_0inputs_1"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
K__inference_concatenate_17_layer_call_and_return_conditional_losses_2549678inputs_0inputs_1"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
':%	�2Adam/m/dense_68/kernel
':%	�2Adam/v/dense_68/kernel
!:�2Adam/m/dense_68/bias
!:�2Adam/v/dense_68/bias
':%	�2Adam/m/dense_64/kernel
':%	�2Adam/v/dense_64/kernel
!:�2Adam/m/dense_64/bias
!:�2Adam/v/dense_64/bias
':%	�@2Adam/m/dense_69/kernel
':%	�@2Adam/v/dense_69/kernel
 :@2Adam/m/dense_69/bias
 :@2Adam/v/dense_69/bias
':%	�@2Adam/m/dense_65/kernel
':%	�@2Adam/v/dense_65/kernel
 :@2Adam/m/dense_65/bias
 :@2Adam/v/dense_65/bias
/:-@2#Adam/m/batch_normalization_17/gamma
/:-@2#Adam/v/batch_normalization_17/gamma
.:,@2"Adam/m/batch_normalization_17/beta
.:,@2"Adam/v/batch_normalization_17/beta
/:-@2#Adam/m/batch_normalization_16/gamma
/:-@2#Adam/v/batch_normalization_16/gamma
.:,@2"Adam/m/batch_normalization_16/beta
.:,@2"Adam/v/batch_normalization_16/beta
&:$@2Adam/m/dense_70/kernel
&:$@2Adam/v/dense_70/kernel
 :@2Adam/m/dense_70/bias
 :@2Adam/v/dense_70/bias
&:$@2Adam/m/dense_66/kernel
&:$@2Adam/v/dense_66/kernel
 :@2Adam/m/dense_66/bias
 :@2Adam/v/dense_66/bias
&:$@2Adam/m/dense_71/kernel
&:$@2Adam/v/dense_71/kernel
 :2Adam/m/dense_71/bias
 :2Adam/v/dense_71/bias
&:$@2Adam/m/dense_67/kernel
&:$@2Adam/v/dense_67/kernel
 :2Adam/m/dense_67/bias
 :2Adam/v/dense_67/bias
�B�
$__inference__update_step_xla_2549113gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
$__inference__update_step_xla_2549118gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
$__inference__update_step_xla_2549123gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
$__inference__update_step_xla_2549128gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
$__inference__update_step_xla_2549133gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
$__inference__update_step_xla_2549138gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
$__inference__update_step_xla_2549143gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
$__inference__update_step_xla_2549148gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
$__inference__update_step_xla_2549153gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
$__inference__update_step_xla_2549158gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
$__inference__update_step_xla_2549163gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
$__inference__update_step_xla_2549168gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
$__inference__update_step_xla_2549173gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
$__inference__update_step_xla_2549178gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
$__inference__update_step_xla_2549183gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
$__inference__update_step_xla_2549188gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
$__inference__update_step_xla_2549193gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
$__inference__update_step_xla_2549198gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
$__inference__update_step_xla_2549203gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
$__inference__update_step_xla_2549208gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper�
$__inference__update_step_xla_2549113pj�g
`�]
�
gradient	�
5�2	�
�	�
�
p
` VariableSpec 
`������?
� "
 �
$__inference__update_step_xla_2549118hb�_
X�U
�
gradient�
1�.	�
��
�
p
` VariableSpec 
`������?
� "
 �
$__inference__update_step_xla_2549123pj�g
`�]
�
gradient	�
5�2	�
�	�
�
p
` VariableSpec 
`������?
� "
 �
$__inference__update_step_xla_2549128hb�_
X�U
�
gradient�
1�.	�
��
�
p
` VariableSpec 
`������?
� "
 �
$__inference__update_step_xla_2549133pj�g
`�]
�
gradient	�@
5�2	�
�	�@
�
p
` VariableSpec 
`������?
� "
 �
$__inference__update_step_xla_2549138f`�]
V�S
�
gradient@
0�-	�
�@
�
p
` VariableSpec 
`������?
� "
 �
$__inference__update_step_xla_2549143pj�g
`�]
�
gradient	�@
5�2	�
�	�@
�
p
` VariableSpec 
`������?
� "
 �
$__inference__update_step_xla_2549148f`�]
V�S
�
gradient@
0�-	�
�@
�
p
` VariableSpec 
`�Ѥ���?
� "
 �
$__inference__update_step_xla_2549153f`�]
V�S
�
gradient@
0�-	�
�@
�
p
` VariableSpec 
`��菧�?
� "
 �
$__inference__update_step_xla_2549158f`�]
V�S
�
gradient@
0�-	�
�@
�
p
` VariableSpec 
`������?
� "
 �
$__inference__update_step_xla_2549163f`�]
V�S
�
gradient@
0�-	�
�@
�
p
` VariableSpec 
`ऴŸ�?
� "
 �
$__inference__update_step_xla_2549168f`�]
V�S
�
gradient@
0�-	�
�@
�
p
` VariableSpec 
`৴Ÿ�?
� "
 �
$__inference__update_step_xla_2549173nh�e
^�[
�
gradient@
4�1	�
�@
�
p
` VariableSpec 
`��艧�?
� "
 �
$__inference__update_step_xla_2549178f`�]
V�S
�
gradient@
0�-	�
�@
�
p
` VariableSpec 
`������?
� "
 �
$__inference__update_step_xla_2549183nh�e
^�[
�
gradient@
4�1	�
�@
�
p
` VariableSpec 
`ਞƶ�?
� "
 �
$__inference__update_step_xla_2549188f`�]
V�S
�
gradient@
0�-	�
�@
�
p
` VariableSpec 
`���ƶ�?
� "
 �
$__inference__update_step_xla_2549193nh�e
^�[
�
gradient@
4�1	�
�@
�
p
` VariableSpec 
`������?
� "
 �
$__inference__update_step_xla_2549198f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`���Ŷ�?
� "
 �
$__inference__update_step_xla_2549203nh�e
^�[
�
gradient@
4�1	�
�@
�
p
` VariableSpec 
`������?
� "
 �
$__inference__update_step_xla_2549208f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`��튧�?
� "
 �
"__inference__wrapped_model_2548312� 56=>QRYZqnpo��|y{z���������
���
��~
0�-
pixel_projection_x���������
 �
angles���������
(�%
cluster_charge���������
� "?�<
:
concatenate_17(�%
concatenate_17����������
C__inference_add_16_layer_call_and_return_conditional_losses_2549626�Z�W
P�M
K�H
"�
inputs_0���������@
"�
inputs_1���������@
� ",�)
"�
tensor_0���������@
� �
(__inference_add_16_layer_call_fn_2549620Z�W
P�M
K�H
"�
inputs_0���������@
"�
inputs_1���������@
� "!�
unknown���������@�
C__inference_add_17_layer_call_and_return_conditional_losses_2549614�Z�W
P�M
K�H
"�
inputs_0���������@
"�
inputs_1���������@
� ",�)
"�
tensor_0���������@
� �
(__inference_add_17_layer_call_fn_2549608Z�W
P�M
K�H
"�
inputs_0���������@
"�
inputs_1���������@
� "!�
unknown���������@�
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_2549490m{|yz7�4
-�*
 �
inputs���������@
p

 
� ",�)
"�
tensor_0���������@
� �
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_2549510m|y{z7�4
-�*
 �
inputs���������@
p 

 
� ",�)
"�
tensor_0���������@
� �
8__inference_batch_normalization_16_layer_call_fn_2549443b{|yz7�4
-�*
 �
inputs���������@
p

 
� "!�
unknown���������@�
8__inference_batch_normalization_16_layer_call_fn_2549456b|y{z7�4
-�*
 �
inputs���������@
p 

 
� "!�
unknown���������@�
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_2549410mpqno7�4
-�*
 �
inputs���������@
p

 
� ",�)
"�
tensor_0���������@
� �
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_2549430mqnpo7�4
-�*
 �
inputs���������@
p 

 
� ",�)
"�
tensor_0���������@
� �
8__inference_batch_normalization_17_layer_call_fn_2549363bpqno7�4
-�*
 �
inputs���������@
p

 
� "!�
unknown���������@�
8__inference_batch_normalization_17_layer_call_fn_2549376bqnpo7�4
-�*
 �
inputs���������@
p 

 
� "!�
unknown���������@�
K__inference_concatenate_16_layer_call_and_return_conditional_losses_2549234�~�{
t�q
o�l
"�
inputs_0���������
"�
inputs_1���������
"�
inputs_2���������
� ",�)
"�
tensor_0���������
� �
0__inference_concatenate_16_layer_call_fn_2549226�~�{
t�q
o�l
"�
inputs_0���������
"�
inputs_1���������
"�
inputs_2���������
� "!�
unknown����������
K__inference_concatenate_17_layer_call_and_return_conditional_losses_2549678�Z�W
P�M
K�H
"�
inputs_0���������
"�
inputs_1���������
� ",�)
"�
tensor_0���������
� �
0__inference_concatenate_17_layer_call_fn_2549671Z�W
P�M
K�H
"�
inputs_0���������
"�
inputs_1���������
� "!�
unknown����������
E__inference_dense_64_layer_call_and_return_conditional_losses_2549272d=>/�,
%�"
 �
inputs���������
� "-�*
#� 
tensor_0����������
� �
*__inference_dense_64_layer_call_fn_2549262Y=>/�,
%�"
 �
inputs���������
� ""�
unknown�����������
E__inference_dense_65_layer_call_and_return_conditional_losses_2549330dYZ0�-
&�#
!�
inputs����������
� ",�)
"�
tensor_0���������@
� �
*__inference_dense_65_layer_call_fn_2549320YYZ0�-
&�#
!�
inputs����������
� "!�
unknown���������@�
E__inference_dense_66_layer_call_and_return_conditional_losses_2549602e��/�,
%�"
 �
inputs���������
� ",�)
"�
tensor_0���������@
� �
*__inference_dense_66_layer_call_fn_2549592Z��/�,
%�"
 �
inputs���������
� "!�
unknown���������@�
E__inference_dense_67_layer_call_and_return_conditional_losses_2549665e��/�,
%�"
 �
inputs���������@
� ",�)
"�
tensor_0���������
� �
*__inference_dense_67_layer_call_fn_2549655Z��/�,
%�"
 �
inputs���������@
� "!�
unknown����������
E__inference_dense_68_layer_call_and_return_conditional_losses_2549253d56/�,
%�"
 �
inputs���������
� "-�*
#� 
tensor_0����������
� �
*__inference_dense_68_layer_call_fn_2549243Y56/�,
%�"
 �
inputs���������
� ""�
unknown�����������
E__inference_dense_69_layer_call_and_return_conditional_losses_2549311dQR0�-
&�#
!�
inputs����������
� ",�)
"�
tensor_0���������@
� �
*__inference_dense_69_layer_call_fn_2549301YQR0�-
&�#
!�
inputs����������
� "!�
unknown���������@�
E__inference_dense_70_layer_call_and_return_conditional_losses_2549556e��/�,
%�"
 �
inputs���������
� ",�)
"�
tensor_0���������@
� �
*__inference_dense_70_layer_call_fn_2549546Z��/�,
%�"
 �
inputs���������
� "!�
unknown���������@�
E__inference_dense_71_layer_call_and_return_conditional_losses_2549646e��/�,
%�"
 �
inputs���������@
� ",�)
"�
tensor_0���������
� �
*__inference_dense_71_layer_call_fn_2549635Z��/�,
%�"
 �
inputs���������@
� "!�
unknown����������
G__inference_dropout_16_layer_call_and_return_conditional_losses_2549578c3�0
)�&
 �
inputs���������@
p
� ",�)
"�
tensor_0���������@
� �
G__inference_dropout_16_layer_call_and_return_conditional_losses_2549583c3�0
)�&
 �
inputs���������@
p 
� ",�)
"�
tensor_0���������@
� �
,__inference_dropout_16_layer_call_fn_2549561X3�0
)�&
 �
inputs���������@
p
� "!�
unknown���������@�
,__inference_dropout_16_layer_call_fn_2549566X3�0
)�&
 �
inputs���������@
p 
� "!�
unknown���������@�
G__inference_dropout_17_layer_call_and_return_conditional_losses_2549532c3�0
)�&
 �
inputs���������@
p
� ",�)
"�
tensor_0���������@
� �
G__inference_dropout_17_layer_call_and_return_conditional_losses_2549537c3�0
)�&
 �
inputs���������@
p 
� ",�)
"�
tensor_0���������@
� �
,__inference_dropout_17_layer_call_fn_2549515X3�0
)�&
 �
inputs���������@
p
� "!�
unknown���������@�
,__inference_dropout_17_layer_call_fn_2549520X3�0
)�&
 �
inputs���������@
p 
� "!�
unknown���������@�
F__inference_flatten_8_layer_call_and_return_conditional_losses_2549219c3�0
)�&
$�!
inputs���������
� ",�)
"�
tensor_0���������
� �
+__inference_flatten_8_layer_call_fn_2549213X3�0
)�&
$�!
inputs���������
� "!�
unknown����������
K__inference_leaky_re_lu_32_layer_call_and_return_conditional_losses_2549292a0�-
&�#
!�
inputs����������
� "-�*
#� 
tensor_0����������
� �
0__inference_leaky_re_lu_32_layer_call_fn_2549287V0�-
&�#
!�
inputs����������
� ""�
unknown�����������
K__inference_leaky_re_lu_33_layer_call_and_return_conditional_losses_2549350_/�,
%�"
 �
inputs���������@
� ",�)
"�
tensor_0���������@
� �
0__inference_leaky_re_lu_33_layer_call_fn_2549345T/�,
%�"
 �
inputs���������@
� "!�
unknown���������@�
K__inference_leaky_re_lu_34_layer_call_and_return_conditional_losses_2549282a0�-
&�#
!�
inputs����������
� "-�*
#� 
tensor_0����������
� �
0__inference_leaky_re_lu_34_layer_call_fn_2549277V0�-
&�#
!�
inputs����������
� ""�
unknown�����������
K__inference_leaky_re_lu_35_layer_call_and_return_conditional_losses_2549340_/�,
%�"
 �
inputs���������@
� ",�)
"�
tensor_0���������@
� �
0__inference_leaky_re_lu_35_layer_call_fn_2549335T/�,
%�"
 �
inputs���������@
� "!�
unknown���������@�
D__inference_model_8_layer_call_and_return_conditional_losses_2548709� 56=>QRYZpqno��{|yz���������
���
��~
0�-
pixel_projection_x���������
 �
angles���������
(�%
cluster_charge���������
p

 
� ",�)
"�
tensor_0���������
� �
D__inference_model_8_layer_call_and_return_conditional_losses_2548798� 56=>QRYZqnpo��|y{z���������
���
��~
0�-
pixel_projection_x���������
 �
angles���������
(�%
cluster_charge���������
p 

 
� ",�)
"�
tensor_0���������
� �
)__inference_model_8_layer_call_fn_2548853� 56=>QRYZpqno��{|yz���������
���
��~
0�-
pixel_projection_x���������
 �
angles���������
(�%
cluster_charge���������
p

 
� "!�
unknown����������
)__inference_model_8_layer_call_fn_2548908� 56=>QRYZqnpo��|y{z���������
���
��~
0�-
pixel_projection_x���������
 �
angles���������
(�%
cluster_charge���������
p 

 
� "!�
unknown����������
%__inference_signature_wrapper_2549108� 56=>QRYZqnpo��|y{z���������
� 
���
*
angles �
angles���������
:
cluster_charge(�%
cluster_charge���������
F
pixel_projection_x0�-
pixel_projection_x���������"?�<
:
concatenate_17(�%
concatenate_17���������