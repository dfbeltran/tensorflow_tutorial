??

??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
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
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
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
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
?
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
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.6.02v2.6.0-rc2-32-g919f693420e8??	
?
conv_1_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
* 
shared_nameconv_1_1/kernel
{
#conv_1_1/kernel/Read/ReadVariableOpReadVariableOpconv_1_1/kernel*&
_output_shapes
:
*
dtype0
r
conv_1_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_nameconv_1_1/bias
k
!conv_1_1/bias/Read/ReadVariableOpReadVariableOpconv_1_1/bias*
_output_shapes
:
*
dtype0
?
conv_1_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:

* 
shared_nameconv_1_2/kernel
{
#conv_1_2/kernel/Read/ReadVariableOpReadVariableOpconv_1_2/kernel*&
_output_shapes
:

*
dtype0
r
conv_1_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_nameconv_1_2/bias
k
!conv_1_2/bias/Read/ReadVariableOpReadVariableOpconv_1_2/bias*
_output_shapes
:
*
dtype0
?
conv_2_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:

* 
shared_nameconv_2_1/kernel
{
#conv_2_1/kernel/Read/ReadVariableOpReadVariableOpconv_2_1/kernel*&
_output_shapes
:

*
dtype0
r
conv_2_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_nameconv_2_1/bias
k
!conv_2_1/bias/Read/ReadVariableOpReadVariableOpconv_2_1/bias*
_output_shapes
:
*
dtype0
?
conv_2_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:

* 
shared_nameconv_2_2/kernel
{
#conv_2_2/kernel/Read/ReadVariableOpReadVariableOpconv_2_2/kernel*&
_output_shapes
:

*
dtype0
r
conv_2_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_nameconv_2_2/bias
k
!conv_2_2/bias/Read/ReadVariableOpReadVariableOpconv_2_2/bias*
_output_shapes
:
*
dtype0
z
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??
*
shared_namedense_2/kernel
s
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel* 
_output_shapes
:
??
*
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:
*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
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
?
Adam/conv_1_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*'
shared_nameAdam/conv_1_1/kernel/m
?
*Adam/conv_1_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv_1_1/kernel/m*&
_output_shapes
:
*
dtype0
?
Adam/conv_1_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/conv_1_1/bias/m
y
(Adam/conv_1_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv_1_1/bias/m*
_output_shapes
:
*
dtype0
?
Adam/conv_1_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:

*'
shared_nameAdam/conv_1_2/kernel/m
?
*Adam/conv_1_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv_1_2/kernel/m*&
_output_shapes
:

*
dtype0
?
Adam/conv_1_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/conv_1_2/bias/m
y
(Adam/conv_1_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv_1_2/bias/m*
_output_shapes
:
*
dtype0
?
Adam/conv_2_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:

*'
shared_nameAdam/conv_2_1/kernel/m
?
*Adam/conv_2_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv_2_1/kernel/m*&
_output_shapes
:

*
dtype0
?
Adam/conv_2_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/conv_2_1/bias/m
y
(Adam/conv_2_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv_2_1/bias/m*
_output_shapes
:
*
dtype0
?
Adam/conv_2_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:

*'
shared_nameAdam/conv_2_2/kernel/m
?
*Adam/conv_2_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv_2_2/kernel/m*&
_output_shapes
:

*
dtype0
?
Adam/conv_2_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/conv_2_2/bias/m
y
(Adam/conv_2_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv_2_2/bias/m*
_output_shapes
:
*
dtype0
?
Adam/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??
*&
shared_nameAdam/dense_2/kernel/m
?
)Adam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/m* 
_output_shapes
:
??
*
dtype0
~
Adam/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_2/bias/m
w
'Adam/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/m*
_output_shapes
:
*
dtype0
?
Adam/conv_1_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*'
shared_nameAdam/conv_1_1/kernel/v
?
*Adam/conv_1_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv_1_1/kernel/v*&
_output_shapes
:
*
dtype0
?
Adam/conv_1_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/conv_1_1/bias/v
y
(Adam/conv_1_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv_1_1/bias/v*
_output_shapes
:
*
dtype0
?
Adam/conv_1_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:

*'
shared_nameAdam/conv_1_2/kernel/v
?
*Adam/conv_1_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv_1_2/kernel/v*&
_output_shapes
:

*
dtype0
?
Adam/conv_1_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/conv_1_2/bias/v
y
(Adam/conv_1_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv_1_2/bias/v*
_output_shapes
:
*
dtype0
?
Adam/conv_2_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:

*'
shared_nameAdam/conv_2_1/kernel/v
?
*Adam/conv_2_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv_2_1/kernel/v*&
_output_shapes
:

*
dtype0
?
Adam/conv_2_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/conv_2_1/bias/v
y
(Adam/conv_2_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv_2_1/bias/v*
_output_shapes
:
*
dtype0
?
Adam/conv_2_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:

*'
shared_nameAdam/conv_2_2/kernel/v
?
*Adam/conv_2_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv_2_2/kernel/v*&
_output_shapes
:

*
dtype0
?
Adam/conv_2_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/conv_2_2/bias/v
y
(Adam/conv_2_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv_2_2/bias/v*
_output_shapes
:
*
dtype0
?
Adam/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??
*&
shared_nameAdam/dense_2/kernel/v
?
)Adam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/v* 
_output_shapes
:
??
*
dtype0
~
Adam/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_2/bias/v
w
'Adam/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/v*
_output_shapes
:
*
dtype0

NoOpNoOp
?G
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?F
value?FB?F B?F
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
	layer-8

layer-9
layer-10
layer_with_weights-4
layer-11
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
 trainable_variables
!regularization_losses
"	keras_api
R
#	variables
$trainable_variables
%regularization_losses
&	keras_api
R
'	variables
(trainable_variables
)regularization_losses
*	keras_api
h

+kernel
,bias
-	variables
.trainable_variables
/regularization_losses
0	keras_api
R
1	variables
2trainable_variables
3regularization_losses
4	keras_api
h

5kernel
6bias
7	variables
8trainable_variables
9regularization_losses
:	keras_api
R
;	variables
<trainable_variables
=regularization_losses
>	keras_api
R
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
R
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
h

Gkernel
Hbias
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
?
Miter

Nbeta_1

Obeta_2
	Pdecay
Qlearning_ratem?m?m?m?+m?,m?5m?6m?Gm?Hm?v?v?v?v?+v?,v?5v?6v?Gv?Hv?
F
0
1
2
3
+4
,5
56
67
G8
H9
F
0
1
2
3
+4
,5
56
67
G8
H9
 
?
Rlayer_regularization_losses
	variables
trainable_variables
regularization_losses
Smetrics
Tnon_trainable_variables
Ulayer_metrics

Vlayers
 
[Y
VARIABLE_VALUEconv_1_1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv_1_1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
Wnon_trainable_variables
	variables
trainable_variables
regularization_losses
Xmetrics
Ylayer_regularization_losses
Zlayer_metrics

[layers
 
 
 
?
\non_trainable_variables
	variables
trainable_variables
regularization_losses
]metrics
^layer_regularization_losses
_layer_metrics

`layers
[Y
VARIABLE_VALUEconv_1_2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv_1_2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
anon_trainable_variables
	variables
 trainable_variables
!regularization_losses
bmetrics
clayer_regularization_losses
dlayer_metrics

elayers
 
 
 
?
fnon_trainable_variables
#	variables
$trainable_variables
%regularization_losses
gmetrics
hlayer_regularization_losses
ilayer_metrics

jlayers
 
 
 
?
knon_trainable_variables
'	variables
(trainable_variables
)regularization_losses
lmetrics
mlayer_regularization_losses
nlayer_metrics

olayers
[Y
VARIABLE_VALUEconv_2_1/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv_2_1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

+0
,1

+0
,1
 
?
pnon_trainable_variables
-	variables
.trainable_variables
/regularization_losses
qmetrics
rlayer_regularization_losses
slayer_metrics

tlayers
 
 
 
?
unon_trainable_variables
1	variables
2trainable_variables
3regularization_losses
vmetrics
wlayer_regularization_losses
xlayer_metrics

ylayers
[Y
VARIABLE_VALUEconv_2_2/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv_2_2/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

50
61

50
61
 
?
znon_trainable_variables
7	variables
8trainable_variables
9regularization_losses
{metrics
|layer_regularization_losses
}layer_metrics

~layers
 
 
 
?
non_trainable_variables
;	variables
<trainable_variables
=regularization_losses
?metrics
 ?layer_regularization_losses
?layer_metrics
?layers
 
 
 
?
?non_trainable_variables
?	variables
@trainable_variables
Aregularization_losses
?metrics
 ?layer_regularization_losses
?layer_metrics
?layers
 
 
 
?
?non_trainable_variables
C	variables
Dtrainable_variables
Eregularization_losses
?metrics
 ?layer_regularization_losses
?layer_metrics
?layers
ZX
VARIABLE_VALUEdense_2/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_2/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

G0
H1

G0
H1
 
?
?non_trainable_variables
I	variables
Jtrainable_variables
Kregularization_losses
?metrics
 ?layer_regularization_losses
?layer_metrics
?layers
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1
 
 
V
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
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
~|
VARIABLE_VALUEAdam/conv_1_1/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv_1_1/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv_1_2/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv_1_2/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv_2_1/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv_2_1/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv_2_2/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv_2_2/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_2/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_2/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv_1_1/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv_1_1/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv_1_2/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv_1_2/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv_2_1/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv_2_1/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv_2_2/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv_2_2/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_2/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_2/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_conv_1_1_inputPlaceholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv_1_1_inputconv_1_1/kernelconv_1_1/biasconv_1_2/kernelconv_1_2/biasconv_2_1/kernelconv_2_1/biasconv_2_2/kernelconv_2_2/biasdense_2/kerneldense_2/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference_signature_wrapper_20223
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv_1_1/kernel/Read/ReadVariableOp!conv_1_1/bias/Read/ReadVariableOp#conv_1_2/kernel/Read/ReadVariableOp!conv_1_2/bias/Read/ReadVariableOp#conv_2_1/kernel/Read/ReadVariableOp!conv_2_1/bias/Read/ReadVariableOp#conv_2_2/kernel/Read/ReadVariableOp!conv_2_2/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adam/conv_1_1/kernel/m/Read/ReadVariableOp(Adam/conv_1_1/bias/m/Read/ReadVariableOp*Adam/conv_1_2/kernel/m/Read/ReadVariableOp(Adam/conv_1_2/bias/m/Read/ReadVariableOp*Adam/conv_2_1/kernel/m/Read/ReadVariableOp(Adam/conv_2_1/bias/m/Read/ReadVariableOp*Adam/conv_2_2/kernel/m/Read/ReadVariableOp(Adam/conv_2_2/bias/m/Read/ReadVariableOp)Adam/dense_2/kernel/m/Read/ReadVariableOp'Adam/dense_2/bias/m/Read/ReadVariableOp*Adam/conv_1_1/kernel/v/Read/ReadVariableOp(Adam/conv_1_1/bias/v/Read/ReadVariableOp*Adam/conv_1_2/kernel/v/Read/ReadVariableOp(Adam/conv_1_2/bias/v/Read/ReadVariableOp*Adam/conv_2_1/kernel/v/Read/ReadVariableOp(Adam/conv_2_1/bias/v/Read/ReadVariableOp*Adam/conv_2_2/kernel/v/Read/ReadVariableOp(Adam/conv_2_2/bias/v/Read/ReadVariableOp)Adam/dense_2/kernel/v/Read/ReadVariableOp'Adam/dense_2/bias/v/Read/ReadVariableOpConst*4
Tin-
+2)	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *'
f"R 
__inference__traced_save_20686
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv_1_1/kernelconv_1_1/biasconv_1_2/kernelconv_1_2/biasconv_2_1/kernelconv_2_1/biasconv_2_2/kernelconv_2_2/biasdense_2/kerneldense_2/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv_1_1/kernel/mAdam/conv_1_1/bias/mAdam/conv_1_2/kernel/mAdam/conv_1_2/bias/mAdam/conv_2_1/kernel/mAdam/conv_2_1/bias/mAdam/conv_2_2/kernel/mAdam/conv_2_2/bias/mAdam/dense_2/kernel/mAdam/dense_2/bias/mAdam/conv_1_1/kernel/vAdam/conv_1_1/bias/vAdam/conv_1_2/kernel/vAdam/conv_1_2/bias/vAdam/conv_2_1/kernel/vAdam/conv_2_1/bias/vAdam/conv_2_2/kernel/vAdam/conv_2_2/bias/vAdam/dense_2/kernel/vAdam/dense_2/bias/v*3
Tin,
*2(*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__traced_restore_20813??
?
_
C__inference_relu_2_2_layer_call_and_return_conditional_losses_19860

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:?????????jj
2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????jj
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????jj
:W S
/
_output_shapes
:?????????jj

 
_user_specified_nameinputs
?2
?
G__inference_sequential_2_layer_call_and_return_conditional_losses_19894

inputs(
conv_1_1_19775:

conv_1_1_19777:
(
conv_1_2_19798:


conv_1_2_19800:
(
conv_2_1_19827:


conv_2_1_19829:
(
conv_2_2_19850:


conv_2_2_19852:
!
dense_2_19888:
??

dense_2_19890:

identity?? conv_1_1/StatefulPartitionedCall? conv_1_2/StatefulPartitionedCall? conv_2_1/StatefulPartitionedCall? conv_2_2/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?
 conv_1_1/StatefulPartitionedCallStatefulPartitionedCallinputsconv_1_1_19775conv_1_1_19777*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv_1_1_layer_call_and_return_conditional_losses_197742"
 conv_1_1/StatefulPartitionedCall?
relu_1_1/PartitionedCallPartitionedCall)conv_1_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_relu_1_1_layer_call_and_return_conditional_losses_197852
relu_1_1/PartitionedCall?
 conv_1_2/StatefulPartitionedCallStatefulPartitionedCall!relu_1_1/PartitionedCall:output:0conv_1_2_19798conv_1_2_19800*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv_1_2_layer_call_and_return_conditional_losses_197972"
 conv_1_2/StatefulPartitionedCall?
relu_1_2/PartitionedCallPartitionedCall)conv_1_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_relu_1_2_layer_call_and_return_conditional_losses_198082
relu_1_2/PartitionedCall?
max_pool_1/PartitionedCallPartitionedCall!relu_1_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????nn
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_max_pool_1_layer_call_and_return_conditional_losses_198142
max_pool_1/PartitionedCall?
 conv_2_1/StatefulPartitionedCallStatefulPartitionedCall#max_pool_1/PartitionedCall:output:0conv_2_1_19827conv_2_1_19829*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????ll
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv_2_1_layer_call_and_return_conditional_losses_198262"
 conv_2_1/StatefulPartitionedCall?
relu_2_1/PartitionedCallPartitionedCall)conv_2_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????ll
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_relu_2_1_layer_call_and_return_conditional_losses_198372
relu_2_1/PartitionedCall?
 conv_2_2/StatefulPartitionedCallStatefulPartitionedCall!relu_2_1/PartitionedCall:output:0conv_2_2_19850conv_2_2_19852*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????jj
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv_2_2_layer_call_and_return_conditional_losses_198492"
 conv_2_2/StatefulPartitionedCall?
relu_2_2/PartitionedCallPartitionedCall)conv_2_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????jj
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_relu_2_2_layer_call_and_return_conditional_losses_198602
relu_2_2/PartitionedCall?
max_pool_2/PartitionedCallPartitionedCall!relu_2_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????55
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_max_pool_2_layer_call_and_return_conditional_losses_198662
max_pool_2/PartitionedCall?
flatten_2/PartitionedCallPartitionedCall#max_pool_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_198742
flatten_2/PartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_2_19888dense_2_19890*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_198872!
dense_2/StatefulPartitionedCall?
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity?
NoOpNoOp!^conv_1_1/StatefulPartitionedCall!^conv_1_2/StatefulPartitionedCall!^conv_2_1/StatefulPartitionedCall!^conv_2_2/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 2D
 conv_1_1/StatefulPartitionedCall conv_1_1/StatefulPartitionedCall2D
 conv_1_2/StatefulPartitionedCall conv_1_2/StatefulPartitionedCall2D
 conv_2_1/StatefulPartitionedCall conv_2_1/StatefulPartitionedCall2D
 conv_2_2/StatefulPartitionedCall conv_2_2/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
a
E__inference_max_pool_1_layer_call_and_return_conditional_losses_20427

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????nn
*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????nn
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????
:Y U
1
_output_shapes
:???????????

 
_user_specified_nameinputs
?
?
'__inference_dense_2_layer_call_fn_20546

inputs
unknown:
??

	unknown_0:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_198872
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?

?
#__inference_signature_wrapper_20223
conv_1_1_input!
unknown:

	unknown_0:
#
	unknown_1:


	unknown_2:
#
	unknown_3:


	unknown_4:
#
	unknown_5:


	unknown_6:

	unknown_7:
??

	unknown_8:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv_1_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference__wrapped_model_197132
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
1
_output_shapes
:???????????
(
_user_specified_nameconv_1_1_input
?9
?
G__inference_sequential_2_layer_call_and_return_conditional_losses_20266

inputsA
'conv_1_1_conv2d_readvariableop_resource:
6
(conv_1_1_biasadd_readvariableop_resource:
A
'conv_1_2_conv2d_readvariableop_resource:

6
(conv_1_2_biasadd_readvariableop_resource:
A
'conv_2_1_conv2d_readvariableop_resource:

6
(conv_2_1_biasadd_readvariableop_resource:
A
'conv_2_2_conv2d_readvariableop_resource:

6
(conv_2_2_biasadd_readvariableop_resource:
:
&dense_2_matmul_readvariableop_resource:
??
5
'dense_2_biasadd_readvariableop_resource:

identity??conv_1_1/BiasAdd/ReadVariableOp?conv_1_1/Conv2D/ReadVariableOp?conv_1_2/BiasAdd/ReadVariableOp?conv_1_2/Conv2D/ReadVariableOp?conv_2_1/BiasAdd/ReadVariableOp?conv_2_1/Conv2D/ReadVariableOp?conv_2_2/BiasAdd/ReadVariableOp?conv_2_2/Conv2D/ReadVariableOp?dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?
conv_1_1/Conv2D/ReadVariableOpReadVariableOp'conv_1_1_conv2d_readvariableop_resource*&
_output_shapes
:
*
dtype02 
conv_1_1/Conv2D/ReadVariableOp?
conv_1_1/Conv2DConv2Dinputs&conv_1_1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????
*
paddingVALID*
strides
2
conv_1_1/Conv2D?
conv_1_1/BiasAdd/ReadVariableOpReadVariableOp(conv_1_1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02!
conv_1_1/BiasAdd/ReadVariableOp?
conv_1_1/BiasAddBiasAddconv_1_1/Conv2D:output:0'conv_1_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????
2
conv_1_1/BiasAdd}
relu_1_1/ReluReluconv_1_1/BiasAdd:output:0*
T0*1
_output_shapes
:???????????
2
relu_1_1/Relu?
conv_1_2/Conv2D/ReadVariableOpReadVariableOp'conv_1_2_conv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02 
conv_1_2/Conv2D/ReadVariableOp?
conv_1_2/Conv2DConv2Drelu_1_1/Relu:activations:0&conv_1_2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????
*
paddingVALID*
strides
2
conv_1_2/Conv2D?
conv_1_2/BiasAdd/ReadVariableOpReadVariableOp(conv_1_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02!
conv_1_2/BiasAdd/ReadVariableOp?
conv_1_2/BiasAddBiasAddconv_1_2/Conv2D:output:0'conv_1_2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????
2
conv_1_2/BiasAdd}
relu_1_2/ReluReluconv_1_2/BiasAdd:output:0*
T0*1
_output_shapes
:???????????
2
relu_1_2/Relu?
max_pool_1/MaxPoolMaxPoolrelu_1_2/Relu:activations:0*/
_output_shapes
:?????????nn
*
ksize
*
paddingVALID*
strides
2
max_pool_1/MaxPool?
conv_2_1/Conv2D/ReadVariableOpReadVariableOp'conv_2_1_conv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02 
conv_2_1/Conv2D/ReadVariableOp?
conv_2_1/Conv2DConv2Dmax_pool_1/MaxPool:output:0&conv_2_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????ll
*
paddingVALID*
strides
2
conv_2_1/Conv2D?
conv_2_1/BiasAdd/ReadVariableOpReadVariableOp(conv_2_1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02!
conv_2_1/BiasAdd/ReadVariableOp?
conv_2_1/BiasAddBiasAddconv_2_1/Conv2D:output:0'conv_2_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????ll
2
conv_2_1/BiasAdd{
relu_2_1/ReluReluconv_2_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????ll
2
relu_2_1/Relu?
conv_2_2/Conv2D/ReadVariableOpReadVariableOp'conv_2_2_conv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02 
conv_2_2/Conv2D/ReadVariableOp?
conv_2_2/Conv2DConv2Drelu_2_1/Relu:activations:0&conv_2_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????jj
*
paddingVALID*
strides
2
conv_2_2/Conv2D?
conv_2_2/BiasAdd/ReadVariableOpReadVariableOp(conv_2_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02!
conv_2_2/BiasAdd/ReadVariableOp?
conv_2_2/BiasAddBiasAddconv_2_2/Conv2D:output:0'conv_2_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????jj
2
conv_2_2/BiasAdd{
relu_2_2/ReluReluconv_2_2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????jj
2
relu_2_2/Relu?
max_pool_2/MaxPoolMaxPoolrelu_2_2/Relu:activations:0*/
_output_shapes
:?????????55
*
ksize
*
paddingVALID*
strides
2
max_pool_2/MaxPools
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????m  2
flatten_2/Const?
flatten_2/ReshapeReshapemax_pool_2/MaxPool:output:0flatten_2/Const:output:0*
T0*)
_output_shapes
:???????????2
flatten_2/Reshape?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource* 
_output_shapes
:
??
*
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMulflatten_2/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_2/BiasAddy
dense_2/SoftmaxSoftmaxdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
dense_2/Softmaxt
IdentityIdentitydense_2/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity?
NoOpNoOp ^conv_1_1/BiasAdd/ReadVariableOp^conv_1_1/Conv2D/ReadVariableOp ^conv_1_2/BiasAdd/ReadVariableOp^conv_1_2/Conv2D/ReadVariableOp ^conv_2_1/BiasAdd/ReadVariableOp^conv_2_1/Conv2D/ReadVariableOp ^conv_2_2/BiasAdd/ReadVariableOp^conv_2_2/Conv2D/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 2B
conv_1_1/BiasAdd/ReadVariableOpconv_1_1/BiasAdd/ReadVariableOp2@
conv_1_1/Conv2D/ReadVariableOpconv_1_1/Conv2D/ReadVariableOp2B
conv_1_2/BiasAdd/ReadVariableOpconv_1_2/BiasAdd/ReadVariableOp2@
conv_1_2/Conv2D/ReadVariableOpconv_1_2/Conv2D/ReadVariableOp2B
conv_2_1/BiasAdd/ReadVariableOpconv_2_1/BiasAdd/ReadVariableOp2@
conv_2_1/Conv2D/ReadVariableOpconv_2_1/Conv2D/ReadVariableOp2B
conv_2_2/BiasAdd/ReadVariableOpconv_2_2/BiasAdd/ReadVariableOp2@
conv_2_2/Conv2D/ReadVariableOpconv_2_2/Conv2D/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?2
?
G__inference_sequential_2_layer_call_and_return_conditional_losses_20154
conv_1_1_input(
conv_1_1_20121:

conv_1_1_20123:
(
conv_1_2_20127:


conv_1_2_20129:
(
conv_2_1_20134:


conv_2_1_20136:
(
conv_2_2_20140:


conv_2_2_20142:
!
dense_2_20148:
??

dense_2_20150:

identity?? conv_1_1/StatefulPartitionedCall? conv_1_2/StatefulPartitionedCall? conv_2_1/StatefulPartitionedCall? conv_2_2/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?
 conv_1_1/StatefulPartitionedCallStatefulPartitionedCallconv_1_1_inputconv_1_1_20121conv_1_1_20123*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv_1_1_layer_call_and_return_conditional_losses_197742"
 conv_1_1/StatefulPartitionedCall?
relu_1_1/PartitionedCallPartitionedCall)conv_1_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_relu_1_1_layer_call_and_return_conditional_losses_197852
relu_1_1/PartitionedCall?
 conv_1_2/StatefulPartitionedCallStatefulPartitionedCall!relu_1_1/PartitionedCall:output:0conv_1_2_20127conv_1_2_20129*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv_1_2_layer_call_and_return_conditional_losses_197972"
 conv_1_2/StatefulPartitionedCall?
relu_1_2/PartitionedCallPartitionedCall)conv_1_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_relu_1_2_layer_call_and_return_conditional_losses_198082
relu_1_2/PartitionedCall?
max_pool_1/PartitionedCallPartitionedCall!relu_1_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????nn
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_max_pool_1_layer_call_and_return_conditional_losses_198142
max_pool_1/PartitionedCall?
 conv_2_1/StatefulPartitionedCallStatefulPartitionedCall#max_pool_1/PartitionedCall:output:0conv_2_1_20134conv_2_1_20136*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????ll
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv_2_1_layer_call_and_return_conditional_losses_198262"
 conv_2_1/StatefulPartitionedCall?
relu_2_1/PartitionedCallPartitionedCall)conv_2_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????ll
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_relu_2_1_layer_call_and_return_conditional_losses_198372
relu_2_1/PartitionedCall?
 conv_2_2/StatefulPartitionedCallStatefulPartitionedCall!relu_2_1/PartitionedCall:output:0conv_2_2_20140conv_2_2_20142*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????jj
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv_2_2_layer_call_and_return_conditional_losses_198492"
 conv_2_2/StatefulPartitionedCall?
relu_2_2/PartitionedCallPartitionedCall)conv_2_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????jj
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_relu_2_2_layer_call_and_return_conditional_losses_198602
relu_2_2/PartitionedCall?
max_pool_2/PartitionedCallPartitionedCall!relu_2_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????55
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_max_pool_2_layer_call_and_return_conditional_losses_198662
max_pool_2/PartitionedCall?
flatten_2/PartitionedCallPartitionedCall#max_pool_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_198742
flatten_2/PartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_2_20148dense_2_20150*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_198872!
dense_2/StatefulPartitionedCall?
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity?
NoOpNoOp!^conv_1_1/StatefulPartitionedCall!^conv_1_2/StatefulPartitionedCall!^conv_2_1/StatefulPartitionedCall!^conv_2_2/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 2D
 conv_1_1/StatefulPartitionedCall conv_1_1/StatefulPartitionedCall2D
 conv_1_2/StatefulPartitionedCall conv_1_2/StatefulPartitionedCall2D
 conv_2_1/StatefulPartitionedCall conv_2_1/StatefulPartitionedCall2D
 conv_2_2/StatefulPartitionedCall conv_2_2/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:a ]
1
_output_shapes
:???????????
(
_user_specified_nameconv_1_1_input
?
?
C__inference_conv_2_1_layer_call_and_return_conditional_losses_20447

inputs8
conv2d_readvariableop_resource:

-
biasadd_readvariableop_resource:

identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????ll
*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????ll
2	
BiasAdds
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????ll
2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????nn
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????nn

 
_user_specified_nameinputs
?
?
C__inference_conv_1_1_layer_call_and_return_conditional_losses_20369

inputs8
conv2d_readvariableop_resource:
-
biasadd_readvariableop_resource:

identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:
*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????
*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????
2	
BiasAddu
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:???????????
2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?9
?
G__inference_sequential_2_layer_call_and_return_conditional_losses_20309

inputsA
'conv_1_1_conv2d_readvariableop_resource:
6
(conv_1_1_biasadd_readvariableop_resource:
A
'conv_1_2_conv2d_readvariableop_resource:

6
(conv_1_2_biasadd_readvariableop_resource:
A
'conv_2_1_conv2d_readvariableop_resource:

6
(conv_2_1_biasadd_readvariableop_resource:
A
'conv_2_2_conv2d_readvariableop_resource:

6
(conv_2_2_biasadd_readvariableop_resource:
:
&dense_2_matmul_readvariableop_resource:
??
5
'dense_2_biasadd_readvariableop_resource:

identity??conv_1_1/BiasAdd/ReadVariableOp?conv_1_1/Conv2D/ReadVariableOp?conv_1_2/BiasAdd/ReadVariableOp?conv_1_2/Conv2D/ReadVariableOp?conv_2_1/BiasAdd/ReadVariableOp?conv_2_1/Conv2D/ReadVariableOp?conv_2_2/BiasAdd/ReadVariableOp?conv_2_2/Conv2D/ReadVariableOp?dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?
conv_1_1/Conv2D/ReadVariableOpReadVariableOp'conv_1_1_conv2d_readvariableop_resource*&
_output_shapes
:
*
dtype02 
conv_1_1/Conv2D/ReadVariableOp?
conv_1_1/Conv2DConv2Dinputs&conv_1_1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????
*
paddingVALID*
strides
2
conv_1_1/Conv2D?
conv_1_1/BiasAdd/ReadVariableOpReadVariableOp(conv_1_1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02!
conv_1_1/BiasAdd/ReadVariableOp?
conv_1_1/BiasAddBiasAddconv_1_1/Conv2D:output:0'conv_1_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????
2
conv_1_1/BiasAdd}
relu_1_1/ReluReluconv_1_1/BiasAdd:output:0*
T0*1
_output_shapes
:???????????
2
relu_1_1/Relu?
conv_1_2/Conv2D/ReadVariableOpReadVariableOp'conv_1_2_conv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02 
conv_1_2/Conv2D/ReadVariableOp?
conv_1_2/Conv2DConv2Drelu_1_1/Relu:activations:0&conv_1_2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????
*
paddingVALID*
strides
2
conv_1_2/Conv2D?
conv_1_2/BiasAdd/ReadVariableOpReadVariableOp(conv_1_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02!
conv_1_2/BiasAdd/ReadVariableOp?
conv_1_2/BiasAddBiasAddconv_1_2/Conv2D:output:0'conv_1_2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????
2
conv_1_2/BiasAdd}
relu_1_2/ReluReluconv_1_2/BiasAdd:output:0*
T0*1
_output_shapes
:???????????
2
relu_1_2/Relu?
max_pool_1/MaxPoolMaxPoolrelu_1_2/Relu:activations:0*/
_output_shapes
:?????????nn
*
ksize
*
paddingVALID*
strides
2
max_pool_1/MaxPool?
conv_2_1/Conv2D/ReadVariableOpReadVariableOp'conv_2_1_conv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02 
conv_2_1/Conv2D/ReadVariableOp?
conv_2_1/Conv2DConv2Dmax_pool_1/MaxPool:output:0&conv_2_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????ll
*
paddingVALID*
strides
2
conv_2_1/Conv2D?
conv_2_1/BiasAdd/ReadVariableOpReadVariableOp(conv_2_1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02!
conv_2_1/BiasAdd/ReadVariableOp?
conv_2_1/BiasAddBiasAddconv_2_1/Conv2D:output:0'conv_2_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????ll
2
conv_2_1/BiasAdd{
relu_2_1/ReluReluconv_2_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????ll
2
relu_2_1/Relu?
conv_2_2/Conv2D/ReadVariableOpReadVariableOp'conv_2_2_conv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02 
conv_2_2/Conv2D/ReadVariableOp?
conv_2_2/Conv2DConv2Drelu_2_1/Relu:activations:0&conv_2_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????jj
*
paddingVALID*
strides
2
conv_2_2/Conv2D?
conv_2_2/BiasAdd/ReadVariableOpReadVariableOp(conv_2_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02!
conv_2_2/BiasAdd/ReadVariableOp?
conv_2_2/BiasAddBiasAddconv_2_2/Conv2D:output:0'conv_2_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????jj
2
conv_2_2/BiasAdd{
relu_2_2/ReluReluconv_2_2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????jj
2
relu_2_2/Relu?
max_pool_2/MaxPoolMaxPoolrelu_2_2/Relu:activations:0*/
_output_shapes
:?????????55
*
ksize
*
paddingVALID*
strides
2
max_pool_2/MaxPools
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????m  2
flatten_2/Const?
flatten_2/ReshapeReshapemax_pool_2/MaxPool:output:0flatten_2/Const:output:0*
T0*)
_output_shapes
:???????????2
flatten_2/Reshape?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource* 
_output_shapes
:
??
*
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMulflatten_2/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_2/BiasAddy
dense_2/SoftmaxSoftmaxdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
dense_2/Softmaxt
IdentityIdentitydense_2/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity?
NoOpNoOp ^conv_1_1/BiasAdd/ReadVariableOp^conv_1_1/Conv2D/ReadVariableOp ^conv_1_2/BiasAdd/ReadVariableOp^conv_1_2/Conv2D/ReadVariableOp ^conv_2_1/BiasAdd/ReadVariableOp^conv_2_1/Conv2D/ReadVariableOp ^conv_2_2/BiasAdd/ReadVariableOp^conv_2_2/Conv2D/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 2B
conv_1_1/BiasAdd/ReadVariableOpconv_1_1/BiasAdd/ReadVariableOp2@
conv_1_1/Conv2D/ReadVariableOpconv_1_1/Conv2D/ReadVariableOp2B
conv_1_2/BiasAdd/ReadVariableOpconv_1_2/BiasAdd/ReadVariableOp2@
conv_1_2/Conv2D/ReadVariableOpconv_1_2/Conv2D/ReadVariableOp2B
conv_2_1/BiasAdd/ReadVariableOpconv_2_1/BiasAdd/ReadVariableOp2@
conv_2_1/Conv2D/ReadVariableOpconv_2_1/Conv2D/ReadVariableOp2B
conv_2_2/BiasAdd/ReadVariableOpconv_2_2/BiasAdd/ReadVariableOp2@
conv_2_2/Conv2D/ReadVariableOpconv_2_2/Conv2D/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
a
E__inference_max_pool_1_layer_call_and_return_conditional_losses_19814

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????nn
*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????nn
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????
:Y U
1
_output_shapes
:???????????

 
_user_specified_nameinputs
?
?
C__inference_conv_1_2_layer_call_and_return_conditional_losses_20398

inputs8
conv2d_readvariableop_resource:

-
biasadd_readvariableop_resource:

identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????
*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????
2	
BiasAddu
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:???????????
2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????

 
_user_specified_nameinputs
?
a
E__inference_max_pool_2_layer_call_and_return_conditional_losses_19866

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????55
*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????55
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????jj
:W S
/
_output_shapes
:?????????jj

 
_user_specified_nameinputs
?
`
D__inference_flatten_2_layer_call_and_return_conditional_losses_19874

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????m  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:???????????2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????55
:W S
/
_output_shapes
:?????????55

 
_user_specified_nameinputs
?T
?
__inference__traced_save_20686
file_prefix.
*savev2_conv_1_1_kernel_read_readvariableop,
(savev2_conv_1_1_bias_read_readvariableop.
*savev2_conv_1_2_kernel_read_readvariableop,
(savev2_conv_1_2_bias_read_readvariableop.
*savev2_conv_2_1_kernel_read_readvariableop,
(savev2_conv_2_1_bias_read_readvariableop.
*savev2_conv_2_2_kernel_read_readvariableop,
(savev2_conv_2_2_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_adam_conv_1_1_kernel_m_read_readvariableop3
/savev2_adam_conv_1_1_bias_m_read_readvariableop5
1savev2_adam_conv_1_2_kernel_m_read_readvariableop3
/savev2_adam_conv_1_2_bias_m_read_readvariableop5
1savev2_adam_conv_2_1_kernel_m_read_readvariableop3
/savev2_adam_conv_2_1_bias_m_read_readvariableop5
1savev2_adam_conv_2_2_kernel_m_read_readvariableop3
/savev2_adam_conv_2_2_bias_m_read_readvariableop4
0savev2_adam_dense_2_kernel_m_read_readvariableop2
.savev2_adam_dense_2_bias_m_read_readvariableop5
1savev2_adam_conv_1_1_kernel_v_read_readvariableop3
/savev2_adam_conv_1_1_bias_v_read_readvariableop5
1savev2_adam_conv_1_2_kernel_v_read_readvariableop3
/savev2_adam_conv_1_2_bias_v_read_readvariableop5
1savev2_adam_conv_2_1_kernel_v_read_readvariableop3
/savev2_adam_conv_2_1_bias_v_read_readvariableop5
1savev2_adam_conv_2_2_kernel_v_read_readvariableop3
/savev2_adam_conv_2_2_bias_v_read_readvariableop4
0savev2_adam_dense_2_kernel_v_read_readvariableop2
.savev2_adam_dense_2_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*?
value?B?(B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv_1_1_kernel_read_readvariableop(savev2_conv_1_1_bias_read_readvariableop*savev2_conv_1_2_kernel_read_readvariableop(savev2_conv_1_2_bias_read_readvariableop*savev2_conv_2_1_kernel_read_readvariableop(savev2_conv_2_1_bias_read_readvariableop*savev2_conv_2_2_kernel_read_readvariableop(savev2_conv_2_2_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_conv_1_1_kernel_m_read_readvariableop/savev2_adam_conv_1_1_bias_m_read_readvariableop1savev2_adam_conv_1_2_kernel_m_read_readvariableop/savev2_adam_conv_1_2_bias_m_read_readvariableop1savev2_adam_conv_2_1_kernel_m_read_readvariableop/savev2_adam_conv_2_1_bias_m_read_readvariableop1savev2_adam_conv_2_2_kernel_m_read_readvariableop/savev2_adam_conv_2_2_bias_m_read_readvariableop0savev2_adam_dense_2_kernel_m_read_readvariableop.savev2_adam_dense_2_bias_m_read_readvariableop1savev2_adam_conv_1_1_kernel_v_read_readvariableop/savev2_adam_conv_1_1_bias_v_read_readvariableop1savev2_adam_conv_1_2_kernel_v_read_readvariableop/savev2_adam_conv_1_2_bias_v_read_readvariableop1savev2_adam_conv_2_1_kernel_v_read_readvariableop/savev2_adam_conv_2_1_bias_v_read_readvariableop1savev2_adam_conv_2_2_kernel_v_read_readvariableop/savev2_adam_conv_2_2_bias_v_read_readvariableop0savev2_adam_dense_2_kernel_v_read_readvariableop.savev2_adam_dense_2_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *6
dtypes,
*2(	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :
:
:

:
:

:
:

:
:
??
:
: : : : : : : : : :
:
:

:
:

:
:

:
:
??
:
:
:
:

:
:

:
:

:
:
??
:
: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:
: 

_output_shapes
:
:,(
&
_output_shapes
:

: 

_output_shapes
:
:,(
&
_output_shapes
:

: 

_output_shapes
:
:,(
&
_output_shapes
:

: 

_output_shapes
:
:&	"
 
_output_shapes
:
??
: 


_output_shapes
:
:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:
: 

_output_shapes
:
:,(
&
_output_shapes
:

: 

_output_shapes
:
:,(
&
_output_shapes
:

: 

_output_shapes
:
:,(
&
_output_shapes
:

: 

_output_shapes
:
:&"
 
_output_shapes
:
??
: 

_output_shapes
:
:,(
&
_output_shapes
:
: 

_output_shapes
:
:, (
&
_output_shapes
:

: !

_output_shapes
:
:,"(
&
_output_shapes
:

: #

_output_shapes
:
:,$(
&
_output_shapes
:

: %

_output_shapes
:
:&&"
 
_output_shapes
:
??
: '

_output_shapes
:
:(

_output_shapes
: 
?
?
B__inference_dense_2_layer_call_and_return_conditional_losses_19887

inputs2
matmul_readvariableop_resource:
??
-
biasadd_readvariableop_resource:

identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????
2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
F
*__inference_max_pool_2_layer_call_fn_20510

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_max_pool_2_layer_call_and_return_conditional_losses_197442
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
C__inference_conv_2_1_layer_call_and_return_conditional_losses_19826

inputs8
conv2d_readvariableop_resource:

-
biasadd_readvariableop_resource:

identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????ll
*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????ll
2	
BiasAdds
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????ll
2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????nn
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????nn

 
_user_specified_nameinputs
?
?
(__inference_conv_2_1_layer_call_fn_20456

inputs!
unknown:


	unknown_0:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????ll
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv_2_1_layer_call_and_return_conditional_losses_198262
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????ll
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????nn
: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????nn

 
_user_specified_nameinputs
?
?
,__inference_sequential_2_layer_call_fn_19917
conv_1_1_input!
unknown:

	unknown_0:
#
	unknown_1:


	unknown_2:
#
	unknown_3:


	unknown_4:
#
	unknown_5:


	unknown_6:

	unknown_7:
??

	unknown_8:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv_1_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_198942
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
1
_output_shapes
:???????????
(
_user_specified_nameconv_1_1_input
?
D
(__inference_relu_2_1_layer_call_fn_20466

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????ll
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_relu_2_1_layer_call_and_return_conditional_losses_198372
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????ll
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????ll
:W S
/
_output_shapes
:?????????ll

 
_user_specified_nameinputs
?
a
E__inference_max_pool_2_layer_call_and_return_conditional_losses_20505

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????55
*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????55
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????jj
:W S
/
_output_shapes
:?????????jj

 
_user_specified_nameinputs
?
a
E__inference_max_pool_2_layer_call_and_return_conditional_losses_19744

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
`
D__inference_flatten_2_layer_call_and_return_conditional_losses_20521

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????m  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:???????????2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????55
:W S
/
_output_shapes
:?????????55

 
_user_specified_nameinputs
?
_
C__inference_relu_2_1_layer_call_and_return_conditional_losses_19837

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:?????????ll
2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????ll
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????ll
:W S
/
_output_shapes
:?????????ll

 
_user_specified_nameinputs
?
_
C__inference_relu_1_2_layer_call_and_return_conditional_losses_19808

inputs
identityX
ReluReluinputs*
T0*1
_output_shapes
:???????????
2
Relup
IdentityIdentityRelu:activations:0*
T0*1
_output_shapes
:???????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????
:Y U
1
_output_shapes
:???????????

 
_user_specified_nameinputs
?
a
E__inference_max_pool_1_layer_call_and_return_conditional_losses_19722

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
(__inference_conv_1_1_layer_call_fn_20378

inputs!
unknown:

	unknown_0:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv_1_1_layer_call_and_return_conditional_losses_197742
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
D
(__inference_relu_1_1_layer_call_fn_20388

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_relu_1_1_layer_call_and_return_conditional_losses_197852
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:???????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????
:Y U
1
_output_shapes
:???????????

 
_user_specified_nameinputs
?
?
B__inference_dense_2_layer_call_and_return_conditional_losses_20537

inputs2
matmul_readvariableop_resource:
??
-
biasadd_readvariableop_resource:

identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????
2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
,__inference_sequential_2_layer_call_fn_20359

inputs!
unknown:

	unknown_0:
#
	unknown_1:


	unknown_2:
#
	unknown_3:


	unknown_4:
#
	unknown_5:


	unknown_6:

	unknown_7:
??

	unknown_8:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_200702
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
C__inference_conv_1_2_layer_call_and_return_conditional_losses_19797

inputs8
conv2d_readvariableop_resource:

-
biasadd_readvariableop_resource:

identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????
*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????
2	
BiasAddu
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:???????????
2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????

 
_user_specified_nameinputs
?2
?
G__inference_sequential_2_layer_call_and_return_conditional_losses_20190
conv_1_1_input(
conv_1_1_20157:

conv_1_1_20159:
(
conv_1_2_20163:


conv_1_2_20165:
(
conv_2_1_20170:


conv_2_1_20172:
(
conv_2_2_20176:


conv_2_2_20178:
!
dense_2_20184:
??

dense_2_20186:

identity?? conv_1_1/StatefulPartitionedCall? conv_1_2/StatefulPartitionedCall? conv_2_1/StatefulPartitionedCall? conv_2_2/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?
 conv_1_1/StatefulPartitionedCallStatefulPartitionedCallconv_1_1_inputconv_1_1_20157conv_1_1_20159*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv_1_1_layer_call_and_return_conditional_losses_197742"
 conv_1_1/StatefulPartitionedCall?
relu_1_1/PartitionedCallPartitionedCall)conv_1_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_relu_1_1_layer_call_and_return_conditional_losses_197852
relu_1_1/PartitionedCall?
 conv_1_2/StatefulPartitionedCallStatefulPartitionedCall!relu_1_1/PartitionedCall:output:0conv_1_2_20163conv_1_2_20165*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv_1_2_layer_call_and_return_conditional_losses_197972"
 conv_1_2/StatefulPartitionedCall?
relu_1_2/PartitionedCallPartitionedCall)conv_1_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_relu_1_2_layer_call_and_return_conditional_losses_198082
relu_1_2/PartitionedCall?
max_pool_1/PartitionedCallPartitionedCall!relu_1_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????nn
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_max_pool_1_layer_call_and_return_conditional_losses_198142
max_pool_1/PartitionedCall?
 conv_2_1/StatefulPartitionedCallStatefulPartitionedCall#max_pool_1/PartitionedCall:output:0conv_2_1_20170conv_2_1_20172*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????ll
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv_2_1_layer_call_and_return_conditional_losses_198262"
 conv_2_1/StatefulPartitionedCall?
relu_2_1/PartitionedCallPartitionedCall)conv_2_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????ll
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_relu_2_1_layer_call_and_return_conditional_losses_198372
relu_2_1/PartitionedCall?
 conv_2_2/StatefulPartitionedCallStatefulPartitionedCall!relu_2_1/PartitionedCall:output:0conv_2_2_20176conv_2_2_20178*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????jj
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv_2_2_layer_call_and_return_conditional_losses_198492"
 conv_2_2/StatefulPartitionedCall?
relu_2_2/PartitionedCallPartitionedCall)conv_2_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????jj
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_relu_2_2_layer_call_and_return_conditional_losses_198602
relu_2_2/PartitionedCall?
max_pool_2/PartitionedCallPartitionedCall!relu_2_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????55
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_max_pool_2_layer_call_and_return_conditional_losses_198662
max_pool_2/PartitionedCall?
flatten_2/PartitionedCallPartitionedCall#max_pool_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_198742
flatten_2/PartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_2_20184dense_2_20186*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_198872!
dense_2/StatefulPartitionedCall?
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity?
NoOpNoOp!^conv_1_1/StatefulPartitionedCall!^conv_1_2/StatefulPartitionedCall!^conv_2_1/StatefulPartitionedCall!^conv_2_2/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 2D
 conv_1_1/StatefulPartitionedCall conv_1_1/StatefulPartitionedCall2D
 conv_1_2/StatefulPartitionedCall conv_1_2/StatefulPartitionedCall2D
 conv_2_1/StatefulPartitionedCall conv_2_1/StatefulPartitionedCall2D
 conv_2_2/StatefulPartitionedCall conv_2_2/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:a ]
1
_output_shapes
:???????????
(
_user_specified_nameconv_1_1_input
?
?
(__inference_conv_2_2_layer_call_fn_20485

inputs!
unknown:


	unknown_0:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????jj
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv_2_2_layer_call_and_return_conditional_losses_198492
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????jj
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????ll
: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????ll

 
_user_specified_nameinputs
?2
?
G__inference_sequential_2_layer_call_and_return_conditional_losses_20070

inputs(
conv_1_1_20037:

conv_1_1_20039:
(
conv_1_2_20043:


conv_1_2_20045:
(
conv_2_1_20050:


conv_2_1_20052:
(
conv_2_2_20056:


conv_2_2_20058:
!
dense_2_20064:
??

dense_2_20066:

identity?? conv_1_1/StatefulPartitionedCall? conv_1_2/StatefulPartitionedCall? conv_2_1/StatefulPartitionedCall? conv_2_2/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?
 conv_1_1/StatefulPartitionedCallStatefulPartitionedCallinputsconv_1_1_20037conv_1_1_20039*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv_1_1_layer_call_and_return_conditional_losses_197742"
 conv_1_1/StatefulPartitionedCall?
relu_1_1/PartitionedCallPartitionedCall)conv_1_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_relu_1_1_layer_call_and_return_conditional_losses_197852
relu_1_1/PartitionedCall?
 conv_1_2/StatefulPartitionedCallStatefulPartitionedCall!relu_1_1/PartitionedCall:output:0conv_1_2_20043conv_1_2_20045*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv_1_2_layer_call_and_return_conditional_losses_197972"
 conv_1_2/StatefulPartitionedCall?
relu_1_2/PartitionedCallPartitionedCall)conv_1_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_relu_1_2_layer_call_and_return_conditional_losses_198082
relu_1_2/PartitionedCall?
max_pool_1/PartitionedCallPartitionedCall!relu_1_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????nn
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_max_pool_1_layer_call_and_return_conditional_losses_198142
max_pool_1/PartitionedCall?
 conv_2_1/StatefulPartitionedCallStatefulPartitionedCall#max_pool_1/PartitionedCall:output:0conv_2_1_20050conv_2_1_20052*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????ll
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv_2_1_layer_call_and_return_conditional_losses_198262"
 conv_2_1/StatefulPartitionedCall?
relu_2_1/PartitionedCallPartitionedCall)conv_2_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????ll
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_relu_2_1_layer_call_and_return_conditional_losses_198372
relu_2_1/PartitionedCall?
 conv_2_2/StatefulPartitionedCallStatefulPartitionedCall!relu_2_1/PartitionedCall:output:0conv_2_2_20056conv_2_2_20058*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????jj
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv_2_2_layer_call_and_return_conditional_losses_198492"
 conv_2_2/StatefulPartitionedCall?
relu_2_2/PartitionedCallPartitionedCall)conv_2_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????jj
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_relu_2_2_layer_call_and_return_conditional_losses_198602
relu_2_2/PartitionedCall?
max_pool_2/PartitionedCallPartitionedCall!relu_2_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????55
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_max_pool_2_layer_call_and_return_conditional_losses_198662
max_pool_2/PartitionedCall?
flatten_2/PartitionedCallPartitionedCall#max_pool_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_198742
flatten_2/PartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_2_20064dense_2_20066*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_198872!
dense_2/StatefulPartitionedCall?
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity?
NoOpNoOp!^conv_1_1/StatefulPartitionedCall!^conv_1_2/StatefulPartitionedCall!^conv_2_1/StatefulPartitionedCall!^conv_2_2/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 2D
 conv_1_1/StatefulPartitionedCall conv_1_1/StatefulPartitionedCall2D
 conv_1_2/StatefulPartitionedCall conv_1_2/StatefulPartitionedCall2D
 conv_2_1/StatefulPartitionedCall conv_2_1/StatefulPartitionedCall2D
 conv_2_2/StatefulPartitionedCall conv_2_2/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
(__inference_conv_1_2_layer_call_fn_20407

inputs!
unknown:


	unknown_0:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv_1_2_layer_call_and_return_conditional_losses_197972
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????
: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????

 
_user_specified_nameinputs
?
_
C__inference_relu_2_1_layer_call_and_return_conditional_losses_20461

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:?????????ll
2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????ll
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????ll
:W S
/
_output_shapes
:?????????ll

 
_user_specified_nameinputs
?
_
C__inference_relu_1_2_layer_call_and_return_conditional_losses_20412

inputs
identityX
ReluReluinputs*
T0*1
_output_shapes
:???????????
2
Relup
IdentityIdentityRelu:activations:0*
T0*1
_output_shapes
:???????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????
:Y U
1
_output_shapes
:???????????

 
_user_specified_nameinputs
?H
?	
 __inference__wrapped_model_19713
conv_1_1_inputN
4sequential_2_conv_1_1_conv2d_readvariableop_resource:
C
5sequential_2_conv_1_1_biasadd_readvariableop_resource:
N
4sequential_2_conv_1_2_conv2d_readvariableop_resource:

C
5sequential_2_conv_1_2_biasadd_readvariableop_resource:
N
4sequential_2_conv_2_1_conv2d_readvariableop_resource:

C
5sequential_2_conv_2_1_biasadd_readvariableop_resource:
N
4sequential_2_conv_2_2_conv2d_readvariableop_resource:

C
5sequential_2_conv_2_2_biasadd_readvariableop_resource:
G
3sequential_2_dense_2_matmul_readvariableop_resource:
??
B
4sequential_2_dense_2_biasadd_readvariableop_resource:

identity??,sequential_2/conv_1_1/BiasAdd/ReadVariableOp?+sequential_2/conv_1_1/Conv2D/ReadVariableOp?,sequential_2/conv_1_2/BiasAdd/ReadVariableOp?+sequential_2/conv_1_2/Conv2D/ReadVariableOp?,sequential_2/conv_2_1/BiasAdd/ReadVariableOp?+sequential_2/conv_2_1/Conv2D/ReadVariableOp?,sequential_2/conv_2_2/BiasAdd/ReadVariableOp?+sequential_2/conv_2_2/Conv2D/ReadVariableOp?+sequential_2/dense_2/BiasAdd/ReadVariableOp?*sequential_2/dense_2/MatMul/ReadVariableOp?
+sequential_2/conv_1_1/Conv2D/ReadVariableOpReadVariableOp4sequential_2_conv_1_1_conv2d_readvariableop_resource*&
_output_shapes
:
*
dtype02-
+sequential_2/conv_1_1/Conv2D/ReadVariableOp?
sequential_2/conv_1_1/Conv2DConv2Dconv_1_1_input3sequential_2/conv_1_1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????
*
paddingVALID*
strides
2
sequential_2/conv_1_1/Conv2D?
,sequential_2/conv_1_1/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_conv_1_1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02.
,sequential_2/conv_1_1/BiasAdd/ReadVariableOp?
sequential_2/conv_1_1/BiasAddBiasAdd%sequential_2/conv_1_1/Conv2D:output:04sequential_2/conv_1_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????
2
sequential_2/conv_1_1/BiasAdd?
sequential_2/relu_1_1/ReluRelu&sequential_2/conv_1_1/BiasAdd:output:0*
T0*1
_output_shapes
:???????????
2
sequential_2/relu_1_1/Relu?
+sequential_2/conv_1_2/Conv2D/ReadVariableOpReadVariableOp4sequential_2_conv_1_2_conv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02-
+sequential_2/conv_1_2/Conv2D/ReadVariableOp?
sequential_2/conv_1_2/Conv2DConv2D(sequential_2/relu_1_1/Relu:activations:03sequential_2/conv_1_2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????
*
paddingVALID*
strides
2
sequential_2/conv_1_2/Conv2D?
,sequential_2/conv_1_2/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_conv_1_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02.
,sequential_2/conv_1_2/BiasAdd/ReadVariableOp?
sequential_2/conv_1_2/BiasAddBiasAdd%sequential_2/conv_1_2/Conv2D:output:04sequential_2/conv_1_2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????
2
sequential_2/conv_1_2/BiasAdd?
sequential_2/relu_1_2/ReluRelu&sequential_2/conv_1_2/BiasAdd:output:0*
T0*1
_output_shapes
:???????????
2
sequential_2/relu_1_2/Relu?
sequential_2/max_pool_1/MaxPoolMaxPool(sequential_2/relu_1_2/Relu:activations:0*/
_output_shapes
:?????????nn
*
ksize
*
paddingVALID*
strides
2!
sequential_2/max_pool_1/MaxPool?
+sequential_2/conv_2_1/Conv2D/ReadVariableOpReadVariableOp4sequential_2_conv_2_1_conv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02-
+sequential_2/conv_2_1/Conv2D/ReadVariableOp?
sequential_2/conv_2_1/Conv2DConv2D(sequential_2/max_pool_1/MaxPool:output:03sequential_2/conv_2_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????ll
*
paddingVALID*
strides
2
sequential_2/conv_2_1/Conv2D?
,sequential_2/conv_2_1/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_conv_2_1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02.
,sequential_2/conv_2_1/BiasAdd/ReadVariableOp?
sequential_2/conv_2_1/BiasAddBiasAdd%sequential_2/conv_2_1/Conv2D:output:04sequential_2/conv_2_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????ll
2
sequential_2/conv_2_1/BiasAdd?
sequential_2/relu_2_1/ReluRelu&sequential_2/conv_2_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????ll
2
sequential_2/relu_2_1/Relu?
+sequential_2/conv_2_2/Conv2D/ReadVariableOpReadVariableOp4sequential_2_conv_2_2_conv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02-
+sequential_2/conv_2_2/Conv2D/ReadVariableOp?
sequential_2/conv_2_2/Conv2DConv2D(sequential_2/relu_2_1/Relu:activations:03sequential_2/conv_2_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????jj
*
paddingVALID*
strides
2
sequential_2/conv_2_2/Conv2D?
,sequential_2/conv_2_2/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_conv_2_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02.
,sequential_2/conv_2_2/BiasAdd/ReadVariableOp?
sequential_2/conv_2_2/BiasAddBiasAdd%sequential_2/conv_2_2/Conv2D:output:04sequential_2/conv_2_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????jj
2
sequential_2/conv_2_2/BiasAdd?
sequential_2/relu_2_2/ReluRelu&sequential_2/conv_2_2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????jj
2
sequential_2/relu_2_2/Relu?
sequential_2/max_pool_2/MaxPoolMaxPool(sequential_2/relu_2_2/Relu:activations:0*/
_output_shapes
:?????????55
*
ksize
*
paddingVALID*
strides
2!
sequential_2/max_pool_2/MaxPool?
sequential_2/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????m  2
sequential_2/flatten_2/Const?
sequential_2/flatten_2/ReshapeReshape(sequential_2/max_pool_2/MaxPool:output:0%sequential_2/flatten_2/Const:output:0*
T0*)
_output_shapes
:???????????2 
sequential_2/flatten_2/Reshape?
*sequential_2/dense_2/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_2_matmul_readvariableop_resource* 
_output_shapes
:
??
*
dtype02,
*sequential_2/dense_2/MatMul/ReadVariableOp?
sequential_2/dense_2/MatMulMatMul'sequential_2/flatten_2/Reshape:output:02sequential_2/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
sequential_2/dense_2/MatMul?
+sequential_2/dense_2/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02-
+sequential_2/dense_2/BiasAdd/ReadVariableOp?
sequential_2/dense_2/BiasAddBiasAdd%sequential_2/dense_2/MatMul:product:03sequential_2/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
sequential_2/dense_2/BiasAdd?
sequential_2/dense_2/SoftmaxSoftmax%sequential_2/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
sequential_2/dense_2/Softmax?
IdentityIdentity&sequential_2/dense_2/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity?
NoOpNoOp-^sequential_2/conv_1_1/BiasAdd/ReadVariableOp,^sequential_2/conv_1_1/Conv2D/ReadVariableOp-^sequential_2/conv_1_2/BiasAdd/ReadVariableOp,^sequential_2/conv_1_2/Conv2D/ReadVariableOp-^sequential_2/conv_2_1/BiasAdd/ReadVariableOp,^sequential_2/conv_2_1/Conv2D/ReadVariableOp-^sequential_2/conv_2_2/BiasAdd/ReadVariableOp,^sequential_2/conv_2_2/Conv2D/ReadVariableOp,^sequential_2/dense_2/BiasAdd/ReadVariableOp+^sequential_2/dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 2\
,sequential_2/conv_1_1/BiasAdd/ReadVariableOp,sequential_2/conv_1_1/BiasAdd/ReadVariableOp2Z
+sequential_2/conv_1_1/Conv2D/ReadVariableOp+sequential_2/conv_1_1/Conv2D/ReadVariableOp2\
,sequential_2/conv_1_2/BiasAdd/ReadVariableOp,sequential_2/conv_1_2/BiasAdd/ReadVariableOp2Z
+sequential_2/conv_1_2/Conv2D/ReadVariableOp+sequential_2/conv_1_2/Conv2D/ReadVariableOp2\
,sequential_2/conv_2_1/BiasAdd/ReadVariableOp,sequential_2/conv_2_1/BiasAdd/ReadVariableOp2Z
+sequential_2/conv_2_1/Conv2D/ReadVariableOp+sequential_2/conv_2_1/Conv2D/ReadVariableOp2\
,sequential_2/conv_2_2/BiasAdd/ReadVariableOp,sequential_2/conv_2_2/BiasAdd/ReadVariableOp2Z
+sequential_2/conv_2_2/Conv2D/ReadVariableOp+sequential_2/conv_2_2/Conv2D/ReadVariableOp2Z
+sequential_2/dense_2/BiasAdd/ReadVariableOp+sequential_2/dense_2/BiasAdd/ReadVariableOp2X
*sequential_2/dense_2/MatMul/ReadVariableOp*sequential_2/dense_2/MatMul/ReadVariableOp:a ]
1
_output_shapes
:???????????
(
_user_specified_nameconv_1_1_input
?
?
,__inference_sequential_2_layer_call_fn_20334

inputs!
unknown:

	unknown_0:
#
	unknown_1:


	unknown_2:
#
	unknown_3:


	unknown_4:
#
	unknown_5:


	unknown_6:

	unknown_7:
??

	unknown_8:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_198942
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
,__inference_sequential_2_layer_call_fn_20118
conv_1_1_input!
unknown:

	unknown_0:
#
	unknown_1:


	unknown_2:
#
	unknown_3:


	unknown_4:
#
	unknown_5:


	unknown_6:

	unknown_7:
??

	unknown_8:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv_1_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_200702
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
1
_output_shapes
:???????????
(
_user_specified_nameconv_1_1_input
?
D
(__inference_relu_1_2_layer_call_fn_20417

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_relu_1_2_layer_call_and_return_conditional_losses_198082
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:???????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????
:Y U
1
_output_shapes
:???????????

 
_user_specified_nameinputs
?
?
C__inference_conv_2_2_layer_call_and_return_conditional_losses_19849

inputs8
conv2d_readvariableop_resource:

-
biasadd_readvariableop_resource:

identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????jj
*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????jj
2	
BiasAdds
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????jj
2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????ll
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????ll

 
_user_specified_nameinputs
Ǩ
?
!__inference__traced_restore_20813
file_prefix:
 assignvariableop_conv_1_1_kernel:
.
 assignvariableop_1_conv_1_1_bias:
<
"assignvariableop_2_conv_1_2_kernel:

.
 assignvariableop_3_conv_1_2_bias:
<
"assignvariableop_4_conv_2_1_kernel:

.
 assignvariableop_5_conv_2_1_bias:
<
"assignvariableop_6_conv_2_2_kernel:

.
 assignvariableop_7_conv_2_2_bias:
5
!assignvariableop_8_dense_2_kernel:
??
-
assignvariableop_9_dense_2_bias:
'
assignvariableop_10_adam_iter:	 )
assignvariableop_11_adam_beta_1: )
assignvariableop_12_adam_beta_2: (
assignvariableop_13_adam_decay: 0
&assignvariableop_14_adam_learning_rate: #
assignvariableop_15_total: #
assignvariableop_16_count: %
assignvariableop_17_total_1: %
assignvariableop_18_count_1: D
*assignvariableop_19_adam_conv_1_1_kernel_m:
6
(assignvariableop_20_adam_conv_1_1_bias_m:
D
*assignvariableop_21_adam_conv_1_2_kernel_m:

6
(assignvariableop_22_adam_conv_1_2_bias_m:
D
*assignvariableop_23_adam_conv_2_1_kernel_m:

6
(assignvariableop_24_adam_conv_2_1_bias_m:
D
*assignvariableop_25_adam_conv_2_2_kernel_m:

6
(assignvariableop_26_adam_conv_2_2_bias_m:
=
)assignvariableop_27_adam_dense_2_kernel_m:
??
5
'assignvariableop_28_adam_dense_2_bias_m:
D
*assignvariableop_29_adam_conv_1_1_kernel_v:
6
(assignvariableop_30_adam_conv_1_1_bias_v:
D
*assignvariableop_31_adam_conv_1_2_kernel_v:

6
(assignvariableop_32_adam_conv_1_2_bias_v:
D
*assignvariableop_33_adam_conv_2_1_kernel_v:

6
(assignvariableop_34_adam_conv_2_1_bias_v:
D
*assignvariableop_35_adam_conv_2_2_kernel_v:

6
(assignvariableop_36_adam_conv_2_2_bias_v:
=
)assignvariableop_37_adam_dense_2_kernel_v:
??
5
'assignvariableop_38_adam_dense_2_bias_v:

identity_40??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*?
value?B?(B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::*6
dtypes,
*2(	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp assignvariableop_conv_1_1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv_1_1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv_1_2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv_1_2_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv_2_1_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv_2_1_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv_2_2_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv_2_2_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_2_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_2_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_beta_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_decayIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp&assignvariableop_14_adam_learning_rateIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpassignvariableop_16_countIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpassignvariableop_17_total_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOpassignvariableop_18_count_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp*assignvariableop_19_adam_conv_1_1_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp(assignvariableop_20_adam_conv_1_1_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_conv_1_2_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_conv_1_2_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_conv_2_1_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_conv_2_1_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_conv_2_2_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_conv_2_2_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp)assignvariableop_27_adam_dense_2_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp'assignvariableop_28_adam_dense_2_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_conv_1_1_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_conv_1_1_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_conv_1_2_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_conv_1_2_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_conv_2_1_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_conv_2_1_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_conv_2_2_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_conv_2_2_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adam_dense_2_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp'assignvariableop_38_adam_dense_2_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_389
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_39Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_39f
Identity_40IdentityIdentity_39:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_40?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_40Identity_40:output:0*c
_input_shapesR
P: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
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
AssignVariableOp_2AssignVariableOp_22*
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
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
_
C__inference_relu_2_2_layer_call_and_return_conditional_losses_20490

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:?????????jj
2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????jj
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????jj
:W S
/
_output_shapes
:?????????jj

 
_user_specified_nameinputs
?
_
C__inference_relu_1_1_layer_call_and_return_conditional_losses_20383

inputs
identityX
ReluReluinputs*
T0*1
_output_shapes
:???????????
2
Relup
IdentityIdentityRelu:activations:0*
T0*1
_output_shapes
:???????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????
:Y U
1
_output_shapes
:???????????

 
_user_specified_nameinputs
?
a
E__inference_max_pool_1_layer_call_and_return_conditional_losses_20422

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
F
*__inference_max_pool_1_layer_call_fn_20432

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_max_pool_1_layer_call_and_return_conditional_losses_197222
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
D
(__inference_relu_2_2_layer_call_fn_20495

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????jj
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_relu_2_2_layer_call_and_return_conditional_losses_198602
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????jj
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????jj
:W S
/
_output_shapes
:?????????jj

 
_user_specified_nameinputs
?
F
*__inference_max_pool_1_layer_call_fn_20437

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????nn
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_max_pool_1_layer_call_and_return_conditional_losses_198142
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????nn
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????
:Y U
1
_output_shapes
:???????????

 
_user_specified_nameinputs
?
F
*__inference_max_pool_2_layer_call_fn_20515

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????55
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_max_pool_2_layer_call_and_return_conditional_losses_198662
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????55
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????jj
:W S
/
_output_shapes
:?????????jj

 
_user_specified_nameinputs
?
_
C__inference_relu_1_1_layer_call_and_return_conditional_losses_19785

inputs
identityX
ReluReluinputs*
T0*1
_output_shapes
:???????????
2
Relup
IdentityIdentityRelu:activations:0*
T0*1
_output_shapes
:???????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????
:Y U
1
_output_shapes
:???????????

 
_user_specified_nameinputs
?
E
)__inference_flatten_2_layer_call_fn_20526

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_198742
PartitionedCalln
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????55
:W S
/
_output_shapes
:?????????55

 
_user_specified_nameinputs
?
?
C__inference_conv_2_2_layer_call_and_return_conditional_losses_20476

inputs8
conv2d_readvariableop_resource:

-
biasadd_readvariableop_resource:

identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????jj
*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????jj
2	
BiasAdds
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????jj
2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????ll
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????ll

 
_user_specified_nameinputs
?
?
C__inference_conv_1_1_layer_call_and_return_conditional_losses_19774

inputs8
conv2d_readvariableop_resource:
-
biasadd_readvariableop_resource:

identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:
*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????
*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????
2	
BiasAddu
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:???????????
2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
a
E__inference_max_pool_2_layer_call_and_return_conditional_losses_20500

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
S
conv_1_1_inputA
 serving_default_conv_1_1_input:0???????????;
dense_20
StatefulPartitionedCall:0?????????
tensorflow/serving/predict:??
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
	layer-8

layer-9
layer-10
layer_with_weights-4
layer-11
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
+?&call_and_return_all_conditional_losses
?__call__
?_default_save_signature"
_tf_keras_sequential
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
	variables
trainable_variables
regularization_losses
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

kernel
bias
	variables
 trainable_variables
!regularization_losses
"	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
#	variables
$trainable_variables
%regularization_losses
&	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

+kernel
,bias
-	variables
.trainable_variables
/regularization_losses
0	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
1	variables
2trainable_variables
3regularization_losses
4	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

5kernel
6bias
7	variables
8trainable_variables
9regularization_losses
:	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
;	variables
<trainable_variables
=regularization_losses
>	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

Gkernel
Hbias
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
Miter

Nbeta_1

Obeta_2
	Pdecay
Qlearning_ratem?m?m?m?+m?,m?5m?6m?Gm?Hm?v?v?v?v?+v?,v?5v?6v?Gv?Hv?"
	optimizer
f
0
1
2
3
+4
,5
56
67
G8
H9"
trackable_list_wrapper
f
0
1
2
3
+4
,5
56
67
G8
H9"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Rlayer_regularization_losses
	variables
trainable_variables
regularization_losses
Smetrics
Tnon_trainable_variables
Ulayer_metrics

Vlayers
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
):'
2conv_1_1/kernel
:
2conv_1_1/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Wnon_trainable_variables
	variables
trainable_variables
regularization_losses
Xmetrics
Ylayer_regularization_losses
Zlayer_metrics

[layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
\non_trainable_variables
	variables
trainable_variables
regularization_losses
]metrics
^layer_regularization_losses
_layer_metrics

`layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
):'

2conv_1_2/kernel
:
2conv_1_2/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
anon_trainable_variables
	variables
 trainable_variables
!regularization_losses
bmetrics
clayer_regularization_losses
dlayer_metrics

elayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
fnon_trainable_variables
#	variables
$trainable_variables
%regularization_losses
gmetrics
hlayer_regularization_losses
ilayer_metrics

jlayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
knon_trainable_variables
'	variables
(trainable_variables
)regularization_losses
lmetrics
mlayer_regularization_losses
nlayer_metrics

olayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
):'

2conv_2_1/kernel
:
2conv_2_1/bias
.
+0
,1"
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
pnon_trainable_variables
-	variables
.trainable_variables
/regularization_losses
qmetrics
rlayer_regularization_losses
slayer_metrics

tlayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
unon_trainable_variables
1	variables
2trainable_variables
3regularization_losses
vmetrics
wlayer_regularization_losses
xlayer_metrics

ylayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
):'

2conv_2_2/kernel
:
2conv_2_2/bias
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
?
znon_trainable_variables
7	variables
8trainable_variables
9regularization_losses
{metrics
|layer_regularization_losses
}layer_metrics

~layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
non_trainable_variables
;	variables
<trainable_variables
=regularization_losses
?metrics
 ?layer_regularization_losses
?layer_metrics
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?	variables
@trainable_variables
Aregularization_losses
?metrics
 ?layer_regularization_losses
?layer_metrics
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
C	variables
Dtrainable_variables
Eregularization_losses
?metrics
 ?layer_regularization_losses
?layer_metrics
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 
??
2dense_2/kernel
:
2dense_2/bias
.
G0
H1"
trackable_list_wrapper
.
G0
H1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
I	variables
Jtrainable_variables
Kregularization_losses
?metrics
 ?layer_regularization_losses
?layer_metrics
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
v
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
11"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
c

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
.:,
2Adam/conv_1_1/kernel/m
 :
2Adam/conv_1_1/bias/m
.:,

2Adam/conv_1_2/kernel/m
 :
2Adam/conv_1_2/bias/m
.:,

2Adam/conv_2_1/kernel/m
 :
2Adam/conv_2_1/bias/m
.:,

2Adam/conv_2_2/kernel/m
 :
2Adam/conv_2_2/bias/m
':%
??
2Adam/dense_2/kernel/m
:
2Adam/dense_2/bias/m
.:,
2Adam/conv_1_1/kernel/v
 :
2Adam/conv_1_1/bias/v
.:,

2Adam/conv_1_2/kernel/v
 :
2Adam/conv_1_2/bias/v
.:,

2Adam/conv_2_1/kernel/v
 :
2Adam/conv_2_1/bias/v
.:,

2Adam/conv_2_2/kernel/v
 :
2Adam/conv_2_2/bias/v
':%
??
2Adam/dense_2/kernel/v
:
2Adam/dense_2/bias/v
?2?
G__inference_sequential_2_layer_call_and_return_conditional_losses_20266
G__inference_sequential_2_layer_call_and_return_conditional_losses_20309
G__inference_sequential_2_layer_call_and_return_conditional_losses_20154
G__inference_sequential_2_layer_call_and_return_conditional_losses_20190?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
,__inference_sequential_2_layer_call_fn_19917
,__inference_sequential_2_layer_call_fn_20334
,__inference_sequential_2_layer_call_fn_20359
,__inference_sequential_2_layer_call_fn_20118?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
 __inference__wrapped_model_19713conv_1_1_input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_conv_1_1_layer_call_and_return_conditional_losses_20369?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_conv_1_1_layer_call_fn_20378?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_relu_1_1_layer_call_and_return_conditional_losses_20383?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_relu_1_1_layer_call_fn_20388?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_conv_1_2_layer_call_and_return_conditional_losses_20398?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_conv_1_2_layer_call_fn_20407?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_relu_1_2_layer_call_and_return_conditional_losses_20412?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_relu_1_2_layer_call_fn_20417?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_max_pool_1_layer_call_and_return_conditional_losses_20422
E__inference_max_pool_1_layer_call_and_return_conditional_losses_20427?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_max_pool_1_layer_call_fn_20432
*__inference_max_pool_1_layer_call_fn_20437?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_conv_2_1_layer_call_and_return_conditional_losses_20447?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_conv_2_1_layer_call_fn_20456?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_relu_2_1_layer_call_and_return_conditional_losses_20461?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_relu_2_1_layer_call_fn_20466?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_conv_2_2_layer_call_and_return_conditional_losses_20476?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_conv_2_2_layer_call_fn_20485?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_relu_2_2_layer_call_and_return_conditional_losses_20490?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_relu_2_2_layer_call_fn_20495?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_max_pool_2_layer_call_and_return_conditional_losses_20500
E__inference_max_pool_2_layer_call_and_return_conditional_losses_20505?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_max_pool_2_layer_call_fn_20510
*__inference_max_pool_2_layer_call_fn_20515?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_flatten_2_layer_call_and_return_conditional_losses_20521?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_flatten_2_layer_call_fn_20526?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_dense_2_layer_call_and_return_conditional_losses_20537?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_dense_2_layer_call_fn_20546?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
#__inference_signature_wrapper_20223conv_1_1_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
 __inference__wrapped_model_19713?
+,56GHA?>
7?4
2?/
conv_1_1_input???????????
? "1?.
,
dense_2!?
dense_2?????????
?
C__inference_conv_1_1_layer_call_and_return_conditional_losses_20369p9?6
/?,
*?'
inputs???????????
? "/?,
%?"
0???????????

? ?
(__inference_conv_1_1_layer_call_fn_20378c9?6
/?,
*?'
inputs???????????
? ""????????????
?
C__inference_conv_1_2_layer_call_and_return_conditional_losses_20398p9?6
/?,
*?'
inputs???????????

? "/?,
%?"
0???????????

? ?
(__inference_conv_1_2_layer_call_fn_20407c9?6
/?,
*?'
inputs???????????

? ""????????????
?
C__inference_conv_2_1_layer_call_and_return_conditional_losses_20447l+,7?4
-?*
(?%
inputs?????????nn

? "-?*
#? 
0?????????ll

? ?
(__inference_conv_2_1_layer_call_fn_20456_+,7?4
-?*
(?%
inputs?????????nn

? " ??????????ll
?
C__inference_conv_2_2_layer_call_and_return_conditional_losses_20476l567?4
-?*
(?%
inputs?????????ll

? "-?*
#? 
0?????????jj

? ?
(__inference_conv_2_2_layer_call_fn_20485_567?4
-?*
(?%
inputs?????????ll

? " ??????????jj
?
B__inference_dense_2_layer_call_and_return_conditional_losses_20537^GH1?.
'?$
"?
inputs???????????
? "%?"
?
0?????????

? |
'__inference_dense_2_layer_call_fn_20546QGH1?.
'?$
"?
inputs???????????
? "??????????
?
D__inference_flatten_2_layer_call_and_return_conditional_losses_20521b7?4
-?*
(?%
inputs?????????55

? "'?$
?
0???????????
? ?
)__inference_flatten_2_layer_call_fn_20526U7?4
-?*
(?%
inputs?????????55

? "?????????????
E__inference_max_pool_1_layer_call_and_return_conditional_losses_20422?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
E__inference_max_pool_1_layer_call_and_return_conditional_losses_20427j9?6
/?,
*?'
inputs???????????

? "-?*
#? 
0?????????nn

? ?
*__inference_max_pool_1_layer_call_fn_20432?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
*__inference_max_pool_1_layer_call_fn_20437]9?6
/?,
*?'
inputs???????????

? " ??????????nn
?
E__inference_max_pool_2_layer_call_and_return_conditional_losses_20500?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
E__inference_max_pool_2_layer_call_and_return_conditional_losses_20505h7?4
-?*
(?%
inputs?????????jj

? "-?*
#? 
0?????????55

? ?
*__inference_max_pool_2_layer_call_fn_20510?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
*__inference_max_pool_2_layer_call_fn_20515[7?4
-?*
(?%
inputs?????????jj

? " ??????????55
?
C__inference_relu_1_1_layer_call_and_return_conditional_losses_20383l9?6
/?,
*?'
inputs???????????

? "/?,
%?"
0???????????

? ?
(__inference_relu_1_1_layer_call_fn_20388_9?6
/?,
*?'
inputs???????????

? ""????????????
?
C__inference_relu_1_2_layer_call_and_return_conditional_losses_20412l9?6
/?,
*?'
inputs???????????

? "/?,
%?"
0???????????

? ?
(__inference_relu_1_2_layer_call_fn_20417_9?6
/?,
*?'
inputs???????????

? ""????????????
?
C__inference_relu_2_1_layer_call_and_return_conditional_losses_20461h7?4
-?*
(?%
inputs?????????ll

? "-?*
#? 
0?????????ll

? ?
(__inference_relu_2_1_layer_call_fn_20466[7?4
-?*
(?%
inputs?????????ll

? " ??????????ll
?
C__inference_relu_2_2_layer_call_and_return_conditional_losses_20490h7?4
-?*
(?%
inputs?????????jj

? "-?*
#? 
0?????????jj

? ?
(__inference_relu_2_2_layer_call_fn_20495[7?4
-?*
(?%
inputs?????????jj

? " ??????????jj
?
G__inference_sequential_2_layer_call_and_return_conditional_losses_20154~
+,56GHI?F
??<
2?/
conv_1_1_input???????????
p 

 
? "%?"
?
0?????????

? ?
G__inference_sequential_2_layer_call_and_return_conditional_losses_20190~
+,56GHI?F
??<
2?/
conv_1_1_input???????????
p

 
? "%?"
?
0?????????

? ?
G__inference_sequential_2_layer_call_and_return_conditional_losses_20266v
+,56GHA?>
7?4
*?'
inputs???????????
p 

 
? "%?"
?
0?????????

? ?
G__inference_sequential_2_layer_call_and_return_conditional_losses_20309v
+,56GHA?>
7?4
*?'
inputs???????????
p

 
? "%?"
?
0?????????

? ?
,__inference_sequential_2_layer_call_fn_19917q
+,56GHI?F
??<
2?/
conv_1_1_input???????????
p 

 
? "??????????
?
,__inference_sequential_2_layer_call_fn_20118q
+,56GHI?F
??<
2?/
conv_1_1_input???????????
p

 
? "??????????
?
,__inference_sequential_2_layer_call_fn_20334i
+,56GHA?>
7?4
*?'
inputs???????????
p 

 
? "??????????
?
,__inference_sequential_2_layer_call_fn_20359i
+,56GHA?>
7?4
*?'
inputs???????????
p

 
? "??????????
?
#__inference_signature_wrapper_20223?
+,56GHS?P
? 
I?F
D
conv_1_1_input2?/
conv_1_1_input???????????"1?.
,
dense_2!?
dense_2?????????
