��(
� � 
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
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
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
�
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
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
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
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
�
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
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
�
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	�
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
9
Softmax
logits"T
softmax"T"
Ttype:
2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
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
�
StatelessWhile

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint

@
StaticRegexFullMatch	
input

output
"
patternstring
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
-
Tanh
x"T
y"T"
Ttype:

2
�
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handle���element_dtype"
element_dtypetype"

shape_typetype:
2	
�
TensorListReserve
element_shape"
shape_type
num_elements(
handle���element_dtype"
element_dtypetype"

shape_typetype:
2	
�
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint���������
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.10.02unknown8��'
�
Nadam/gru/gru_cell/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�**
shared_nameNadam/gru/gru_cell/bias/v
�
-Nadam/gru/gru_cell/bias/v/Read/ReadVariableOpReadVariableOpNadam/gru/gru_cell/bias/v*
_output_shapes
:	�*
dtype0
�
%Nadam/gru/gru_cell/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*6
shared_name'%Nadam/gru/gru_cell/recurrent_kernel/v
�
9Nadam/gru/gru_cell/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp%Nadam/gru/gru_cell/recurrent_kernel/v* 
_output_shapes
:
��*
dtype0
�
Nadam/gru/gru_cell/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@�*,
shared_nameNadam/gru/gru_cell/kernel/v
�
/Nadam/gru/gru_cell/kernel/v/Read/ReadVariableOpReadVariableOpNadam/gru/gru_cell/kernel/v*
_output_shapes
:	@�*
dtype0
|
Nadam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_nameNadam/dense/bias/v
u
&Nadam/dense/bias/v/Read/ReadVariableOpReadVariableOpNadam/dense/bias/v*
_output_shapes
:@*
dtype0
�
Nadam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*%
shared_nameNadam/dense/kernel/v
~
(Nadam/dense/kernel/v/Read/ReadVariableOpReadVariableOpNadam/dense/kernel/v*
_output_shapes
:	�@*
dtype0
�
Nadam/embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*-
shared_nameNadam/embedding/embeddings/v
�
0Nadam/embedding/embeddings/v/Read/ReadVariableOpReadVariableOpNadam/embedding/embeddings/v*
_output_shapes

:@@*
dtype0
�
Nadam/gru/gru_cell/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�**
shared_nameNadam/gru/gru_cell/bias/m
�
-Nadam/gru/gru_cell/bias/m/Read/ReadVariableOpReadVariableOpNadam/gru/gru_cell/bias/m*
_output_shapes
:	�*
dtype0
�
%Nadam/gru/gru_cell/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*6
shared_name'%Nadam/gru/gru_cell/recurrent_kernel/m
�
9Nadam/gru/gru_cell/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp%Nadam/gru/gru_cell/recurrent_kernel/m* 
_output_shapes
:
��*
dtype0
�
Nadam/gru/gru_cell/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@�*,
shared_nameNadam/gru/gru_cell/kernel/m
�
/Nadam/gru/gru_cell/kernel/m/Read/ReadVariableOpReadVariableOpNadam/gru/gru_cell/kernel/m*
_output_shapes
:	@�*
dtype0
|
Nadam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_nameNadam/dense/bias/m
u
&Nadam/dense/bias/m/Read/ReadVariableOpReadVariableOpNadam/dense/bias/m*
_output_shapes
:@*
dtype0
�
Nadam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*%
shared_nameNadam/dense/kernel/m
~
(Nadam/dense/kernel/m/Read/ReadVariableOpReadVariableOpNadam/dense/kernel/m*
_output_shapes
:	�@*
dtype0
�
Nadam/embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*-
shared_nameNadam/embedding/embeddings/m
�
0Nadam/embedding/embeddings/m/Read/ReadVariableOpReadVariableOpNadam/embedding/embeddings/m*
_output_shapes

:@@*
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
u
gru/VariableVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*
shared_namegru/Variable
n
 gru/Variable/Read/ReadVariableOpReadVariableOpgru/Variable*
_output_shapes
:	�*
dtype0
|
Nadam/momentum_cacheVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameNadam/momentum_cache
u
(Nadam/momentum_cache/Read/ReadVariableOpReadVariableOpNadam/momentum_cache*
_output_shapes
: *
dtype0
z
Nadam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameNadam/learning_rate
s
'Nadam/learning_rate/Read/ReadVariableOpReadVariableOpNadam/learning_rate*
_output_shapes
: *
dtype0
j
Nadam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameNadam/decay
c
Nadam/decay/Read/ReadVariableOpReadVariableOpNadam/decay*
_output_shapes
: *
dtype0
l
Nadam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameNadam/beta_2
e
 Nadam/beta_2/Read/ReadVariableOpReadVariableOpNadam/beta_2*
_output_shapes
: *
dtype0
l
Nadam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameNadam/beta_1
e
 Nadam/beta_1/Read/ReadVariableOpReadVariableOpNadam/beta_1*
_output_shapes
: *
dtype0
h

Nadam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
Nadam/iter
a
Nadam/iter/Read/ReadVariableOpReadVariableOp
Nadam/iter*
_output_shapes
: *
dtype0	

gru/gru_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*"
shared_namegru/gru_cell/bias
x
%gru/gru_cell/bias/Read/ReadVariableOpReadVariableOpgru/gru_cell/bias*
_output_shapes
:	�*
dtype0
�
gru/gru_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*.
shared_namegru/gru_cell/recurrent_kernel
�
1gru/gru_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOpgru/gru_cell/recurrent_kernel* 
_output_shapes
:
��*
dtype0
�
gru/gru_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@�*$
shared_namegru/gru_cell/kernel
|
'gru/gru_cell/kernel/Read/ReadVariableOpReadVariableOpgru/gru_cell/kernel*
_output_shapes
:	@�*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:@*
dtype0
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	�@*
dtype0
�
embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*%
shared_nameembedding/embeddings
}
(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings*
_output_shapes

:@@*
dtype0
�
serving_default_embedding_inputPlaceholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_embedding_inputembedding/embeddingsgru/Variablegru/gru_cell/kernelgru/gru_cell/recurrent_kernelgru/gru_cell/biasdense/kernel
dense/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *-
f(R&
$__inference_signature_wrapper_257029

NoOpNoOp
�6
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�5
value�5B�5 B�5
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
	optimizer

signatures*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec*
�
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses

#kernel
$bias*
.
0
%1
&2
'3
#4
$5*
.
0
%1
&2
'3
#4
$5*
* 
�
(non_trainable_variables

)layers
*metrics
+layer_regularization_losses
,layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses*
6
-trace_0
.trace_1
/trace_2
0trace_3* 
6
1trace_0
2trace_1
3trace_2
4trace_3* 
* 
�
5iter

6beta_1

7beta_2
	8decay
9learning_rate
:momentum_cachemp#mq$mr%ms&mt'muvv#vw$vx%vy&vz'v{*

;serving_default* 

0*

0*
* 
�
<non_trainable_variables

=layers
>metrics
?layer_regularization_losses
@layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Atrace_0* 

Btrace_0* 
hb
VARIABLE_VALUEembedding/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE*

%0
&1
'2*

%0
&1
'2*
* 
�

Cstates
Dnon_trainable_variables

Elayers
Fmetrics
Glayer_regularization_losses
Hlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Itrace_0
Jtrace_1
Ktrace_2
Ltrace_3* 
6
Mtrace_0
Ntrace_1
Otrace_2
Ptrace_3* 
* 
�
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses
W_random_generator

%kernel
&recurrent_kernel
'bias*
* 

#0
$1*

#0
$1*
* 
�
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses*

]trace_0* 

^trace_0* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEgru/gru_cell/kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEgru/gru_cell/recurrent_kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEgru/gru_cell/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1
2*

_0
`1*
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
MG
VARIABLE_VALUE
Nadam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUENadam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUENadam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUENadam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUENadam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUENadam/momentum_cache3optimizer/momentum_cache/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 

a0*
* 

0*
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

%0
&1
'2*

%0
&1
'2*
* 
�
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses*
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
8
g	variables
h	keras_api
	itotal
	jcount*
H
k	variables
l	keras_api
	mtotal
	ncount
o
_fn_kwargs*
hb
VARIABLE_VALUEgru/VariableBlayer_with_weights-1/keras_api/states/0/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 

i0
j1*

g	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

m0
n1*

k	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
��
VARIABLE_VALUENadam/embedding/embeddings/mVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUENadam/dense/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUENadam/dense/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUENadam/gru/gru_cell/kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUE%Nadam/gru/gru_cell/recurrent_kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUENadam/gru/gru_cell/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUENadam/embedding/embeddings/vVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUENadam/dense/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUENadam/dense/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUENadam/gru/gru_cell/kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUE%Nadam/gru/gru_cell/recurrent_kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUENadam/gru/gru_cell/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename(embedding/embeddings/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp'gru/gru_cell/kernel/Read/ReadVariableOp1gru/gru_cell/recurrent_kernel/Read/ReadVariableOp%gru/gru_cell/bias/Read/ReadVariableOpNadam/iter/Read/ReadVariableOp Nadam/beta_1/Read/ReadVariableOp Nadam/beta_2/Read/ReadVariableOpNadam/decay/Read/ReadVariableOp'Nadam/learning_rate/Read/ReadVariableOp(Nadam/momentum_cache/Read/ReadVariableOp gru/Variable/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp0Nadam/embedding/embeddings/m/Read/ReadVariableOp(Nadam/dense/kernel/m/Read/ReadVariableOp&Nadam/dense/bias/m/Read/ReadVariableOp/Nadam/gru/gru_cell/kernel/m/Read/ReadVariableOp9Nadam/gru/gru_cell/recurrent_kernel/m/Read/ReadVariableOp-Nadam/gru/gru_cell/bias/m/Read/ReadVariableOp0Nadam/embedding/embeddings/v/Read/ReadVariableOp(Nadam/dense/kernel/v/Read/ReadVariableOp&Nadam/dense/bias/v/Read/ReadVariableOp/Nadam/gru/gru_cell/kernel/v/Read/ReadVariableOp9Nadam/gru/gru_cell/recurrent_kernel/v/Read/ReadVariableOp-Nadam/gru/gru_cell/bias/v/Read/ReadVariableOpConst**
Tin#
!2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *(
f#R!
__inference__traced_save_259566
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding/embeddingsdense/kernel
dense/biasgru/gru_cell/kernelgru/gru_cell/recurrent_kernelgru/gru_cell/bias
Nadam/iterNadam/beta_1Nadam/beta_2Nadam/decayNadam/learning_rateNadam/momentum_cachegru/Variabletotal_1count_1totalcountNadam/embedding/embeddings/mNadam/dense/kernel/mNadam/dense/bias/mNadam/gru/gru_cell/kernel/m%Nadam/gru/gru_cell/recurrent_kernel/mNadam/gru/gru_cell/bias/mNadam/embedding/embeddings/vNadam/dense/kernel/vNadam/dense/bias/vNadam/gru/gru_cell/kernel/v%Nadam/gru/gru_cell/recurrent_kernel/vNadam/gru/gru_cell/bias/v*)
Tin"
 2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference__traced_restore_259663Ӄ&
�>
�
&__forward_gpu_gru_with_fallback_259044

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
cudnnrnn
transpose_7_perm

cudnnrnn_0

cudnnrnn_1
	transpose

expanddims
cudnnrnn_input_c

concat

cudnnrnn_2
transpose_perm
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dim�c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : g

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*#
_output_shapes
:�Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0kernel*
T0*5
_output_shapes#
!:	@�:	@�:	@�*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*8
_output_shapes&
$:
��:
��:
��*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:�	S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : �
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*>
_output_shapes,
*:�:�:�:�:�:�*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
���������a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_4	Transposesplit_1:output:0transpose_4/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:��a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:1transpose_5/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:��a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:��\
	Reshape_7Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:�\
	Reshape_8Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:�\
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:�]

Reshape_10Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:�]

Reshape_11Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:�]

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:�M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    �
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*A
_output_shapes/
-:����������:�: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*,
_output_shapes
:����������h
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	�*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @V
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes
:	�^

Identity_1Identitytranspose_7:y:0*
T0*,
_output_shapes
:����������R

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	�I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_c:0"&

cudnnrnn_1CudnnRNN:reserve_space:0"!

cudnnrnn_2CudnnRNN:output_h:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:���������@:	�:	@�:
��:	�*<
api_implements*(gru_19c48921-d68a-486f-b909-1b858cd05649*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_258910_259045*
go_backwards( *

time_major( :S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs:GC

_output_shapes
:	�
 
_user_specified_nameinit_h:GC

_output_shapes
:	@�
 
_user_specified_namekernel:RN
 
_output_shapes
:
��
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	�

_user_specified_namebias
�
�
A__inference_dense_layer_call_and_return_conditional_losses_259456

inputs4
!tensordot_readvariableop_resource:	�@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	�@*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:�����������
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������@Z
SoftmaxSoftmaxBiasAdd:output:0*
T0*+
_output_shapes
:���������@d
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*+
_output_shapes
:���������@z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�*
�
while_body_255701
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:@*
element_dtype0�
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*
_output_shapes
:	�s
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*
_output_shapes
:	�W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*5
_output_shapes#
!:	�:	�:	�*
	num_splitz
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*
_output_shapes
:	�y
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*
_output_shapes
:	�Y
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*5
_output_shapes#
!:	�:	�:	�*
	num_splitj
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*
_output_shapes
:	�Q
while/SigmoidSigmoidwhile/add:z:0*
T0*
_output_shapes
:	�l
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*
_output_shapes
:	�U
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*
_output_shapes
:	�g
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*
_output_shapes
:	�c
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*
_output_shapes
:	�M

while/TanhTanhwhile/add_2:z:0*
T0*
_output_shapes
:	�d
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*
_output_shapes
:	�P
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?c
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*
_output_shapes
:	�[
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*
_output_shapes
:	�`
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*
_output_shapes
:	��
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype0:���O
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: W
while/Identity_4Identitywhile/add_3:z:0*
T0*
_output_shapes
:	�"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<: : : : :	�: : :	@�:�:
��:�: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	�:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	@�:!

_output_shapes	
:�:&	"
 
_output_shapes
:
��:!


_output_shapes	
:�
�;
�
__inference_standard_gru_256190

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
:�:�*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������@B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@*
shrink_axis_mask\
MatMulMatMulstrided_slice_1:output:0kernel*
T0*
_output_shapes
:	�`
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*
_output_shapes
:	�Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*5
_output_shapes#
!:	�:	�:	�*
	num_splitV
MatMul_1MatMulinit_hrecurrent_kernel*
T0*
_output_shapes
:	�d
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*
_output_shapes
:	�S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*5
_output_shapes#
!:	�:	�:	�*
	num_splitX
addAddV2split:output:0split_1:output:0*
T0*
_output_shapes
:	�E
SigmoidSigmoidadd:z:0*
T0*
_output_shapes
:	�Z
add_1AddV2split:output:1split_1:output:1*
T0*
_output_shapes
:	�I
	Sigmoid_1Sigmoid	add_1:z:0*
T0*
_output_shapes
:	�U
mulMulSigmoid_1:y:0split_1:output:2*
T0*
_output_shapes
:	�Q
add_2AddV2split:output:2mul:z:0*
T0*
_output_shapes
:	�A
TanhTanh	add_2:z:0*
T0*
_output_shapes
:	�K
mul_1MulSigmoid:y:0init_h*
T0*
_output_shapes
:	�J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?Q
subSubsub/x:output:0Sigmoid:y:0*
T0*
_output_shapes
:	�I
mul_2Mulsub:z:0Tanh:y:0*
T0*
_output_shapes
:	�N
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*
_output_shapes
:	�n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*P
_output_shapes>
<: : : : :	�: : :	@�:�:
��:�* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_256101*
condR
while_cond_256100*O
output_shapes>
<: : : : :	�: : :	@�:�:
��:�*
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:����������[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  �?X
IdentityIdentitystrided_slice_2:output:0*
T0*
_output_shapes
:	�^

Identity_1Identitytranspose_1:y:0*
T0*,
_output_shapes
:����������P

Identity_2Identitywhile:output:4*
T0*
_output_shapes
:	�I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:���������@:	�:	@�:
��:	�*<
api_implements*(gru_f3ede161-ce7c-4e7e-afe4-b4d81e89d854*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs:GC

_output_shapes
:	�
 
_user_specified_nameinit_h:GC

_output_shapes
:	@�
 
_user_specified_namekernel:RN
 
_output_shapes
:
��
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	�

_user_specified_namebias
�9
�
F__inference_sequential_layer_call_and_return_conditional_losses_257469

inputs3
!embedding_embedding_lookup_257071:@@3
 gru_read_readvariableop_resource:	�5
"gru_read_1_readvariableop_resource:	@�6
"gru_read_2_readvariableop_resource:
��5
"gru_read_3_readvariableop_resource:	�:
'dense_tensordot_readvariableop_resource:	�@3
%dense_biasadd_readvariableop_resource:@
identity��dense/BiasAdd/ReadVariableOp�dense/Tensordot/ReadVariableOp�embedding/embedding_lookup�gru/AssignVariableOp�gru/Read/ReadVariableOp�gru/Read_1/ReadVariableOp�gru/Read_2/ReadVariableOp�gru/Read_3/ReadVariableOp_
embedding/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:����������
embedding/embedding_lookupResourceGather!embedding_embedding_lookup_257071embedding/Cast:y:0*
Tindices0*4
_class*
(&loc:@embedding/embedding_lookup/257071*+
_output_shapes
:���������@*
dtype0�
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*4
_class*
(&loc:@embedding/embedding_lookup/257071*+
_output_shapes
:���������@�
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������@y
gru/Read/ReadVariableOpReadVariableOp gru_read_readvariableop_resource*
_output_shapes
:	�*
dtype0c
gru/IdentityIdentitygru/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	�}
gru/Read_1/ReadVariableOpReadVariableOp"gru_read_1_readvariableop_resource*
_output_shapes
:	@�*
dtype0g
gru/Identity_1Identity!gru/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	@�~
gru/Read_2/ReadVariableOpReadVariableOp"gru_read_2_readvariableop_resource* 
_output_shapes
:
��*
dtype0h
gru/Identity_2Identity!gru/Read_2/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��}
gru/Read_3/ReadVariableOpReadVariableOp"gru_read_3_readvariableop_resource*
_output_shapes
:	�*
dtype0g
gru/Identity_3Identity!gru/Read_3/ReadVariableOp:value:0*
T0*
_output_shapes
:	��
gru/PartitionedCallPartitionedCall.embedding/embedding_lookup/Identity_1:output:0gru/Identity:output:0gru/Identity_1:output:0gru/Identity_2:output:0gru/Identity_3:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *D
_output_shapes2
0:	�:����������:	�: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *(
f#R!
__inference_standard_gru_257228�
gru/AssignVariableOpAssignVariableOp gru_read_readvariableop_resourcegru/PartitionedCall:output:2^gru/Read/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource*
_output_shapes
:	�@*
dtype0^
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:e
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       a
dense/Tensordot/ShapeShapegru/PartitionedCall:output:1*
T0*
_output_shapes
:_
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:_
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: a
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ]
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense/Tensordot/transpose	Transposegru/PartitionedCall:output:1dense/Tensordot/concat:output:0*
T0*,
_output_shapes
:�����������
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@a
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@_
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������@~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������@f
dense/SoftmaxSoftmaxdense/BiasAdd:output:0*
T0*+
_output_shapes
:���������@j
IdentityIdentitydense/Softmax:softmax:0^NoOp*
T0*+
_output_shapes
:���������@�
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^embedding/embedding_lookup^gru/AssignVariableOp^gru/Read/ReadVariableOp^gru/Read_1/ReadVariableOp^gru/Read_2/ReadVariableOp^gru/Read_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:���������: : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2,
gru/AssignVariableOpgru/AssignVariableOp22
gru/Read/ReadVariableOpgru/Read/ReadVariableOp26
gru/Read_1/ReadVariableOpgru/Read_1/ReadVariableOp26
gru/Read_2/ReadVariableOpgru/Read_2/ReadVariableOp26
gru/Read_3/ReadVariableOpgru/Read_3/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
while_cond_257540
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_257540___redundant_placeholder04
0while_while_cond_257540___redundant_placeholder14
0while_while_cond_257540___redundant_placeholder24
0while_while_cond_257540___redundant_placeholder34
0while_while_cond_257540___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
): : : : :	�: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	�:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
�
�
F__inference_sequential_layer_call_and_return_conditional_losses_256924

inputs"
embedding_256906:@@

gru_256909:	�

gru_256911:	@�

gru_256913:
��

gru_256915:	�
dense_256918:	�@
dense_256920:@
identity��dense/StatefulPartitionedCall�!embedding/StatefulPartitionedCall�gru/StatefulPartitionedCall�
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_256906*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_256032�
gru/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0
gru_256909
gru_256911
gru_256913
gru_256915*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_gru_layer_call_and_return_conditional_losses_256863�
dense/StatefulPartitionedCallStatefulPartitionedCall$gru/StatefulPartitionedCall:output:0dense_256918dense_256920*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_256445y
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������@�
NoOpNoOp^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^gru/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:���������: : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2:
gru/StatefulPartitionedCallgru/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�4
�
(__inference_gpu_gru_with_fallback_256725

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3�c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������@P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : g

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*#
_output_shapes
:�Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0kernel*
T0*5
_output_shapes#
!:	@�:	@�:	@�*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*8
_output_shapes&
$:
��:
��:
��*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:�	S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : �
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*>
_output_shapes,
*:�:�:�:�:�:�*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
���������a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_4	Transposesplit_1:output:0transpose_4/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:��a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:1transpose_5/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:��a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:��\
	Reshape_7Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:�\
	Reshape_8Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:�\
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:�]

Reshape_10Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:�]

Reshape_11Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:�]

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:�M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes

:��	U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    �
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*A
_output_shapes/
-:����������:�: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*,
_output_shapes
:����������h
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	�*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @V
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes
:	�^

Identity_1Identitytranspose_7:y:0*
T0*,
_output_shapes
:����������R

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	�I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:���������@:	�:	@�:
��:	�*<
api_implements*(gru_5bc56a78-7baa-4f36-9887-0040c27d37f9*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs:GC

_output_shapes
:	�
 
_user_specified_nameinit_h:GC

_output_shapes
:	@�
 
_user_specified_namekernel:RN
 
_output_shapes
:
��
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	�

_user_specified_namebias
�
�
F__inference_sequential_layer_call_and_return_conditional_losses_256981
embedding_input"
embedding_256963:@@

gru_256966:	�

gru_256968:	@�

gru_256970:
��

gru_256972:	�
dense_256975:	�@
dense_256977:@
identity��dense/StatefulPartitionedCall�!embedding/StatefulPartitionedCall�gru/StatefulPartitionedCall�
!embedding/StatefulPartitionedCallStatefulPartitionedCallembedding_inputembedding_256963*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_256032�
gru/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0
gru_256966
gru_256968
gru_256970
gru_256972*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_gru_layer_call_and_return_conditional_losses_256404�
dense/StatefulPartitionedCallStatefulPartitionedCall$gru/StatefulPartitionedCall:output:0dense_256975dense_256977*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_256445y
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������@�
NoOpNoOp^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^gru/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:���������: : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2:
gru/StatefulPartitionedCallgru/StatefulPartitionedCall:X T
'
_output_shapes
:���������
)
_user_specified_nameembedding_input
�?
�
__inference__traced_save_259566
file_prefix3
/savev2_embedding_embeddings_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop2
.savev2_gru_gru_cell_kernel_read_readvariableop<
8savev2_gru_gru_cell_recurrent_kernel_read_readvariableop0
,savev2_gru_gru_cell_bias_read_readvariableop)
%savev2_nadam_iter_read_readvariableop	+
'savev2_nadam_beta_1_read_readvariableop+
'savev2_nadam_beta_2_read_readvariableop*
&savev2_nadam_decay_read_readvariableop2
.savev2_nadam_learning_rate_read_readvariableop3
/savev2_nadam_momentum_cache_read_readvariableop+
'savev2_gru_variable_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop;
7savev2_nadam_embedding_embeddings_m_read_readvariableop3
/savev2_nadam_dense_kernel_m_read_readvariableop1
-savev2_nadam_dense_bias_m_read_readvariableop:
6savev2_nadam_gru_gru_cell_kernel_m_read_readvariableopD
@savev2_nadam_gru_gru_cell_recurrent_kernel_m_read_readvariableop8
4savev2_nadam_gru_gru_cell_bias_m_read_readvariableop;
7savev2_nadam_embedding_embeddings_v_read_readvariableop3
/savev2_nadam_dense_kernel_v_read_readvariableop1
-savev2_nadam_dense_bias_v_read_readvariableop:
6savev2_nadam_gru_gru_cell_kernel_v_read_readvariableopD
@savev2_nadam_gru_gru_cell_recurrent_kernel_v_read_readvariableop8
4savev2_nadam_gru_gru_cell_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
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
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/momentum_cache/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-1/keras_api/states/0/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*O
valueFBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0/savev2_embedding_embeddings_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop.savev2_gru_gru_cell_kernel_read_readvariableop8savev2_gru_gru_cell_recurrent_kernel_read_readvariableop,savev2_gru_gru_cell_bias_read_readvariableop%savev2_nadam_iter_read_readvariableop'savev2_nadam_beta_1_read_readvariableop'savev2_nadam_beta_2_read_readvariableop&savev2_nadam_decay_read_readvariableop.savev2_nadam_learning_rate_read_readvariableop/savev2_nadam_momentum_cache_read_readvariableop'savev2_gru_variable_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop7savev2_nadam_embedding_embeddings_m_read_readvariableop/savev2_nadam_dense_kernel_m_read_readvariableop-savev2_nadam_dense_bias_m_read_readvariableop6savev2_nadam_gru_gru_cell_kernel_m_read_readvariableop@savev2_nadam_gru_gru_cell_recurrent_kernel_m_read_readvariableop4savev2_nadam_gru_gru_cell_bias_m_read_readvariableop7savev2_nadam_embedding_embeddings_v_read_readvariableop/savev2_nadam_dense_kernel_v_read_readvariableop-savev2_nadam_dense_bias_v_read_readvariableop6savev2_nadam_gru_gru_cell_kernel_v_read_readvariableop@savev2_nadam_gru_gru_cell_recurrent_kernel_v_read_readvariableop4savev2_nadam_gru_gru_cell_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *,
dtypes"
 2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*�
_input_shapes�
�: :@@:	�@:@:	@�:
��:	�: : : : : : :	�: : : : :@@:	�@:@:	@�:
��:	�:@@:	�@:@:	@�:
��:	�: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:@@:%!

_output_shapes
:	�@: 

_output_shapes
:@:%!

_output_shapes
:	@�:&"
 
_output_shapes
:
��:%!

_output_shapes
:	�:

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	�:
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
: :$ 

_output_shapes

:@@:%!

_output_shapes
:	�@: 

_output_shapes
:@:%!

_output_shapes
:	@�:&"
 
_output_shapes
:
��:%!

_output_shapes
:	�:$ 

_output_shapes

:@@:%!

_output_shapes
:	�@: 

_output_shapes
:@:%!

_output_shapes
:	@�:&"
 
_output_shapes
:
��:%!

_output_shapes
:	�:

_output_shapes
: 
�	
�
while_cond_257138
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_257138___redundant_placeholder04
0while_while_cond_257138___redundant_placeholder14
0while_while_cond_257138___redundant_placeholder24
0while_while_cond_257138___redundant_placeholder34
0while_while_cond_257138___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
): : : : :	�: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	�:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
�;
�
__inference_standard_gru_259202

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
:�:�*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������@B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@*
shrink_axis_mask\
MatMulMatMulstrided_slice_1:output:0kernel*
T0*
_output_shapes
:	�`
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*
_output_shapes
:	�Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*5
_output_shapes#
!:	�:	�:	�*
	num_splitV
MatMul_1MatMulinit_hrecurrent_kernel*
T0*
_output_shapes
:	�d
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*
_output_shapes
:	�S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*5
_output_shapes#
!:	�:	�:	�*
	num_splitX
addAddV2split:output:0split_1:output:0*
T0*
_output_shapes
:	�E
SigmoidSigmoidadd:z:0*
T0*
_output_shapes
:	�Z
add_1AddV2split:output:1split_1:output:1*
T0*
_output_shapes
:	�I
	Sigmoid_1Sigmoid	add_1:z:0*
T0*
_output_shapes
:	�U
mulMulSigmoid_1:y:0split_1:output:2*
T0*
_output_shapes
:	�Q
add_2AddV2split:output:2mul:z:0*
T0*
_output_shapes
:	�A
TanhTanh	add_2:z:0*
T0*
_output_shapes
:	�K
mul_1MulSigmoid:y:0init_h*
T0*
_output_shapes
:	�J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?Q
subSubsub/x:output:0Sigmoid:y:0*
T0*
_output_shapes
:	�I
mul_2Mulsub:z:0Tanh:y:0*
T0*
_output_shapes
:	�N
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*
_output_shapes
:	�n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*P
_output_shapes>
<: : : : :	�: : :	@�:�:
��:�* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_259113*
condR
while_cond_259112*O
output_shapes>
<: : : : :	�: : :	@�:�:
��:�*
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:����������[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  �?X
IdentityIdentitystrided_slice_2:output:0*
T0*
_output_shapes
:	�^

Identity_1Identitytranspose_1:y:0*
T0*,
_output_shapes
:����������P

Identity_2Identitywhile:output:4*
T0*
_output_shapes
:	�I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:���������@:	�:	@�:
��:	�*<
api_implements*(gru_5995684f-ad86-4c5b-90af-b9c680fa78ba*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs:GC

_output_shapes
:	�
 
_user_specified_nameinit_h:GC

_output_shapes
:	@�
 
_user_specified_namekernel:RN
 
_output_shapes
:
��
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	�

_user_specified_namebias
�
�
?__inference_gru_layer_call_and_return_conditional_losses_259416

inputs/
read_readvariableop_resource:	�1
read_1_readvariableop_resource:	@�2
read_2_readvariableop_resource:
��1
read_3_readvariableop_resource:	�

identity_4��AssignVariableOp�Read/ReadVariableOp�Read_1/ReadVariableOp�Read_2/ReadVariableOp�Read_3/ReadVariableOpq
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	�*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	�u
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	@�*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	@�v
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource* 
_output_shapes
:
��*
dtype0`

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��u
Read_3/ReadVariableOpReadVariableOpread_3_readvariableop_resource*
_output_shapes
:	�*
dtype0_

Identity_3IdentityRead_3/ReadVariableOp:value:0*
T0*
_output_shapes
:	��
PartitionedCallPartitionedCallinputsIdentity:output:0Identity_1:output:0Identity_2:output:0Identity_3:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *D
_output_shapes2
0:	�:����������:	�: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *(
f#R!
__inference_standard_gru_259202�
AssignVariableOpAssignVariableOpread_readvariableop_resourcePartitionedCall:output:2^Read/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(n

Identity_4IdentityPartitionedCall:output:1^NoOp*
T0*,
_output_shapes
:�����������
NoOpNoOp^AssignVariableOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp^Read_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : : : 2$
AssignVariableOpAssignVariableOp2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp2.
Read_3/ReadVariableOpRead_3/ReadVariableOp:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs
�*
�
while_body_258744
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:@*
element_dtype0�
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*
_output_shapes
:	�s
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*
_output_shapes
:	�W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*5
_output_shapes#
!:	�:	�:	�*
	num_splitz
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*
_output_shapes
:	�y
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*
_output_shapes
:	�Y
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*5
_output_shapes#
!:	�:	�:	�*
	num_splitj
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*
_output_shapes
:	�Q
while/SigmoidSigmoidwhile/add:z:0*
T0*
_output_shapes
:	�l
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*
_output_shapes
:	�U
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*
_output_shapes
:	�g
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*
_output_shapes
:	�c
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*
_output_shapes
:	�M

while/TanhTanhwhile/add_2:z:0*
T0*
_output_shapes
:	�d
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*
_output_shapes
:	�P
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?c
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*
_output_shapes
:	�[
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*
_output_shapes
:	�`
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*
_output_shapes
:	��
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype0:���O
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: W
while/Identity_4Identitywhile/add_3:z:0*
T0*
_output_shapes
:	�"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<: : : : :	�: : :	@�:�:
��:�: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	�:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	@�:!

_output_shapes	
:�:&	"
 
_output_shapes
:
��:!


_output_shapes	
:�
�	
�
while_cond_258005
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_258005___redundant_placeholder04
0while_while_cond_258005___redundant_placeholder14
0while_while_cond_258005___redundant_placeholder24
0while_while_cond_258005___redundant_placeholder34
0while_while_cond_258005___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
): : : : :	�: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	�:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
�4
�
(__inference_gpu_gru_with_fallback_259278

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3�c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������@P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : g

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*#
_output_shapes
:�Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0kernel*
T0*5
_output_shapes#
!:	@�:	@�:	@�*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*8
_output_shapes&
$:
��:
��:
��*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:�	S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : �
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*>
_output_shapes,
*:�:�:�:�:�:�*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
���������a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_4	Transposesplit_1:output:0transpose_4/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:��a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:1transpose_5/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:��a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:��\
	Reshape_7Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:�\
	Reshape_8Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:�\
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:�]

Reshape_10Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:�]

Reshape_11Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:�]

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:�M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes

:��	U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    �
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*A
_output_shapes/
-:����������:�: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*,
_output_shapes
:����������h
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	�*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @V
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes
:	�^

Identity_1Identitytranspose_7:y:0*
T0*,
_output_shapes
:����������R

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	�I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:���������@:	�:	@�:
��:	�*<
api_implements*(gru_5995684f-ad86-4c5b-90af-b9c680fa78ba*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs:GC

_output_shapes
:	�
 
_user_specified_nameinit_h:GC

_output_shapes
:	@�
 
_user_specified_namekernel:RN
 
_output_shapes
:
��
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	�

_user_specified_namebias
�
�
?__inference_gru_layer_call_and_return_conditional_losses_256863

inputs/
read_readvariableop_resource:	�1
read_1_readvariableop_resource:	@�2
read_2_readvariableop_resource:
��1
read_3_readvariableop_resource:	�

identity_4��AssignVariableOp�Read/ReadVariableOp�Read_1/ReadVariableOp�Read_2/ReadVariableOp�Read_3/ReadVariableOpq
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	�*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	�u
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	@�*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	@�v
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource* 
_output_shapes
:
��*
dtype0`

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��u
Read_3/ReadVariableOpReadVariableOpread_3_readvariableop_resource*
_output_shapes
:	�*
dtype0_

Identity_3IdentityRead_3/ReadVariableOp:value:0*
T0*
_output_shapes
:	��
PartitionedCallPartitionedCallinputsIdentity:output:0Identity_1:output:0Identity_2:output:0Identity_3:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *D
_output_shapes2
0:	�:����������:	�: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *(
f#R!
__inference_standard_gru_256649�
AssignVariableOpAssignVariableOpread_readvariableop_resourcePartitionedCall:output:2^Read/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(n

Identity_4IdentityPartitionedCall:output:1^NoOp*
T0*,
_output_shapes
:�����������
NoOpNoOp^AssignVariableOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp^Read_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : : : 2$
AssignVariableOpAssignVariableOp2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp2.
Read_3/ReadVariableOpRead_3/ReadVariableOp:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs
��
�

:__inference___backward_gpu_gru_with_fallback_256726_256861
placeholder
placeholder_1
placeholder_2
placeholder_3/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_7_grad_invertpermutation_transpose_7_perm!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat5
1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn=
9gradients_transpose_grad_invertpermutation_transpose_perm)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4�V
gradients/grad_ys_0Identityplaceholder*
T0*
_output_shapes
:	�e
gradients/grad_ys_1Identityplaceholder_1*
T0*,
_output_shapes
:����������X
gradients/grad_ys_2Identityplaceholder_2*
T0*
_output_shapes
:	�O
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:�
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
���������{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:�
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*,
_output_shapes
:����������*
shrink_axis_mask�
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:�
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*,
_output_shapes
:����������q
gradients/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"      �   �
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*#
_output_shapes
:��
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*,
_output_shapes
:����������a
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:�
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*D
_output_shapes2
0:���������@:�: :��	*
rnn_modegru�
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:�
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:���������@p
gradients/ExpandDims_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   �   �
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*
_output_shapes
:	�\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :�
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:�dh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:�dh
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:�di
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:��i
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:��i
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:��h
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:�h
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:�h
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:�h
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:�i
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:�i
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:��
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::�
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:�d�
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:�d�
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:�d�
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes

:���
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:���
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:���
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:��
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:��
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:��
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:��
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:��
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:�o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   @   �
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	�@o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   @   �
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	�@o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   @   �
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	�@o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   �   �
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
��o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   �   �
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
��o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   �   �
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
��i
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes	
:�i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:�i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:�j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:�j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:�j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:��
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:�
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	@��
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:�
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	@��
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:�
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	@��
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:�
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
���
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:�
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
���
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:�
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
���
gradients/split_2_grad/concatConcatV2)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:�	�
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	@��
gradients/split_1_grad/concatConcatV2(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
��m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   X  �
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	�r
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:���������@l

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*
_output_shapes
:	�f

Identity_2Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	@�i

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
��i

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	�"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:	�:����������:	�: :����������:: ::���������@:�: :��	:�:: ::::::: : : *<
api_implements*(gru_5bc56a78-7baa-4f36-9887-0040c27d37f9*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_256860*
go_backwards( *

time_major( :% !

_output_shapes
:	�:2.
,
_output_shapes
:����������:%!

_output_shapes
:	�:

_output_shapes
: :2.
,
_output_shapes
:����������: 

_output_shapes
::

_output_shapes
: :

_output_shapes
::1-
+
_output_shapes
:���������@:)	%
#
_output_shapes
:�:


_output_shapes
: :"

_output_shapes

:��	:)%
#
_output_shapes
:�: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�	
�
+__inference_sequential_layer_call_fn_257067

inputs
unknown:@@
	unknown_0:	�
	unknown_1:	@�
	unknown_2:
��
	unknown_3:	�
	unknown_4:	�@
	unknown_5:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_256924s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:���������: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
?__inference_gru_layer_call_and_return_conditional_losses_258309
inputs_0/
read_readvariableop_resource:	�1
read_1_readvariableop_resource:	@�2
read_2_readvariableop_resource:
��1
read_3_readvariableop_resource:	�

identity_4��AssignVariableOp�Read/ReadVariableOp�Read_1/ReadVariableOp�Read_2/ReadVariableOp�Read_3/ReadVariableOpq
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	�*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	�u
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	@�*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	@�v
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource* 
_output_shapes
:
��*
dtype0`

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��u
Read_3/ReadVariableOpReadVariableOpread_3_readvariableop_resource*
_output_shapes
:	�*
dtype0_

Identity_3IdentityRead_3/ReadVariableOp:value:0*
T0*
_output_shapes
:	��
PartitionedCallPartitionedCallinputs_0Identity:output:0Identity_1:output:0Identity_2:output:0Identity_3:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *D
_output_shapes2
0:	�:����������:	�: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *(
f#R!
__inference_standard_gru_258095�
AssignVariableOpAssignVariableOpread_readvariableop_resourcePartitionedCall:output:2^Read/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(n

Identity_4IdentityPartitionedCall:output:1^NoOp*
T0*,
_output_shapes
:�����������
NoOpNoOp^AssignVariableOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp^Read_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : : : 2$
AssignVariableOpAssignVariableOp2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp2.
Read_3/ReadVariableOpRead_3/ReadVariableOp:U Q
+
_output_shapes
:���������@
"
_user_specified_name
inputs/0
�
�
$__inference_gru_layer_call_fn_257927

inputs
unknown:	�
	unknown_0:	@�
	unknown_1:
��
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_gru_layer_call_and_return_conditional_losses_256404t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs
��
�

:__inference___backward_gpu_gru_with_fallback_258910_259045
placeholder
placeholder_1
placeholder_2
placeholder_3/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_7_grad_invertpermutation_transpose_7_perm!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat5
1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn=
9gradients_transpose_grad_invertpermutation_transpose_perm)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4�V
gradients/grad_ys_0Identityplaceholder*
T0*
_output_shapes
:	�e
gradients/grad_ys_1Identityplaceholder_1*
T0*,
_output_shapes
:����������X
gradients/grad_ys_2Identityplaceholder_2*
T0*
_output_shapes
:	�O
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:�
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
���������{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:�
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*,
_output_shapes
:����������*
shrink_axis_mask�
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:�
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*,
_output_shapes
:����������q
gradients/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"      �   �
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*#
_output_shapes
:��
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*,
_output_shapes
:����������a
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:�
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*D
_output_shapes2
0:���������@:�: :��	*
rnn_modegru�
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:�
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:���������@p
gradients/ExpandDims_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   �   �
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*
_output_shapes
:	�\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :�
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:�dh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:�dh
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:�di
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:��i
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:��i
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:��h
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:�h
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:�h
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:�h
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:�i
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:�i
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:��
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::�
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:�d�
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:�d�
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:�d�
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes

:���
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:���
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:���
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:��
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:��
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:��
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:��
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:��
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:�o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   @   �
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	�@o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   @   �
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	�@o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   @   �
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	�@o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   �   �
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
��o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   �   �
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
��o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   �   �
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
��i
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes	
:�i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:�i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:�j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:�j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:�j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:��
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:�
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	@��
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:�
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	@��
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:�
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	@��
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:�
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
���
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:�
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
���
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:�
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
���
gradients/split_2_grad/concatConcatV2)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:�	�
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	@��
gradients/split_1_grad/concatConcatV2(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
��m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   X  �
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	�r
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:���������@l

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*
_output_shapes
:	�f

Identity_2Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	@�i

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
��i

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	�"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:	�:����������:	�: :����������:: ::���������@:�: :��	:�:: ::::::: : : *<
api_implements*(gru_19c48921-d68a-486f-b909-1b858cd05649*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_259044*
go_backwards( *

time_major( :% !

_output_shapes
:	�:2.
,
_output_shapes
:����������:%!

_output_shapes
:	�:

_output_shapes
: :2.
,
_output_shapes
:����������: 

_output_shapes
::

_output_shapes
: :

_output_shapes
::1-
+
_output_shapes
:���������@:)	%
#
_output_shapes
:�:


_output_shapes
: :"

_output_shapes

:��	:)%
#
_output_shapes
:�: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�*
�
while_body_255319
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:@*
element_dtype0�
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*
_output_shapes
:	�s
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*
_output_shapes
:	�W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*5
_output_shapes#
!:	�:	�:	�*
	num_splitz
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*
_output_shapes
:	�y
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*
_output_shapes
:	�Y
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*5
_output_shapes#
!:	�:	�:	�*
	num_splitj
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*
_output_shapes
:	�Q
while/SigmoidSigmoidwhile/add:z:0*
T0*
_output_shapes
:	�l
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*
_output_shapes
:	�U
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*
_output_shapes
:	�g
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*
_output_shapes
:	�c
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*
_output_shapes
:	�M

while/TanhTanhwhile/add_2:z:0*
T0*
_output_shapes
:	�d
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*
_output_shapes
:	�P
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?c
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*
_output_shapes
:	�[
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*
_output_shapes
:	�`
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*
_output_shapes
:	��
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype0:���O
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: W
while/Identity_4Identitywhile/add_3:z:0*
T0*
_output_shapes
:	�"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<: : : : :	�: : :	@�:�:
��:�: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	�:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	@�:!

_output_shapes	
:�:&	"
 
_output_shapes
:
��:!


_output_shapes	
:�
�4
�
(__inference_gpu_gru_with_fallback_257706

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3�c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������@P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : g

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*#
_output_shapes
:�Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0kernel*
T0*5
_output_shapes#
!:	@�:	@�:	@�*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*8
_output_shapes&
$:
��:
��:
��*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:�	S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : �
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*>
_output_shapes,
*:�:�:�:�:�:�*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
���������a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_4	Transposesplit_1:output:0transpose_4/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:��a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:1transpose_5/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:��a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:��\
	Reshape_7Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:�\
	Reshape_8Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:�\
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:�]

Reshape_10Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:�]

Reshape_11Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:�]

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:�M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes

:��	U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    �
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*A
_output_shapes/
-:����������:�: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*,
_output_shapes
:����������h
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	�*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @V
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes
:	�^

Identity_1Identitytranspose_7:y:0*
T0*,
_output_shapes
:����������R

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	�I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:���������@:	�:	@�:
��:	�*<
api_implements*(gru_8da67801-88e6-4edc-90e8-b744ecf7bb1f*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs:GC

_output_shapes
:	�
 
_user_specified_nameinit_h:GC

_output_shapes
:	@�
 
_user_specified_namekernel:RN
 
_output_shapes
:
��
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	�

_user_specified_namebias
�	
�
E__inference_embedding_layer_call_and_return_conditional_losses_256032

inputs)
embedding_lookup_256026:@@
identity��embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:����������
embedding_lookupResourceGatherembedding_lookup_256026Cast:y:0*
Tindices0**
_class 
loc:@embedding_lookup/256026*+
_output_shapes
:���������@*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/256026*+
_output_shapes
:���������@�
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������@w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:���������@Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�>
�
&__forward_gpu_gru_with_fallback_258306

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
cudnnrnn
transpose_7_perm

cudnnrnn_0

cudnnrnn_1
	transpose

expanddims
cudnnrnn_input_c

concat

cudnnrnn_2
transpose_perm
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dim�c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : g

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*#
_output_shapes
:�Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0kernel*
T0*5
_output_shapes#
!:	@�:	@�:	@�*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*8
_output_shapes&
$:
��:
��:
��*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:�	S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : �
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*>
_output_shapes,
*:�:�:�:�:�:�*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
���������a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_4	Transposesplit_1:output:0transpose_4/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:��a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:1transpose_5/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:��a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:��\
	Reshape_7Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:�\
	Reshape_8Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:�\
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:�]

Reshape_10Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:�]

Reshape_11Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:�]

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:�M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    �
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*A
_output_shapes/
-:����������:�: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*,
_output_shapes
:����������h
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	�*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @V
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes
:	�^

Identity_1Identitytranspose_7:y:0*
T0*,
_output_shapes
:����������R

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	�I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_c:0"&

cudnnrnn_1CudnnRNN:reserve_space:0"!

cudnnrnn_2CudnnRNN:output_h:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:���������@:	�:	@�:
��:	�*<
api_implements*(gru_2d7b9471-187b-4a97-b1dc-57408aa712ec*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_258172_258307*
go_backwards( *

time_major( :S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs:GC

_output_shapes
:	�
 
_user_specified_nameinit_h:GC

_output_shapes
:	@�
 
_user_specified_namekernel:RN
 
_output_shapes
:
��
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	�

_user_specified_namebias
�4
�
(__inference_gpu_gru_with_fallback_257304

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3�c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������@P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : g

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*#
_output_shapes
:�Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0kernel*
T0*5
_output_shapes#
!:	@�:	@�:	@�*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*8
_output_shapes&
$:
��:
��:
��*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:�	S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : �
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*>
_output_shapes,
*:�:�:�:�:�:�*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
���������a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_4	Transposesplit_1:output:0transpose_4/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:��a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:1transpose_5/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:��a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:��\
	Reshape_7Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:�\
	Reshape_8Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:�\
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:�]

Reshape_10Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:�]

Reshape_11Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:�]

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:�M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes

:��	U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    �
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*A
_output_shapes/
-:����������:�: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*,
_output_shapes
:����������h
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	�*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @V
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes
:	�^

Identity_1Identitytranspose_7:y:0*
T0*,
_output_shapes
:����������R

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	�I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:���������@:	�:	@�:
��:	�*<
api_implements*(gru_09d5e506-df40-4942-8c68-99787e52d095*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs:GC

_output_shapes
:	�
 
_user_specified_nameinit_h:GC

_output_shapes
:	@�
 
_user_specified_namekernel:RN
 
_output_shapes
:
��
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	�

_user_specified_namebias
�	
�
while_cond_254918
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_254918___redundant_placeholder04
0while_while_cond_254918___redundant_placeholder14
0while_while_cond_254918___redundant_placeholder24
0while_while_cond_254918___redundant_placeholder34
0while_while_cond_254918___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
): : : : :	�: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	�:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
��
�

:__inference___backward_gpu_gru_with_fallback_256267_256402
placeholder
placeholder_1
placeholder_2
placeholder_3/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_7_grad_invertpermutation_transpose_7_perm!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat5
1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn=
9gradients_transpose_grad_invertpermutation_transpose_perm)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4�V
gradients/grad_ys_0Identityplaceholder*
T0*
_output_shapes
:	�e
gradients/grad_ys_1Identityplaceholder_1*
T0*,
_output_shapes
:����������X
gradients/grad_ys_2Identityplaceholder_2*
T0*
_output_shapes
:	�O
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:�
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
���������{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:�
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*,
_output_shapes
:����������*
shrink_axis_mask�
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:�
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*,
_output_shapes
:����������q
gradients/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"      �   �
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*#
_output_shapes
:��
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*,
_output_shapes
:����������a
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:�
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*D
_output_shapes2
0:���������@:�: :��	*
rnn_modegru�
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:�
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:���������@p
gradients/ExpandDims_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   �   �
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*
_output_shapes
:	�\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :�
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:�dh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:�dh
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:�di
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:��i
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:��i
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:��h
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:�h
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:�h
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:�h
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:�i
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:�i
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:��
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::�
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:�d�
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:�d�
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:�d�
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes

:���
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:���
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:���
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:��
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:��
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:��
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:��
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:��
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:�o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   @   �
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	�@o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   @   �
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	�@o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   @   �
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	�@o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   �   �
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
��o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   �   �
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
��o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   �   �
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
��i
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes	
:�i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:�i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:�j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:�j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:�j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:��
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:�
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	@��
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:�
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	@��
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:�
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	@��
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:�
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
���
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:�
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
���
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:�
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
���
gradients/split_2_grad/concatConcatV2)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:�	�
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	@��
gradients/split_1_grad/concatConcatV2(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
��m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   X  �
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	�r
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:���������@l

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*
_output_shapes
:	�f

Identity_2Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	@�i

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
��i

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	�"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:	�:����������:	�: :����������:: ::���������@:�: :��	:�:: ::::::: : : *<
api_implements*(gru_f3ede161-ce7c-4e7e-afe4-b4d81e89d854*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_256401*
go_backwards( *

time_major( :% !

_output_shapes
:	�:2.
,
_output_shapes
:����������:%!

_output_shapes
:	�:

_output_shapes
: :2.
,
_output_shapes
:����������: 

_output_shapes
::

_output_shapes
: :

_output_shapes
::1-
+
_output_shapes
:���������@:)	%
#
_output_shapes
:�:


_output_shapes
: :"

_output_shapes

:��	:)%
#
_output_shapes
:�: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�	
�
while_cond_256100
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_256100___redundant_placeholder04
0while_while_cond_256100___redundant_placeholder14
0while_while_cond_256100___redundant_placeholder24
0while_while_cond_256100___redundant_placeholder34
0while_while_cond_256100___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
): : : : :	�: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	�:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
�	
�
$__inference_signature_wrapper_257029
embedding_input
unknown:@@
	unknown_0:	�
	unknown_1:	@�
	unknown_2:
��
	unknown_3:	�
	unknown_4:	�@
	unknown_5:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallembedding_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__wrapped_model_255249s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:���������: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
'
_output_shapes
:���������
)
_user_specified_nameembedding_input
�*
�
while_body_258375
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:@*
element_dtype0�
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*
_output_shapes
:	�s
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*
_output_shapes
:	�W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*5
_output_shapes#
!:	�:	�:	�*
	num_splitz
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*
_output_shapes
:	�y
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*
_output_shapes
:	�Y
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*5
_output_shapes#
!:	�:	�:	�*
	num_splitj
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*
_output_shapes
:	�Q
while/SigmoidSigmoidwhile/add:z:0*
T0*
_output_shapes
:	�l
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*
_output_shapes
:	�U
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*
_output_shapes
:	�g
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*
_output_shapes
:	�c
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*
_output_shapes
:	�M

while/TanhTanhwhile/add_2:z:0*
T0*
_output_shapes
:	�d
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*
_output_shapes
:	�P
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?c
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*
_output_shapes
:	�[
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*
_output_shapes
:	�`
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*
_output_shapes
:	��
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype0:���O
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: W
while/Identity_4Identitywhile/add_3:z:0*
T0*
_output_shapes
:	�"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<: : : : :	�: : :	@�:�:
��:�: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	�:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	@�:!

_output_shapes	
:�:&	"
 
_output_shapes
:
��:!


_output_shapes	
:�
��
�

:__inference___backward_gpu_gru_with_fallback_255485_255620
placeholder
placeholder_1
placeholder_2
placeholder_3/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_7_grad_invertpermutation_transpose_7_perm!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat5
1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn=
9gradients_transpose_grad_invertpermutation_transpose_perm)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4�V
gradients/grad_ys_0Identityplaceholder*
T0*
_output_shapes
:	�e
gradients/grad_ys_1Identityplaceholder_1*
T0*,
_output_shapes
:����������X
gradients/grad_ys_2Identityplaceholder_2*
T0*
_output_shapes
:	�O
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:�
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
���������{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:�
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*,
_output_shapes
:����������*
shrink_axis_mask�
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:�
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*,
_output_shapes
:����������q
gradients/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"      �   �
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*#
_output_shapes
:��
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*,
_output_shapes
:����������a
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:�
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*D
_output_shapes2
0:���������@:�: :��	*
rnn_modegru�
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:�
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:���������@p
gradients/ExpandDims_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   �   �
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*
_output_shapes
:	�\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :�
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:�dh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:�dh
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:�di
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:��i
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:��i
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:��h
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:�h
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:�h
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:�h
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:�i
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:�i
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:��
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::�
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:�d�
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:�d�
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:�d�
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes

:���
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:���
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:���
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:��
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:��
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:��
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:��
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:��
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:�o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   @   �
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	�@o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   @   �
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	�@o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   @   �
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	�@o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   �   �
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
��o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   �   �
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
��o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   �   �
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
��i
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes	
:�i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:�i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:�j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:�j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:�j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:��
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:�
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	@��
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:�
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	@��
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:�
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	@��
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:�
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
���
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:�
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
���
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:�
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
���
gradients/split_2_grad/concatConcatV2)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:�	�
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	@��
gradients/split_1_grad/concatConcatV2(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
��m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   X  �
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	�r
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:���������@l

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*
_output_shapes
:	�f

Identity_2Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	@�i

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
��i

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	�"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:	�:����������:	�: :����������:: ::���������@:�: :��	:�:: ::::::: : : *<
api_implements*(gru_60426ad3-9a85-4a83-a42b-06e99d63ae80*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_255619*
go_backwards( *

time_major( :% !

_output_shapes
:	�:2.
,
_output_shapes
:����������:%!

_output_shapes
:	�:

_output_shapes
: :2.
,
_output_shapes
:����������: 

_output_shapes
::

_output_shapes
: :

_output_shapes
::1-
+
_output_shapes
:���������@:)	%
#
_output_shapes
:�:


_output_shapes
: :"

_output_shapes

:��	:)%
#
_output_shapes
:�: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�;
�
__inference_standard_gru_256649

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
:�:�*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������@B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@*
shrink_axis_mask\
MatMulMatMulstrided_slice_1:output:0kernel*
T0*
_output_shapes
:	�`
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*
_output_shapes
:	�Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*5
_output_shapes#
!:	�:	�:	�*
	num_splitV
MatMul_1MatMulinit_hrecurrent_kernel*
T0*
_output_shapes
:	�d
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*
_output_shapes
:	�S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*5
_output_shapes#
!:	�:	�:	�*
	num_splitX
addAddV2split:output:0split_1:output:0*
T0*
_output_shapes
:	�E
SigmoidSigmoidadd:z:0*
T0*
_output_shapes
:	�Z
add_1AddV2split:output:1split_1:output:1*
T0*
_output_shapes
:	�I
	Sigmoid_1Sigmoid	add_1:z:0*
T0*
_output_shapes
:	�U
mulMulSigmoid_1:y:0split_1:output:2*
T0*
_output_shapes
:	�Q
add_2AddV2split:output:2mul:z:0*
T0*
_output_shapes
:	�A
TanhTanh	add_2:z:0*
T0*
_output_shapes
:	�K
mul_1MulSigmoid:y:0init_h*
T0*
_output_shapes
:	�J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?Q
subSubsub/x:output:0Sigmoid:y:0*
T0*
_output_shapes
:	�I
mul_2Mulsub:z:0Tanh:y:0*
T0*
_output_shapes
:	�N
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*
_output_shapes
:	�n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*P
_output_shapes>
<: : : : :	�: : :	@�:�:
��:�* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_256560*
condR
while_cond_256559*O
output_shapes>
<: : : : :	�: : :	@�:�:
��:�*
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:����������[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  �?X
IdentityIdentitystrided_slice_2:output:0*
T0*
_output_shapes
:	�^

Identity_1Identitytranspose_1:y:0*
T0*,
_output_shapes
:����������P

Identity_2Identitywhile:output:4*
T0*
_output_shapes
:	�I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:���������@:	�:	@�:
��:	�*<
api_implements*(gru_5bc56a78-7baa-4f36-9887-0040c27d37f9*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs:GC

_output_shapes
:	�
 
_user_specified_nameinit_h:GC

_output_shapes
:	@�
 
_user_specified_namekernel:RN
 
_output_shapes
:
��
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	�

_user_specified_namebias
�D
�
!__inference__wrapped_model_255249
embedding_input>
,sequential_embedding_embedding_lookup_254851:@@>
+sequential_gru_read_readvariableop_resource:	�@
-sequential_gru_read_1_readvariableop_resource:	@�A
-sequential_gru_read_2_readvariableop_resource:
��@
-sequential_gru_read_3_readvariableop_resource:	�E
2sequential_dense_tensordot_readvariableop_resource:	�@>
0sequential_dense_biasadd_readvariableop_resource:@
identity��'sequential/dense/BiasAdd/ReadVariableOp�)sequential/dense/Tensordot/ReadVariableOp�%sequential/embedding/embedding_lookup�sequential/gru/AssignVariableOp�"sequential/gru/Read/ReadVariableOp�$sequential/gru/Read_1/ReadVariableOp�$sequential/gru/Read_2/ReadVariableOp�$sequential/gru/Read_3/ReadVariableOps
sequential/embedding/CastCastembedding_input*

DstT0*

SrcT0*'
_output_shapes
:����������
%sequential/embedding/embedding_lookupResourceGather,sequential_embedding_embedding_lookup_254851sequential/embedding/Cast:y:0*
Tindices0*?
_class5
31loc:@sequential/embedding/embedding_lookup/254851*+
_output_shapes
:���������@*
dtype0�
.sequential/embedding/embedding_lookup/IdentityIdentity.sequential/embedding/embedding_lookup:output:0*
T0*?
_class5
31loc:@sequential/embedding/embedding_lookup/254851*+
_output_shapes
:���������@�
0sequential/embedding/embedding_lookup/Identity_1Identity7sequential/embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������@�
"sequential/gru/Read/ReadVariableOpReadVariableOp+sequential_gru_read_readvariableop_resource*
_output_shapes
:	�*
dtype0y
sequential/gru/IdentityIdentity*sequential/gru/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	��
$sequential/gru/Read_1/ReadVariableOpReadVariableOp-sequential_gru_read_1_readvariableop_resource*
_output_shapes
:	@�*
dtype0}
sequential/gru/Identity_1Identity,sequential/gru/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	@��
$sequential/gru/Read_2/ReadVariableOpReadVariableOp-sequential_gru_read_2_readvariableop_resource* 
_output_shapes
:
��*
dtype0~
sequential/gru/Identity_2Identity,sequential/gru/Read_2/ReadVariableOp:value:0*
T0* 
_output_shapes
:
���
$sequential/gru/Read_3/ReadVariableOpReadVariableOp-sequential_gru_read_3_readvariableop_resource*
_output_shapes
:	�*
dtype0}
sequential/gru/Identity_3Identity,sequential/gru/Read_3/ReadVariableOp:value:0*
T0*
_output_shapes
:	��
sequential/gru/PartitionedCallPartitionedCall9sequential/embedding/embedding_lookup/Identity_1:output:0 sequential/gru/Identity:output:0"sequential/gru/Identity_1:output:0"sequential/gru/Identity_2:output:0"sequential/gru/Identity_3:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *D
_output_shapes2
0:	�:����������:	�: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *(
f#R!
__inference_standard_gru_255008�
sequential/gru/AssignVariableOpAssignVariableOp+sequential_gru_read_readvariableop_resource'sequential/gru/PartitionedCall:output:2#^sequential/gru/Read/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
)sequential/dense/Tensordot/ReadVariableOpReadVariableOp2sequential_dense_tensordot_readvariableop_resource*
_output_shapes
:	�@*
dtype0i
sequential/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:p
sequential/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       w
 sequential/dense/Tensordot/ShapeShape'sequential/gru/PartitionedCall:output:1*
T0*
_output_shapes
:j
(sequential/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
#sequential/dense/Tensordot/GatherV2GatherV2)sequential/dense/Tensordot/Shape:output:0(sequential/dense/Tensordot/free:output:01sequential/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:l
*sequential/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
%sequential/dense/Tensordot/GatherV2_1GatherV2)sequential/dense/Tensordot/Shape:output:0(sequential/dense/Tensordot/axes:output:03sequential/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:j
 sequential/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
sequential/dense/Tensordot/ProdProd,sequential/dense/Tensordot/GatherV2:output:0)sequential/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: l
"sequential/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
!sequential/dense/Tensordot/Prod_1Prod.sequential/dense/Tensordot/GatherV2_1:output:0+sequential/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: h
&sequential/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
!sequential/dense/Tensordot/concatConcatV2(sequential/dense/Tensordot/free:output:0(sequential/dense/Tensordot/axes:output:0/sequential/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
 sequential/dense/Tensordot/stackPack(sequential/dense/Tensordot/Prod:output:0*sequential/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
$sequential/dense/Tensordot/transpose	Transpose'sequential/gru/PartitionedCall:output:1*sequential/dense/Tensordot/concat:output:0*
T0*,
_output_shapes
:�����������
"sequential/dense/Tensordot/ReshapeReshape(sequential/dense/Tensordot/transpose:y:0)sequential/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
!sequential/dense/Tensordot/MatMulMatMul+sequential/dense/Tensordot/Reshape:output:01sequential/dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@l
"sequential/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@j
(sequential/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
#sequential/dense/Tensordot/concat_1ConcatV2,sequential/dense/Tensordot/GatherV2:output:0+sequential/dense/Tensordot/Const_2:output:01sequential/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
sequential/dense/TensordotReshape+sequential/dense/Tensordot/MatMul:product:0,sequential/dense/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������@�
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
sequential/dense/BiasAddBiasAdd#sequential/dense/Tensordot:output:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������@|
sequential/dense/SoftmaxSoftmax!sequential/dense/BiasAdd:output:0*
T0*+
_output_shapes
:���������@u
IdentityIdentity"sequential/dense/Softmax:softmax:0^NoOp*
T0*+
_output_shapes
:���������@�
NoOpNoOp(^sequential/dense/BiasAdd/ReadVariableOp*^sequential/dense/Tensordot/ReadVariableOp&^sequential/embedding/embedding_lookup ^sequential/gru/AssignVariableOp#^sequential/gru/Read/ReadVariableOp%^sequential/gru/Read_1/ReadVariableOp%^sequential/gru/Read_2/ReadVariableOp%^sequential/gru/Read_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:���������: : : : : : : 2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2V
)sequential/dense/Tensordot/ReadVariableOp)sequential/dense/Tensordot/ReadVariableOp2N
%sequential/embedding/embedding_lookup%sequential/embedding/embedding_lookup2B
sequential/gru/AssignVariableOpsequential/gru/AssignVariableOp2H
"sequential/gru/Read/ReadVariableOp"sequential/gru/Read/ReadVariableOp2L
$sequential/gru/Read_1/ReadVariableOp$sequential/gru/Read_1/ReadVariableOp2L
$sequential/gru/Read_2/ReadVariableOp$sequential/gru/Read_2/ReadVariableOp2L
$sequential/gru/Read_3/ReadVariableOp$sequential/gru/Read_3/ReadVariableOp:X T
'
_output_shapes
:���������
)
_user_specified_nameembedding_input
�	
�
while_cond_256559
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_256559___redundant_placeholder04
0while_while_cond_256559___redundant_placeholder14
0while_while_cond_256559___redundant_placeholder24
0while_while_cond_256559___redundant_placeholder34
0while_while_cond_256559___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
): : : : :	�: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	�:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
�4
�
(__inference_gpu_gru_with_fallback_255084

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3�c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������@P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : g

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*#
_output_shapes
:�Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0kernel*
T0*5
_output_shapes#
!:	@�:	@�:	@�*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*8
_output_shapes&
$:
��:
��:
��*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:�	S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : �
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*>
_output_shapes,
*:�:�:�:�:�:�*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
���������a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_4	Transposesplit_1:output:0transpose_4/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:��a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:1transpose_5/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:��a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:��\
	Reshape_7Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:�\
	Reshape_8Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:�\
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:�]

Reshape_10Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:�]

Reshape_11Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:�]

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:�M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes

:��	U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    �
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*A
_output_shapes/
-:����������:�: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*,
_output_shapes
:����������h
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	�*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @V
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes
:	�^

Identity_1Identitytranspose_7:y:0*
T0*,
_output_shapes
:����������R

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	�I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:���������@:	�:	@�:
��:	�*<
api_implements*(gru_143ba06e-5c19-42a2-8213-980f4e6147b7*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs:GC

_output_shapes
:	�
 
_user_specified_nameinit_h:GC

_output_shapes
:	@�
 
_user_specified_namekernel:RN
 
_output_shapes
:
��
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	�

_user_specified_namebias
�
�
?__inference_gru_layer_call_and_return_conditional_losses_255622

inputs/
read_readvariableop_resource:	�1
read_1_readvariableop_resource:	@�2
read_2_readvariableop_resource:
��1
read_3_readvariableop_resource:	�

identity_4��AssignVariableOp�Read/ReadVariableOp�Read_1/ReadVariableOp�Read_2/ReadVariableOp�Read_3/ReadVariableOpq
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	�*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	�u
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	@�*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	@�v
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource* 
_output_shapes
:
��*
dtype0`

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��u
Read_3/ReadVariableOpReadVariableOpread_3_readvariableop_resource*
_output_shapes
:	�*
dtype0_

Identity_3IdentityRead_3/ReadVariableOp:value:0*
T0*
_output_shapes
:	��
PartitionedCallPartitionedCallinputsIdentity:output:0Identity_1:output:0Identity_2:output:0Identity_3:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *D
_output_shapes2
0:	�:����������:	�: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *(
f#R!
__inference_standard_gru_255408�
AssignVariableOpAssignVariableOpread_readvariableop_resourcePartitionedCall:output:2^Read/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(n

Identity_4IdentityPartitionedCall:output:1^NoOp*
T0*,
_output_shapes
:�����������
NoOpNoOp^AssignVariableOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp^Read_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : : : 2$
AssignVariableOpAssignVariableOp2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp2.
Read_3/ReadVariableOpRead_3/ReadVariableOp:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs
�>
�
&__forward_gpu_gru_with_fallback_255219

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
cudnnrnn
transpose_7_perm

cudnnrnn_0

cudnnrnn_1
	transpose

expanddims
cudnnrnn_input_c

concat

cudnnrnn_2
transpose_perm
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dim�c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : g

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*#
_output_shapes
:�Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0kernel*
T0*5
_output_shapes#
!:	@�:	@�:	@�*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*8
_output_shapes&
$:
��:
��:
��*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:�	S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : �
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*>
_output_shapes,
*:�:�:�:�:�:�*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
���������a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_4	Transposesplit_1:output:0transpose_4/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:��a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:1transpose_5/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:��a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:��\
	Reshape_7Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:�\
	Reshape_8Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:�\
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:�]

Reshape_10Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:�]

Reshape_11Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:�]

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:�M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    �
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*A
_output_shapes/
-:����������:�: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*,
_output_shapes
:����������h
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	�*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @V
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes
:	�^

Identity_1Identitytranspose_7:y:0*
T0*,
_output_shapes
:����������R

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	�I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_c:0"&

cudnnrnn_1CudnnRNN:reserve_space:0"!

cudnnrnn_2CudnnRNN:output_h:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:���������@:	�:	@�:
��:	�*<
api_implements*(gru_143ba06e-5c19-42a2-8213-980f4e6147b7*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_255085_255220*
go_backwards( *

time_major( :S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs:GC

_output_shapes
:	�
 
_user_specified_nameinit_h:GC

_output_shapes
:	@�
 
_user_specified_namekernel:RN
 
_output_shapes
:
��
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	�

_user_specified_namebias
�
�
F__inference_sequential_layer_call_and_return_conditional_losses_256452

inputs"
embedding_256033:@@

gru_256405:	�

gru_256407:	@�

gru_256409:
��

gru_256411:	�
dense_256446:	�@
dense_256448:@
identity��dense/StatefulPartitionedCall�!embedding/StatefulPartitionedCall�gru/StatefulPartitionedCall�
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_256033*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_256032�
gru/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0
gru_256405
gru_256407
gru_256409
gru_256411*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_gru_layer_call_and_return_conditional_losses_256404�
dense/StatefulPartitionedCallStatefulPartitionedCall$gru/StatefulPartitionedCall:output:0dense_256446dense_256448*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_256445y
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������@�
NoOpNoOp^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^gru/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:���������: : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2:
gru/StatefulPartitionedCallgru/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�4
�
(__inference_gpu_gru_with_fallback_258540

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3�c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������@P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : g

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*#
_output_shapes
:�Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0kernel*
T0*5
_output_shapes#
!:	@�:	@�:	@�*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*8
_output_shapes&
$:
��:
��:
��*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:�	S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : �
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*>
_output_shapes,
*:�:�:�:�:�:�*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
���������a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_4	Transposesplit_1:output:0transpose_4/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:��a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:1transpose_5/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:��a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:��\
	Reshape_7Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:�\
	Reshape_8Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:�\
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:�]

Reshape_10Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:�]

Reshape_11Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:�]

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:�M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes

:��	U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    �
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*A
_output_shapes/
-:����������:�: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*,
_output_shapes
:����������h
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	�*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @V
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes
:	�^

Identity_1Identitytranspose_7:y:0*
T0*,
_output_shapes
:����������R

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	�I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:���������@:	�:	@�:
��:	�*<
api_implements*(gru_c3db9be3-2e84-45bd-b1c9-3aa3120a2350*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs:GC

_output_shapes
:	�
 
_user_specified_nameinit_h:GC

_output_shapes
:	@�
 
_user_specified_namekernel:RN
 
_output_shapes
:
��
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	�

_user_specified_namebias
��
�

:__inference___backward_gpu_gru_with_fallback_259279_259414
placeholder
placeholder_1
placeholder_2
placeholder_3/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_7_grad_invertpermutation_transpose_7_perm!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat5
1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn=
9gradients_transpose_grad_invertpermutation_transpose_perm)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4�V
gradients/grad_ys_0Identityplaceholder*
T0*
_output_shapes
:	�e
gradients/grad_ys_1Identityplaceholder_1*
T0*,
_output_shapes
:����������X
gradients/grad_ys_2Identityplaceholder_2*
T0*
_output_shapes
:	�O
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:�
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
���������{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:�
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*,
_output_shapes
:����������*
shrink_axis_mask�
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:�
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*,
_output_shapes
:����������q
gradients/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"      �   �
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*#
_output_shapes
:��
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*,
_output_shapes
:����������a
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:�
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*D
_output_shapes2
0:���������@:�: :��	*
rnn_modegru�
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:�
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:���������@p
gradients/ExpandDims_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   �   �
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*
_output_shapes
:	�\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :�
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:�dh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:�dh
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:�di
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:��i
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:��i
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:��h
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:�h
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:�h
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:�h
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:�i
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:�i
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:��
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::�
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:�d�
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:�d�
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:�d�
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes

:���
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:���
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:���
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:��
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:��
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:��
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:��
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:��
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:�o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   @   �
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	�@o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   @   �
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	�@o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   @   �
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	�@o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   �   �
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
��o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   �   �
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
��o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   �   �
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
��i
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes	
:�i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:�i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:�j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:�j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:�j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:��
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:�
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	@��
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:�
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	@��
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:�
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	@��
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:�
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
���
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:�
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
���
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:�
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
���
gradients/split_2_grad/concatConcatV2)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:�	�
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	@��
gradients/split_1_grad/concatConcatV2(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
��m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   X  �
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	�r
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:���������@l

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*
_output_shapes
:	�f

Identity_2Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	@�i

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
��i

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	�"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:	�:����������:	�: :����������:: ::���������@:�: :��	:�:: ::::::: : : *<
api_implements*(gru_5995684f-ad86-4c5b-90af-b9c680fa78ba*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_259413*
go_backwards( *

time_major( :% !

_output_shapes
:	�:2.
,
_output_shapes
:����������:%!

_output_shapes
:	�:

_output_shapes
: :2.
,
_output_shapes
:����������: 

_output_shapes
::

_output_shapes
: :

_output_shapes
::1-
+
_output_shapes
:���������@:)	%
#
_output_shapes
:�:


_output_shapes
: :"

_output_shapes

:��	:)%
#
_output_shapes
:�: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�;
�
__inference_standard_gru_255408

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
:�:�*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������@B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@*
shrink_axis_mask\
MatMulMatMulstrided_slice_1:output:0kernel*
T0*
_output_shapes
:	�`
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*
_output_shapes
:	�Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*5
_output_shapes#
!:	�:	�:	�*
	num_splitV
MatMul_1MatMulinit_hrecurrent_kernel*
T0*
_output_shapes
:	�d
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*
_output_shapes
:	�S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*5
_output_shapes#
!:	�:	�:	�*
	num_splitX
addAddV2split:output:0split_1:output:0*
T0*
_output_shapes
:	�E
SigmoidSigmoidadd:z:0*
T0*
_output_shapes
:	�Z
add_1AddV2split:output:1split_1:output:1*
T0*
_output_shapes
:	�I
	Sigmoid_1Sigmoid	add_1:z:0*
T0*
_output_shapes
:	�U
mulMulSigmoid_1:y:0split_1:output:2*
T0*
_output_shapes
:	�Q
add_2AddV2split:output:2mul:z:0*
T0*
_output_shapes
:	�A
TanhTanh	add_2:z:0*
T0*
_output_shapes
:	�K
mul_1MulSigmoid:y:0init_h*
T0*
_output_shapes
:	�J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?Q
subSubsub/x:output:0Sigmoid:y:0*
T0*
_output_shapes
:	�I
mul_2Mulsub:z:0Tanh:y:0*
T0*
_output_shapes
:	�N
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*
_output_shapes
:	�n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*P
_output_shapes>
<: : : : :	�: : :	@�:�:
��:�* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_255319*
condR
while_cond_255318*O
output_shapes>
<: : : : :	�: : :	@�:�:
��:�*
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:����������[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  �?X
IdentityIdentitystrided_slice_2:output:0*
T0*
_output_shapes
:	�^

Identity_1Identitytranspose_1:y:0*
T0*,
_output_shapes
:����������P

Identity_2Identitywhile:output:4*
T0*
_output_shapes
:	�I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:���������@:	�:	@�:
��:	�*<
api_implements*(gru_60426ad3-9a85-4a83-a42b-06e99d63ae80*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs:GC

_output_shapes
:	�
 
_user_specified_nameinit_h:GC

_output_shapes
:	@�
 
_user_specified_namekernel:RN
 
_output_shapes
:
��
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	�

_user_specified_namebias
�	
�
+__inference_sequential_layer_call_fn_257048

inputs
unknown:@@
	unknown_0:	�
	unknown_1:	@�
	unknown_2:
��
	unknown_3:	�
	unknown_4:	�@
	unknown_5:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_256452s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:���������: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
$__inference_gru_layer_call_fn_257901
inputs_0
unknown:	�
	unknown_0:	@�
	unknown_1:
��
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_gru_layer_call_and_return_conditional_losses_255622t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:���������@
"
_user_specified_name
inputs/0
�
~
*__inference_embedding_layer_call_fn_257878

inputs
unknown:@@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_256032s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�>
�
&__forward_gpu_gru_with_fallback_256401

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
cudnnrnn
transpose_7_perm

cudnnrnn_0

cudnnrnn_1
	transpose

expanddims
cudnnrnn_input_c

concat

cudnnrnn_2
transpose_perm
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dim�c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : g

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*#
_output_shapes
:�Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0kernel*
T0*5
_output_shapes#
!:	@�:	@�:	@�*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*8
_output_shapes&
$:
��:
��:
��*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:�	S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : �
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*>
_output_shapes,
*:�:�:�:�:�:�*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
���������a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_4	Transposesplit_1:output:0transpose_4/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:��a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:1transpose_5/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:��a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:��\
	Reshape_7Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:�\
	Reshape_8Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:�\
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:�]

Reshape_10Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:�]

Reshape_11Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:�]

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:�M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    �
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*A
_output_shapes/
-:����������:�: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*,
_output_shapes
:����������h
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	�*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @V
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes
:	�^

Identity_1Identitytranspose_7:y:0*
T0*,
_output_shapes
:����������R

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	�I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_c:0"&

cudnnrnn_1CudnnRNN:reserve_space:0"!

cudnnrnn_2CudnnRNN:output_h:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:���������@:	�:	@�:
��:	�*<
api_implements*(gru_f3ede161-ce7c-4e7e-afe4-b4d81e89d854*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_256267_256402*
go_backwards( *

time_major( :S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs:GC

_output_shapes
:	�
 
_user_specified_nameinit_h:GC

_output_shapes
:	@�
 
_user_specified_namekernel:RN
 
_output_shapes
:
��
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	�

_user_specified_namebias
�4
�
(__inference_gpu_gru_with_fallback_258909

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3�c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������@P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : g

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*#
_output_shapes
:�Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0kernel*
T0*5
_output_shapes#
!:	@�:	@�:	@�*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*8
_output_shapes&
$:
��:
��:
��*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:�	S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : �
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*>
_output_shapes,
*:�:�:�:�:�:�*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
���������a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_4	Transposesplit_1:output:0transpose_4/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:��a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:1transpose_5/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:��a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:��\
	Reshape_7Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:�\
	Reshape_8Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:�\
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:�]

Reshape_10Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:�]

Reshape_11Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:�]

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:�M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes

:��	U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    �
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*A
_output_shapes/
-:����������:�: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*,
_output_shapes
:����������h
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	�*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @V
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes
:	�^

Identity_1Identitytranspose_7:y:0*
T0*,
_output_shapes
:����������R

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	�I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:���������@:	�:	@�:
��:	�*<
api_implements*(gru_19c48921-d68a-486f-b909-1b858cd05649*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs:GC

_output_shapes
:	�
 
_user_specified_nameinit_h:GC

_output_shapes
:	@�
 
_user_specified_namekernel:RN
 
_output_shapes
:
��
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	�

_user_specified_namebias
�;
�
__inference_standard_gru_257228

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
:�:�*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������@B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@*
shrink_axis_mask\
MatMulMatMulstrided_slice_1:output:0kernel*
T0*
_output_shapes
:	�`
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*
_output_shapes
:	�Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*5
_output_shapes#
!:	�:	�:	�*
	num_splitV
MatMul_1MatMulinit_hrecurrent_kernel*
T0*
_output_shapes
:	�d
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*
_output_shapes
:	�S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*5
_output_shapes#
!:	�:	�:	�*
	num_splitX
addAddV2split:output:0split_1:output:0*
T0*
_output_shapes
:	�E
SigmoidSigmoidadd:z:0*
T0*
_output_shapes
:	�Z
add_1AddV2split:output:1split_1:output:1*
T0*
_output_shapes
:	�I
	Sigmoid_1Sigmoid	add_1:z:0*
T0*
_output_shapes
:	�U
mulMulSigmoid_1:y:0split_1:output:2*
T0*
_output_shapes
:	�Q
add_2AddV2split:output:2mul:z:0*
T0*
_output_shapes
:	�A
TanhTanh	add_2:z:0*
T0*
_output_shapes
:	�K
mul_1MulSigmoid:y:0init_h*
T0*
_output_shapes
:	�J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?Q
subSubsub/x:output:0Sigmoid:y:0*
T0*
_output_shapes
:	�I
mul_2Mulsub:z:0Tanh:y:0*
T0*
_output_shapes
:	�N
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*
_output_shapes
:	�n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*P
_output_shapes>
<: : : : :	�: : :	@�:�:
��:�* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_257139*
condR
while_cond_257138*O
output_shapes>
<: : : : :	�: : :	@�:�:
��:�*
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:����������[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  �?X
IdentityIdentitystrided_slice_2:output:0*
T0*
_output_shapes
:	�^

Identity_1Identitytranspose_1:y:0*
T0*,
_output_shapes
:����������P

Identity_2Identitywhile:output:4*
T0*
_output_shapes
:	�I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:���������@:	�:	@�:
��:	�*<
api_implements*(gru_09d5e506-df40-4942-8c68-99787e52d095*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs:GC

_output_shapes
:	�
 
_user_specified_nameinit_h:GC

_output_shapes
:	@�
 
_user_specified_namekernel:RN
 
_output_shapes
:
��
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	�

_user_specified_namebias
�
�
$__inference_gru_layer_call_fn_257914
inputs_0
unknown:	�
	unknown_0:	@�
	unknown_1:
��
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_gru_layer_call_and_return_conditional_losses_256004t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:���������@
"
_user_specified_name
inputs/0
�4
�
(__inference_gpu_gru_with_fallback_256266

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3�c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������@P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : g

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*#
_output_shapes
:�Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0kernel*
T0*5
_output_shapes#
!:	@�:	@�:	@�*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*8
_output_shapes&
$:
��:
��:
��*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:�	S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : �
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*>
_output_shapes,
*:�:�:�:�:�:�*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
���������a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_4	Transposesplit_1:output:0transpose_4/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:��a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:1transpose_5/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:��a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:��\
	Reshape_7Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:�\
	Reshape_8Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:�\
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:�]

Reshape_10Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:�]

Reshape_11Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:�]

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:�M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes

:��	U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    �
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*A
_output_shapes/
-:����������:�: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*,
_output_shapes
:����������h
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	�*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @V
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes
:	�^

Identity_1Identitytranspose_7:y:0*
T0*,
_output_shapes
:����������R

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	�I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:���������@:	�:	@�:
��:	�*<
api_implements*(gru_f3ede161-ce7c-4e7e-afe4-b4d81e89d854*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs:GC

_output_shapes
:	�
 
_user_specified_nameinit_h:GC

_output_shapes
:	@�
 
_user_specified_namekernel:RN
 
_output_shapes
:
��
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	�

_user_specified_namebias
�*
�
while_body_256101
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:@*
element_dtype0�
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*
_output_shapes
:	�s
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*
_output_shapes
:	�W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*5
_output_shapes#
!:	�:	�:	�*
	num_splitz
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*
_output_shapes
:	�y
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*
_output_shapes
:	�Y
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*5
_output_shapes#
!:	�:	�:	�*
	num_splitj
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*
_output_shapes
:	�Q
while/SigmoidSigmoidwhile/add:z:0*
T0*
_output_shapes
:	�l
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*
_output_shapes
:	�U
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*
_output_shapes
:	�g
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*
_output_shapes
:	�c
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*
_output_shapes
:	�M

while/TanhTanhwhile/add_2:z:0*
T0*
_output_shapes
:	�d
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*
_output_shapes
:	�P
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?c
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*
_output_shapes
:	�[
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*
_output_shapes
:	�`
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*
_output_shapes
:	��
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype0:���O
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: W
while/Identity_4Identitywhile/add_3:z:0*
T0*
_output_shapes
:	�"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<: : : : :	�: : :	@�:�:
��:�: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	�:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	@�:!

_output_shapes	
:�:&	"
 
_output_shapes
:
��:!


_output_shapes	
:�
�
�
F__inference_sequential_layer_call_and_return_conditional_losses_257002
embedding_input"
embedding_256984:@@

gru_256987:	�

gru_256989:	@�

gru_256991:
��

gru_256993:	�
dense_256996:	�@
dense_256998:@
identity��dense/StatefulPartitionedCall�!embedding/StatefulPartitionedCall�gru/StatefulPartitionedCall�
!embedding/StatefulPartitionedCallStatefulPartitionedCallembedding_inputembedding_256984*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_256032�
gru/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0
gru_256987
gru_256989
gru_256991
gru_256993*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_gru_layer_call_and_return_conditional_losses_256863�
dense/StatefulPartitionedCallStatefulPartitionedCall$gru/StatefulPartitionedCall:output:0dense_256996dense_256998*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_256445y
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������@�
NoOpNoOp^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^gru/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:���������: : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2:
gru/StatefulPartitionedCallgru/StatefulPartitionedCall:X T
'
_output_shapes
:���������
)
_user_specified_nameembedding_input
�;
�
__inference_standard_gru_255008

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
:�:�*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������@B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@*
shrink_axis_mask\
MatMulMatMulstrided_slice_1:output:0kernel*
T0*
_output_shapes
:	�`
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*
_output_shapes
:	�Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*5
_output_shapes#
!:	�:	�:	�*
	num_splitV
MatMul_1MatMulinit_hrecurrent_kernel*
T0*
_output_shapes
:	�d
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*
_output_shapes
:	�S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*5
_output_shapes#
!:	�:	�:	�*
	num_splitX
addAddV2split:output:0split_1:output:0*
T0*
_output_shapes
:	�E
SigmoidSigmoidadd:z:0*
T0*
_output_shapes
:	�Z
add_1AddV2split:output:1split_1:output:1*
T0*
_output_shapes
:	�I
	Sigmoid_1Sigmoid	add_1:z:0*
T0*
_output_shapes
:	�U
mulMulSigmoid_1:y:0split_1:output:2*
T0*
_output_shapes
:	�Q
add_2AddV2split:output:2mul:z:0*
T0*
_output_shapes
:	�A
TanhTanh	add_2:z:0*
T0*
_output_shapes
:	�K
mul_1MulSigmoid:y:0init_h*
T0*
_output_shapes
:	�J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?Q
subSubsub/x:output:0Sigmoid:y:0*
T0*
_output_shapes
:	�I
mul_2Mulsub:z:0Tanh:y:0*
T0*
_output_shapes
:	�N
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*
_output_shapes
:	�n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*P
_output_shapes>
<: : : : :	�: : :	@�:�:
��:�* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_254919*
condR
while_cond_254918*O
output_shapes>
<: : : : :	�: : :	@�:�:
��:�*
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:����������[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  �?X
IdentityIdentitystrided_slice_2:output:0*
T0*
_output_shapes
:	�^

Identity_1Identitytranspose_1:y:0*
T0*,
_output_shapes
:����������P

Identity_2Identitywhile:output:4*
T0*
_output_shapes
:	�I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:���������@:	�:	@�:
��:	�*<
api_implements*(gru_143ba06e-5c19-42a2-8213-980f4e6147b7*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs:GC

_output_shapes
:	�
 
_user_specified_nameinit_h:GC

_output_shapes
:	@�
 
_user_specified_namekernel:RN
 
_output_shapes
:
��
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	�

_user_specified_namebias
�>
�
&__forward_gpu_gru_with_fallback_256860

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
cudnnrnn
transpose_7_perm

cudnnrnn_0

cudnnrnn_1
	transpose

expanddims
cudnnrnn_input_c

concat

cudnnrnn_2
transpose_perm
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dim�c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : g

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*#
_output_shapes
:�Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0kernel*
T0*5
_output_shapes#
!:	@�:	@�:	@�*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*8
_output_shapes&
$:
��:
��:
��*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:�	S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : �
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*>
_output_shapes,
*:�:�:�:�:�:�*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
���������a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_4	Transposesplit_1:output:0transpose_4/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:��a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:1transpose_5/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:��a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:��\
	Reshape_7Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:�\
	Reshape_8Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:�\
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:�]

Reshape_10Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:�]

Reshape_11Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:�]

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:�M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    �
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*A
_output_shapes/
-:����������:�: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*,
_output_shapes
:����������h
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	�*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @V
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes
:	�^

Identity_1Identitytranspose_7:y:0*
T0*,
_output_shapes
:����������R

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	�I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_c:0"&

cudnnrnn_1CudnnRNN:reserve_space:0"!

cudnnrnn_2CudnnRNN:output_h:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:���������@:	�:	@�:
��:	�*<
api_implements*(gru_5bc56a78-7baa-4f36-9887-0040c27d37f9*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_256726_256861*
go_backwards( *

time_major( :S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs:GC

_output_shapes
:	�
 
_user_specified_nameinit_h:GC

_output_shapes
:	@�
 
_user_specified_namekernel:RN
 
_output_shapes
:
��
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	�

_user_specified_namebias
�	
�
while_cond_255318
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_255318___redundant_placeholder04
0while_while_cond_255318___redundant_placeholder14
0while_while_cond_255318___redundant_placeholder24
0while_while_cond_255318___redundant_placeholder34
0while_while_cond_255318___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
): : : : :	�: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	�:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
��
�

:__inference___backward_gpu_gru_with_fallback_257707_257842
placeholder
placeholder_1
placeholder_2
placeholder_3/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_7_grad_invertpermutation_transpose_7_perm!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat5
1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn=
9gradients_transpose_grad_invertpermutation_transpose_perm)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4�V
gradients/grad_ys_0Identityplaceholder*
T0*
_output_shapes
:	�e
gradients/grad_ys_1Identityplaceholder_1*
T0*,
_output_shapes
:����������X
gradients/grad_ys_2Identityplaceholder_2*
T0*
_output_shapes
:	�O
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:�
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
���������{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:�
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*,
_output_shapes
:����������*
shrink_axis_mask�
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:�
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*,
_output_shapes
:����������q
gradients/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"      �   �
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*#
_output_shapes
:��
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*,
_output_shapes
:����������a
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:�
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*D
_output_shapes2
0:���������@:�: :��	*
rnn_modegru�
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:�
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:���������@p
gradients/ExpandDims_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   �   �
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*
_output_shapes
:	�\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :�
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:�dh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:�dh
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:�di
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:��i
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:��i
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:��h
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:�h
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:�h
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:�h
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:�i
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:�i
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:��
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::�
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:�d�
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:�d�
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:�d�
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes

:���
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:���
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:���
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:��
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:��
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:��
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:��
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:��
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:�o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   @   �
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	�@o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   @   �
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	�@o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   @   �
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	�@o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   �   �
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
��o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   �   �
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
��o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   �   �
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
��i
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes	
:�i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:�i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:�j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:�j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:�j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:��
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:�
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	@��
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:�
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	@��
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:�
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	@��
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:�
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
���
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:�
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
���
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:�
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
���
gradients/split_2_grad/concatConcatV2)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:�	�
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	@��
gradients/split_1_grad/concatConcatV2(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
��m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   X  �
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	�r
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:���������@l

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*
_output_shapes
:	�f

Identity_2Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	@�i

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
��i

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	�"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:	�:����������:	�: :����������:: ::���������@:�: :��	:�:: ::::::: : : *<
api_implements*(gru_8da67801-88e6-4edc-90e8-b744ecf7bb1f*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_257841*
go_backwards( *

time_major( :% !

_output_shapes
:	�:2.
,
_output_shapes
:����������:%!

_output_shapes
:	�:

_output_shapes
: :2.
,
_output_shapes
:����������: 

_output_shapes
::

_output_shapes
: :

_output_shapes
::1-
+
_output_shapes
:���������@:)	%
#
_output_shapes
:�:


_output_shapes
: :"

_output_shapes

:��	:)%
#
_output_shapes
:�: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�*
�
while_body_254919
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:@*
element_dtype0�
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*
_output_shapes
:	�s
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*
_output_shapes
:	�W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*5
_output_shapes#
!:	�:	�:	�*
	num_splitz
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*
_output_shapes
:	�y
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*
_output_shapes
:	�Y
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*5
_output_shapes#
!:	�:	�:	�*
	num_splitj
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*
_output_shapes
:	�Q
while/SigmoidSigmoidwhile/add:z:0*
T0*
_output_shapes
:	�l
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*
_output_shapes
:	�U
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*
_output_shapes
:	�g
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*
_output_shapes
:	�c
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*
_output_shapes
:	�M

while/TanhTanhwhile/add_2:z:0*
T0*
_output_shapes
:	�d
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*
_output_shapes
:	�P
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?c
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*
_output_shapes
:	�[
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*
_output_shapes
:	�`
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*
_output_shapes
:	��
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype0:���O
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: W
while/Identity_4Identitywhile/add_3:z:0*
T0*
_output_shapes
:	�"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<: : : : :	�: : :	@�:�:
��:�: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	�:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	@�:!

_output_shapes	
:�:&	"
 
_output_shapes
:
��:!


_output_shapes	
:�
�4
�
(__inference_gpu_gru_with_fallback_258171

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3�c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������@P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : g

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*#
_output_shapes
:�Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0kernel*
T0*5
_output_shapes#
!:	@�:	@�:	@�*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*8
_output_shapes&
$:
��:
��:
��*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:�	S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : �
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*>
_output_shapes,
*:�:�:�:�:�:�*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
���������a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_4	Transposesplit_1:output:0transpose_4/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:��a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:1transpose_5/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:��a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:��\
	Reshape_7Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:�\
	Reshape_8Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:�\
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:�]

Reshape_10Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:�]

Reshape_11Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:�]

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:�M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes

:��	U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    �
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*A
_output_shapes/
-:����������:�: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*,
_output_shapes
:����������h
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	�*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @V
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes
:	�^

Identity_1Identitytranspose_7:y:0*
T0*,
_output_shapes
:����������R

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	�I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:���������@:	�:	@�:
��:	�*<
api_implements*(gru_2d7b9471-187b-4a97-b1dc-57408aa712ec*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs:GC

_output_shapes
:	�
 
_user_specified_nameinit_h:GC

_output_shapes
:	@�
 
_user_specified_namekernel:RN
 
_output_shapes
:
��
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	�

_user_specified_namebias
�;
�
__inference_standard_gru_258464

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
:�:�*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������@B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@*
shrink_axis_mask\
MatMulMatMulstrided_slice_1:output:0kernel*
T0*
_output_shapes
:	�`
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*
_output_shapes
:	�Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*5
_output_shapes#
!:	�:	�:	�*
	num_splitV
MatMul_1MatMulinit_hrecurrent_kernel*
T0*
_output_shapes
:	�d
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*
_output_shapes
:	�S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*5
_output_shapes#
!:	�:	�:	�*
	num_splitX
addAddV2split:output:0split_1:output:0*
T0*
_output_shapes
:	�E
SigmoidSigmoidadd:z:0*
T0*
_output_shapes
:	�Z
add_1AddV2split:output:1split_1:output:1*
T0*
_output_shapes
:	�I
	Sigmoid_1Sigmoid	add_1:z:0*
T0*
_output_shapes
:	�U
mulMulSigmoid_1:y:0split_1:output:2*
T0*
_output_shapes
:	�Q
add_2AddV2split:output:2mul:z:0*
T0*
_output_shapes
:	�A
TanhTanh	add_2:z:0*
T0*
_output_shapes
:	�K
mul_1MulSigmoid:y:0init_h*
T0*
_output_shapes
:	�J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?Q
subSubsub/x:output:0Sigmoid:y:0*
T0*
_output_shapes
:	�I
mul_2Mulsub:z:0Tanh:y:0*
T0*
_output_shapes
:	�N
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*
_output_shapes
:	�n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*P
_output_shapes>
<: : : : :	�: : :	@�:�:
��:�* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_258375*
condR
while_cond_258374*O
output_shapes>
<: : : : :	�: : :	@�:�:
��:�*
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:����������[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  �?X
IdentityIdentitystrided_slice_2:output:0*
T0*
_output_shapes
:	�^

Identity_1Identitytranspose_1:y:0*
T0*,
_output_shapes
:����������P

Identity_2Identitywhile:output:4*
T0*
_output_shapes
:	�I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:���������@:	�:	@�:
��:	�*<
api_implements*(gru_c3db9be3-2e84-45bd-b1c9-3aa3120a2350*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs:GC

_output_shapes
:	�
 
_user_specified_nameinit_h:GC

_output_shapes
:	@�
 
_user_specified_namekernel:RN
 
_output_shapes
:
��
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	�

_user_specified_namebias
�*
�
while_body_258006
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:@*
element_dtype0�
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*
_output_shapes
:	�s
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*
_output_shapes
:	�W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*5
_output_shapes#
!:	�:	�:	�*
	num_splitz
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*
_output_shapes
:	�y
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*
_output_shapes
:	�Y
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*5
_output_shapes#
!:	�:	�:	�*
	num_splitj
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*
_output_shapes
:	�Q
while/SigmoidSigmoidwhile/add:z:0*
T0*
_output_shapes
:	�l
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*
_output_shapes
:	�U
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*
_output_shapes
:	�g
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*
_output_shapes
:	�c
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*
_output_shapes
:	�M

while/TanhTanhwhile/add_2:z:0*
T0*
_output_shapes
:	�d
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*
_output_shapes
:	�P
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?c
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*
_output_shapes
:	�[
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*
_output_shapes
:	�`
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*
_output_shapes
:	��
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype0:���O
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: W
while/Identity_4Identitywhile/add_3:z:0*
T0*
_output_shapes
:	�"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<: : : : :	�: : :	@�:�:
��:�: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	�:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	@�:!

_output_shapes	
:�:&	"
 
_output_shapes
:
��:!


_output_shapes	
:�
�
�
$__inference_gru_layer_call_fn_257940

inputs
unknown:	�
	unknown_0:	@�
	unknown_1:
��
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_gru_layer_call_and_return_conditional_losses_256863t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
?__inference_gru_layer_call_and_return_conditional_losses_259047

inputs/
read_readvariableop_resource:	�1
read_1_readvariableop_resource:	@�2
read_2_readvariableop_resource:
��1
read_3_readvariableop_resource:	�

identity_4��AssignVariableOp�Read/ReadVariableOp�Read_1/ReadVariableOp�Read_2/ReadVariableOp�Read_3/ReadVariableOpq
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	�*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	�u
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	@�*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	@�v
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource* 
_output_shapes
:
��*
dtype0`

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��u
Read_3/ReadVariableOpReadVariableOpread_3_readvariableop_resource*
_output_shapes
:	�*
dtype0_

Identity_3IdentityRead_3/ReadVariableOp:value:0*
T0*
_output_shapes
:	��
PartitionedCallPartitionedCallinputsIdentity:output:0Identity_1:output:0Identity_2:output:0Identity_3:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *D
_output_shapes2
0:	�:����������:	�: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *(
f#R!
__inference_standard_gru_258833�
AssignVariableOpAssignVariableOpread_readvariableop_resourcePartitionedCall:output:2^Read/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(n

Identity_4IdentityPartitionedCall:output:1^NoOp*
T0*,
_output_shapes
:�����������
NoOpNoOp^AssignVariableOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp^Read_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : : : 2$
AssignVariableOpAssignVariableOp2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp2.
Read_3/ReadVariableOpRead_3/ReadVariableOp:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs
�	
�
+__inference_sequential_layer_call_fn_256469
embedding_input
unknown:@@
	unknown_0:	�
	unknown_1:	@�
	unknown_2:
��
	unknown_3:	�
	unknown_4:	�@
	unknown_5:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallembedding_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_256452s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:���������: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
'
_output_shapes
:���������
)
_user_specified_nameembedding_input
�>
�
&__forward_gpu_gru_with_fallback_257841

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
cudnnrnn
transpose_7_perm

cudnnrnn_0

cudnnrnn_1
	transpose

expanddims
cudnnrnn_input_c

concat

cudnnrnn_2
transpose_perm
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dim�c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : g

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*#
_output_shapes
:�Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0kernel*
T0*5
_output_shapes#
!:	@�:	@�:	@�*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*8
_output_shapes&
$:
��:
��:
��*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:�	S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : �
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*>
_output_shapes,
*:�:�:�:�:�:�*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
���������a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_4	Transposesplit_1:output:0transpose_4/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:��a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:1transpose_5/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:��a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:��\
	Reshape_7Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:�\
	Reshape_8Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:�\
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:�]

Reshape_10Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:�]

Reshape_11Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:�]

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:�M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    �
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*A
_output_shapes/
-:����������:�: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*,
_output_shapes
:����������h
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	�*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @V
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes
:	�^

Identity_1Identitytranspose_7:y:0*
T0*,
_output_shapes
:����������R

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	�I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_c:0"&

cudnnrnn_1CudnnRNN:reserve_space:0"!

cudnnrnn_2CudnnRNN:output_h:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:���������@:	�:	@�:
��:	�*<
api_implements*(gru_8da67801-88e6-4edc-90e8-b744ecf7bb1f*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_257707_257842*
go_backwards( *

time_major( :S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs:GC

_output_shapes
:	�
 
_user_specified_nameinit_h:GC

_output_shapes
:	@�
 
_user_specified_namekernel:RN
 
_output_shapes
:
��
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	�

_user_specified_namebias
�;
�
__inference_standard_gru_258833

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
:�:�*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������@B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@*
shrink_axis_mask\
MatMulMatMulstrided_slice_1:output:0kernel*
T0*
_output_shapes
:	�`
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*
_output_shapes
:	�Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*5
_output_shapes#
!:	�:	�:	�*
	num_splitV
MatMul_1MatMulinit_hrecurrent_kernel*
T0*
_output_shapes
:	�d
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*
_output_shapes
:	�S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*5
_output_shapes#
!:	�:	�:	�*
	num_splitX
addAddV2split:output:0split_1:output:0*
T0*
_output_shapes
:	�E
SigmoidSigmoidadd:z:0*
T0*
_output_shapes
:	�Z
add_1AddV2split:output:1split_1:output:1*
T0*
_output_shapes
:	�I
	Sigmoid_1Sigmoid	add_1:z:0*
T0*
_output_shapes
:	�U
mulMulSigmoid_1:y:0split_1:output:2*
T0*
_output_shapes
:	�Q
add_2AddV2split:output:2mul:z:0*
T0*
_output_shapes
:	�A
TanhTanh	add_2:z:0*
T0*
_output_shapes
:	�K
mul_1MulSigmoid:y:0init_h*
T0*
_output_shapes
:	�J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?Q
subSubsub/x:output:0Sigmoid:y:0*
T0*
_output_shapes
:	�I
mul_2Mulsub:z:0Tanh:y:0*
T0*
_output_shapes
:	�N
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*
_output_shapes
:	�n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*P
_output_shapes>
<: : : : :	�: : :	@�:�:
��:�* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_258744*
condR
while_cond_258743*O
output_shapes>
<: : : : :	�: : :	@�:�:
��:�*
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:����������[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  �?X
IdentityIdentitystrided_slice_2:output:0*
T0*
_output_shapes
:	�^

Identity_1Identitytranspose_1:y:0*
T0*,
_output_shapes
:����������P

Identity_2Identitywhile:output:4*
T0*
_output_shapes
:	�I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:���������@:	�:	@�:
��:	�*<
api_implements*(gru_19c48921-d68a-486f-b909-1b858cd05649*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs:GC

_output_shapes
:	�
 
_user_specified_nameinit_h:GC

_output_shapes
:	@�
 
_user_specified_namekernel:RN
 
_output_shapes
:
��
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	�

_user_specified_namebias
��
�

:__inference___backward_gpu_gru_with_fallback_258172_258307
placeholder
placeholder_1
placeholder_2
placeholder_3/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_7_grad_invertpermutation_transpose_7_perm!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat5
1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn=
9gradients_transpose_grad_invertpermutation_transpose_perm)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4�V
gradients/grad_ys_0Identityplaceholder*
T0*
_output_shapes
:	�e
gradients/grad_ys_1Identityplaceholder_1*
T0*,
_output_shapes
:����������X
gradients/grad_ys_2Identityplaceholder_2*
T0*
_output_shapes
:	�O
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:�
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
���������{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:�
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*,
_output_shapes
:����������*
shrink_axis_mask�
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:�
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*,
_output_shapes
:����������q
gradients/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"      �   �
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*#
_output_shapes
:��
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*,
_output_shapes
:����������a
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:�
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*D
_output_shapes2
0:���������@:�: :��	*
rnn_modegru�
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:�
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:���������@p
gradients/ExpandDims_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   �   �
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*
_output_shapes
:	�\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :�
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:�dh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:�dh
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:�di
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:��i
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:��i
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:��h
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:�h
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:�h
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:�h
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:�i
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:�i
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:��
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::�
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:�d�
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:�d�
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:�d�
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes

:���
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:���
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:���
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:��
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:��
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:��
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:��
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:��
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:�o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   @   �
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	�@o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   @   �
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	�@o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   @   �
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	�@o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   �   �
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
��o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   �   �
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
��o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   �   �
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
��i
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes	
:�i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:�i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:�j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:�j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:�j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:��
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:�
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	@��
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:�
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	@��
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:�
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	@��
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:�
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
���
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:�
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
���
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:�
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
���
gradients/split_2_grad/concatConcatV2)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:�	�
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	@��
gradients/split_1_grad/concatConcatV2(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
��m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   X  �
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	�r
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:���������@l

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*
_output_shapes
:	�f

Identity_2Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	@�i

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
��i

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	�"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:	�:����������:	�: :����������:: ::���������@:�: :��	:�:: ::::::: : : *<
api_implements*(gru_2d7b9471-187b-4a97-b1dc-57408aa712ec*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_258306*
go_backwards( *

time_major( :% !

_output_shapes
:	�:2.
,
_output_shapes
:����������:%!

_output_shapes
:	�:

_output_shapes
: :2.
,
_output_shapes
:����������: 

_output_shapes
::

_output_shapes
: :

_output_shapes
::1-
+
_output_shapes
:���������@:)	%
#
_output_shapes
:�:


_output_shapes
: :"

_output_shapes

:��	:)%
#
_output_shapes
:�: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�>
�
&__forward_gpu_gru_with_fallback_259413

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
cudnnrnn
transpose_7_perm

cudnnrnn_0

cudnnrnn_1
	transpose

expanddims
cudnnrnn_input_c

concat

cudnnrnn_2
transpose_perm
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dim�c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : g

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*#
_output_shapes
:�Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0kernel*
T0*5
_output_shapes#
!:	@�:	@�:	@�*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*8
_output_shapes&
$:
��:
��:
��*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:�	S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : �
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*>
_output_shapes,
*:�:�:�:�:�:�*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
���������a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_4	Transposesplit_1:output:0transpose_4/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:��a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:1transpose_5/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:��a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:��\
	Reshape_7Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:�\
	Reshape_8Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:�\
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:�]

Reshape_10Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:�]

Reshape_11Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:�]

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:�M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    �
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*A
_output_shapes/
-:����������:�: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*,
_output_shapes
:����������h
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	�*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @V
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes
:	�^

Identity_1Identitytranspose_7:y:0*
T0*,
_output_shapes
:����������R

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	�I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_c:0"&

cudnnrnn_1CudnnRNN:reserve_space:0"!

cudnnrnn_2CudnnRNN:output_h:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:���������@:	�:	@�:
��:	�*<
api_implements*(gru_5995684f-ad86-4c5b-90af-b9c680fa78ba*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_259279_259414*
go_backwards( *

time_major( :S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs:GC

_output_shapes
:	�
 
_user_specified_nameinit_h:GC

_output_shapes
:	@�
 
_user_specified_namekernel:RN
 
_output_shapes
:
��
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	�

_user_specified_namebias
�*
�
while_body_256560
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:@*
element_dtype0�
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*
_output_shapes
:	�s
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*
_output_shapes
:	�W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*5
_output_shapes#
!:	�:	�:	�*
	num_splitz
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*
_output_shapes
:	�y
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*
_output_shapes
:	�Y
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*5
_output_shapes#
!:	�:	�:	�*
	num_splitj
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*
_output_shapes
:	�Q
while/SigmoidSigmoidwhile/add:z:0*
T0*
_output_shapes
:	�l
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*
_output_shapes
:	�U
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*
_output_shapes
:	�g
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*
_output_shapes
:	�c
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*
_output_shapes
:	�M

while/TanhTanhwhile/add_2:z:0*
T0*
_output_shapes
:	�d
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*
_output_shapes
:	�P
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?c
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*
_output_shapes
:	�[
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*
_output_shapes
:	�`
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*
_output_shapes
:	��
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype0:���O
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: W
while/Identity_4Identitywhile/add_3:z:0*
T0*
_output_shapes
:	�"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<: : : : :	�: : :	@�:�:
��:�: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	�:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	@�:!

_output_shapes	
:�:&	"
 
_output_shapes
:
��:!


_output_shapes	
:�
��
�

:__inference___backward_gpu_gru_with_fallback_258541_258676
placeholder
placeholder_1
placeholder_2
placeholder_3/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_7_grad_invertpermutation_transpose_7_perm!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat5
1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn=
9gradients_transpose_grad_invertpermutation_transpose_perm)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4�V
gradients/grad_ys_0Identityplaceholder*
T0*
_output_shapes
:	�e
gradients/grad_ys_1Identityplaceholder_1*
T0*,
_output_shapes
:����������X
gradients/grad_ys_2Identityplaceholder_2*
T0*
_output_shapes
:	�O
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:�
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
���������{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:�
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*,
_output_shapes
:����������*
shrink_axis_mask�
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:�
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*,
_output_shapes
:����������q
gradients/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"      �   �
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*#
_output_shapes
:��
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*,
_output_shapes
:����������a
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:�
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*D
_output_shapes2
0:���������@:�: :��	*
rnn_modegru�
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:�
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:���������@p
gradients/ExpandDims_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   �   �
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*
_output_shapes
:	�\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :�
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:�dh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:�dh
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:�di
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:��i
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:��i
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:��h
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:�h
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:�h
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:�h
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:�i
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:�i
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:��
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::�
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:�d�
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:�d�
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:�d�
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes

:���
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:���
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:���
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:��
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:��
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:��
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:��
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:��
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:�o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   @   �
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	�@o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   @   �
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	�@o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   @   �
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	�@o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   �   �
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
��o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   �   �
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
��o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   �   �
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
��i
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes	
:�i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:�i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:�j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:�j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:�j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:��
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:�
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	@��
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:�
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	@��
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:�
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	@��
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:�
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
���
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:�
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
���
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:�
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
���
gradients/split_2_grad/concatConcatV2)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:�	�
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	@��
gradients/split_1_grad/concatConcatV2(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
��m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   X  �
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	�r
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:���������@l

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*
_output_shapes
:	�f

Identity_2Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	@�i

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
��i

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	�"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:	�:����������:	�: :����������:: ::���������@:�: :��	:�:: ::::::: : : *<
api_implements*(gru_c3db9be3-2e84-45bd-b1c9-3aa3120a2350*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_258675*
go_backwards( *

time_major( :% !

_output_shapes
:	�:2.
,
_output_shapes
:����������:%!

_output_shapes
:	�:

_output_shapes
: :2.
,
_output_shapes
:����������: 

_output_shapes
::

_output_shapes
: :

_output_shapes
::1-
+
_output_shapes
:���������@:)	%
#
_output_shapes
:�:


_output_shapes
: :"

_output_shapes

:��	:)%
#
_output_shapes
:�: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�	
�
while_cond_258374
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_258374___redundant_placeholder04
0while_while_cond_258374___redundant_placeholder14
0while_while_cond_258374___redundant_placeholder24
0while_while_cond_258374___redundant_placeholder34
0while_while_cond_258374___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
): : : : :	�: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	�:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
�
�
?__inference_gru_layer_call_and_return_conditional_losses_258678
inputs_0/
read_readvariableop_resource:	�1
read_1_readvariableop_resource:	@�2
read_2_readvariableop_resource:
��1
read_3_readvariableop_resource:	�

identity_4��AssignVariableOp�Read/ReadVariableOp�Read_1/ReadVariableOp�Read_2/ReadVariableOp�Read_3/ReadVariableOpq
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	�*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	�u
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	@�*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	@�v
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource* 
_output_shapes
:
��*
dtype0`

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��u
Read_3/ReadVariableOpReadVariableOpread_3_readvariableop_resource*
_output_shapes
:	�*
dtype0_

Identity_3IdentityRead_3/ReadVariableOp:value:0*
T0*
_output_shapes
:	��
PartitionedCallPartitionedCallinputs_0Identity:output:0Identity_1:output:0Identity_2:output:0Identity_3:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *D
_output_shapes2
0:	�:����������:	�: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *(
f#R!
__inference_standard_gru_258464�
AssignVariableOpAssignVariableOpread_readvariableop_resourcePartitionedCall:output:2^Read/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(n

Identity_4IdentityPartitionedCall:output:1^NoOp*
T0*,
_output_shapes
:�����������
NoOpNoOp^AssignVariableOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp^Read_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : : : 2$
AssignVariableOpAssignVariableOp2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp2.
Read_3/ReadVariableOpRead_3/ReadVariableOp:U Q
+
_output_shapes
:���������@
"
_user_specified_name
inputs/0
�
�
&__inference_dense_layer_call_fn_259425

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
 *+
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_256445s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�>
�
&__forward_gpu_gru_with_fallback_256001

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
cudnnrnn
transpose_7_perm

cudnnrnn_0

cudnnrnn_1
	transpose

expanddims
cudnnrnn_input_c

concat

cudnnrnn_2
transpose_perm
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dim�c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : g

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*#
_output_shapes
:�Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0kernel*
T0*5
_output_shapes#
!:	@�:	@�:	@�*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*8
_output_shapes&
$:
��:
��:
��*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:�	S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : �
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*>
_output_shapes,
*:�:�:�:�:�:�*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
���������a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_4	Transposesplit_1:output:0transpose_4/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:��a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:1transpose_5/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:��a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:��\
	Reshape_7Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:�\
	Reshape_8Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:�\
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:�]

Reshape_10Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:�]

Reshape_11Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:�]

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:�M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    �
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*A
_output_shapes/
-:����������:�: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*,
_output_shapes
:����������h
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	�*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @V
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes
:	�^

Identity_1Identitytranspose_7:y:0*
T0*,
_output_shapes
:����������R

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	�I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_c:0"&

cudnnrnn_1CudnnRNN:reserve_space:0"!

cudnnrnn_2CudnnRNN:output_h:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:���������@:	�:	@�:
��:	�*<
api_implements*(gru_cb4e491c-1d5e-4fbc-b010-52f54a3bfaed*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_255867_256002*
go_backwards( *

time_major( :S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs:GC

_output_shapes
:	�
 
_user_specified_nameinit_h:GC

_output_shapes
:	@�
 
_user_specified_namekernel:RN
 
_output_shapes
:
��
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	�

_user_specified_namebias
�9
�
F__inference_sequential_layer_call_and_return_conditional_losses_257871

inputs3
!embedding_embedding_lookup_257473:@@3
 gru_read_readvariableop_resource:	�5
"gru_read_1_readvariableop_resource:	@�6
"gru_read_2_readvariableop_resource:
��5
"gru_read_3_readvariableop_resource:	�:
'dense_tensordot_readvariableop_resource:	�@3
%dense_biasadd_readvariableop_resource:@
identity��dense/BiasAdd/ReadVariableOp�dense/Tensordot/ReadVariableOp�embedding/embedding_lookup�gru/AssignVariableOp�gru/Read/ReadVariableOp�gru/Read_1/ReadVariableOp�gru/Read_2/ReadVariableOp�gru/Read_3/ReadVariableOp_
embedding/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:����������
embedding/embedding_lookupResourceGather!embedding_embedding_lookup_257473embedding/Cast:y:0*
Tindices0*4
_class*
(&loc:@embedding/embedding_lookup/257473*+
_output_shapes
:���������@*
dtype0�
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*4
_class*
(&loc:@embedding/embedding_lookup/257473*+
_output_shapes
:���������@�
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������@y
gru/Read/ReadVariableOpReadVariableOp gru_read_readvariableop_resource*
_output_shapes
:	�*
dtype0c
gru/IdentityIdentitygru/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	�}
gru/Read_1/ReadVariableOpReadVariableOp"gru_read_1_readvariableop_resource*
_output_shapes
:	@�*
dtype0g
gru/Identity_1Identity!gru/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	@�~
gru/Read_2/ReadVariableOpReadVariableOp"gru_read_2_readvariableop_resource* 
_output_shapes
:
��*
dtype0h
gru/Identity_2Identity!gru/Read_2/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��}
gru/Read_3/ReadVariableOpReadVariableOp"gru_read_3_readvariableop_resource*
_output_shapes
:	�*
dtype0g
gru/Identity_3Identity!gru/Read_3/ReadVariableOp:value:0*
T0*
_output_shapes
:	��
gru/PartitionedCallPartitionedCall.embedding/embedding_lookup/Identity_1:output:0gru/Identity:output:0gru/Identity_1:output:0gru/Identity_2:output:0gru/Identity_3:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *D
_output_shapes2
0:	�:����������:	�: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *(
f#R!
__inference_standard_gru_257630�
gru/AssignVariableOpAssignVariableOp gru_read_readvariableop_resourcegru/PartitionedCall:output:2^gru/Read/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource*
_output_shapes
:	�@*
dtype0^
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:e
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       a
dense/Tensordot/ShapeShapegru/PartitionedCall:output:1*
T0*
_output_shapes
:_
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:_
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: a
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ]
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense/Tensordot/transpose	Transposegru/PartitionedCall:output:1dense/Tensordot/concat:output:0*
T0*,
_output_shapes
:�����������
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@a
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@_
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������@~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������@f
dense/SoftmaxSoftmaxdense/BiasAdd:output:0*
T0*+
_output_shapes
:���������@j
IdentityIdentitydense/Softmax:softmax:0^NoOp*
T0*+
_output_shapes
:���������@�
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^embedding/embedding_lookup^gru/AssignVariableOp^gru/Read/ReadVariableOp^gru/Read_1/ReadVariableOp^gru/Read_2/ReadVariableOp^gru/Read_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:���������: : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2,
gru/AssignVariableOpgru/AssignVariableOp22
gru/Read/ReadVariableOpgru/Read/ReadVariableOp26
gru/Read_1/ReadVariableOpgru/Read_1/ReadVariableOp26
gru/Read_2/ReadVariableOpgru/Read_2/ReadVariableOp26
gru/Read_3/ReadVariableOpgru/Read_3/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�4
�
(__inference_gpu_gru_with_fallback_255484

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3�c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������@P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : g

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*#
_output_shapes
:�Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0kernel*
T0*5
_output_shapes#
!:	@�:	@�:	@�*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*8
_output_shapes&
$:
��:
��:
��*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:�	S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : �
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*>
_output_shapes,
*:�:�:�:�:�:�*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
���������a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_4	Transposesplit_1:output:0transpose_4/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:��a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:1transpose_5/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:��a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:��\
	Reshape_7Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:�\
	Reshape_8Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:�\
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:�]

Reshape_10Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:�]

Reshape_11Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:�]

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:�M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes

:��	U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    �
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*A
_output_shapes/
-:����������:�: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*,
_output_shapes
:����������h
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	�*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @V
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes
:	�^

Identity_1Identitytranspose_7:y:0*
T0*,
_output_shapes
:����������R

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	�I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:���������@:	�:	@�:
��:	�*<
api_implements*(gru_60426ad3-9a85-4a83-a42b-06e99d63ae80*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs:GC

_output_shapes
:	�
 
_user_specified_nameinit_h:GC

_output_shapes
:	@�
 
_user_specified_namekernel:RN
 
_output_shapes
:
��
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	�

_user_specified_namebias
�t
�
"__inference__traced_restore_259663
file_prefix7
%assignvariableop_embedding_embeddings:@@2
assignvariableop_1_dense_kernel:	�@+
assignvariableop_2_dense_bias:@9
&assignvariableop_3_gru_gru_cell_kernel:	@�D
0assignvariableop_4_gru_gru_cell_recurrent_kernel:
��7
$assignvariableop_5_gru_gru_cell_bias:	�'
assignvariableop_6_nadam_iter:	 )
assignvariableop_7_nadam_beta_1: )
assignvariableop_8_nadam_beta_2: (
assignvariableop_9_nadam_decay: 1
'assignvariableop_10_nadam_learning_rate: 2
(assignvariableop_11_nadam_momentum_cache: 3
 assignvariableop_12_gru_variable:	�%
assignvariableop_13_total_1: %
assignvariableop_14_count_1: #
assignvariableop_15_total: #
assignvariableop_16_count: B
0assignvariableop_17_nadam_embedding_embeddings_m:@@;
(assignvariableop_18_nadam_dense_kernel_m:	�@4
&assignvariableop_19_nadam_dense_bias_m:@B
/assignvariableop_20_nadam_gru_gru_cell_kernel_m:	@�M
9assignvariableop_21_nadam_gru_gru_cell_recurrent_kernel_m:
��@
-assignvariableop_22_nadam_gru_gru_cell_bias_m:	�B
0assignvariableop_23_nadam_embedding_embeddings_v:@@;
(assignvariableop_24_nadam_dense_kernel_v:	�@4
&assignvariableop_25_nadam_dense_bias_v:@B
/assignvariableop_26_nadam_gru_gru_cell_kernel_v:	@�M
9assignvariableop_27_nadam_gru_gru_cell_recurrent_kernel_v:
��@
-assignvariableop_28_nadam_gru_gru_cell_bias_v:	�
identity_30��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/momentum_cache/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-1/keras_api/states/0/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*O
valueFBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapesz
x::::::::::::::::::::::::::::::*,
dtypes"
 2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp%assignvariableop_embedding_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_dense_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp&assignvariableop_3_gru_gru_cell_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp0assignvariableop_4_gru_gru_cell_recurrent_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp$assignvariableop_5_gru_gru_cell_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_nadam_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_nadam_beta_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_nadam_beta_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_nadam_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp'assignvariableop_10_nadam_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp(assignvariableop_11_nadam_momentum_cacheIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp assignvariableop_12_gru_variableIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpassignvariableop_16_countIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp0assignvariableop_17_nadam_embedding_embeddings_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp(assignvariableop_18_nadam_dense_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp&assignvariableop_19_nadam_dense_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp/assignvariableop_20_nadam_gru_gru_cell_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp9assignvariableop_21_nadam_gru_gru_cell_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp-assignvariableop_22_nadam_gru_gru_cell_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp0assignvariableop_23_nadam_embedding_embeddings_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp(assignvariableop_24_nadam_dense_kernel_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp&assignvariableop_25_nadam_dense_bias_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp/assignvariableop_26_nadam_gru_gru_cell_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp9assignvariableop_27_nadam_gru_gru_cell_recurrent_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp-assignvariableop_28_nadam_gru_gru_cell_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_29Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_30IdentityIdentity_29:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_30Identity_30:output:0*O
_input_shapes>
<: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_28AssignVariableOp_282(
AssignVariableOp_3AssignVariableOp_32(
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
�;
�
__inference_standard_gru_255790

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
:�:�*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������@B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@*
shrink_axis_mask\
MatMulMatMulstrided_slice_1:output:0kernel*
T0*
_output_shapes
:	�`
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*
_output_shapes
:	�Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*5
_output_shapes#
!:	�:	�:	�*
	num_splitV
MatMul_1MatMulinit_hrecurrent_kernel*
T0*
_output_shapes
:	�d
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*
_output_shapes
:	�S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*5
_output_shapes#
!:	�:	�:	�*
	num_splitX
addAddV2split:output:0split_1:output:0*
T0*
_output_shapes
:	�E
SigmoidSigmoidadd:z:0*
T0*
_output_shapes
:	�Z
add_1AddV2split:output:1split_1:output:1*
T0*
_output_shapes
:	�I
	Sigmoid_1Sigmoid	add_1:z:0*
T0*
_output_shapes
:	�U
mulMulSigmoid_1:y:0split_1:output:2*
T0*
_output_shapes
:	�Q
add_2AddV2split:output:2mul:z:0*
T0*
_output_shapes
:	�A
TanhTanh	add_2:z:0*
T0*
_output_shapes
:	�K
mul_1MulSigmoid:y:0init_h*
T0*
_output_shapes
:	�J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?Q
subSubsub/x:output:0Sigmoid:y:0*
T0*
_output_shapes
:	�I
mul_2Mulsub:z:0Tanh:y:0*
T0*
_output_shapes
:	�N
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*
_output_shapes
:	�n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*P
_output_shapes>
<: : : : :	�: : :	@�:�:
��:�* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_255701*
condR
while_cond_255700*O
output_shapes>
<: : : : :	�: : :	@�:�:
��:�*
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:����������[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  �?X
IdentityIdentitystrided_slice_2:output:0*
T0*
_output_shapes
:	�^

Identity_1Identitytranspose_1:y:0*
T0*,
_output_shapes
:����������P

Identity_2Identitywhile:output:4*
T0*
_output_shapes
:	�I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:���������@:	�:	@�:
��:	�*<
api_implements*(gru_cb4e491c-1d5e-4fbc-b010-52f54a3bfaed*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs:GC

_output_shapes
:	�
 
_user_specified_nameinit_h:GC

_output_shapes
:	@�
 
_user_specified_namekernel:RN
 
_output_shapes
:
��
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	�

_user_specified_namebias
��
�

:__inference___backward_gpu_gru_with_fallback_255085_255220
placeholder
placeholder_1
placeholder_2
placeholder_3/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_7_grad_invertpermutation_transpose_7_perm!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat5
1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn=
9gradients_transpose_grad_invertpermutation_transpose_perm)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4�V
gradients/grad_ys_0Identityplaceholder*
T0*
_output_shapes
:	�e
gradients/grad_ys_1Identityplaceholder_1*
T0*,
_output_shapes
:����������X
gradients/grad_ys_2Identityplaceholder_2*
T0*
_output_shapes
:	�O
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:�
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
���������{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:�
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*,
_output_shapes
:����������*
shrink_axis_mask�
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:�
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*,
_output_shapes
:����������q
gradients/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"      �   �
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*#
_output_shapes
:��
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*,
_output_shapes
:����������a
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:�
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*D
_output_shapes2
0:���������@:�: :��	*
rnn_modegru�
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:�
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:���������@p
gradients/ExpandDims_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   �   �
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*
_output_shapes
:	�\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :�
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:�dh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:�dh
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:�di
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:��i
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:��i
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:��h
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:�h
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:�h
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:�h
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:�i
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:�i
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:��
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::�
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:�d�
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:�d�
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:�d�
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes

:���
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:���
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:���
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:��
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:��
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:��
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:��
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:��
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:�o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   @   �
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	�@o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   @   �
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	�@o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   @   �
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	�@o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   �   �
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
��o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   �   �
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
��o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   �   �
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
��i
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes	
:�i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:�i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:�j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:�j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:�j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:��
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:�
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	@��
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:�
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	@��
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:�
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	@��
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:�
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
���
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:�
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
���
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:�
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
���
gradients/split_2_grad/concatConcatV2)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:�	�
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	@��
gradients/split_1_grad/concatConcatV2(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
��m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   X  �
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	�r
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:���������@l

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*
_output_shapes
:	�f

Identity_2Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	@�i

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
��i

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	�"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:	�:����������:	�: :����������:: ::���������@:�: :��	:�:: ::::::: : : *<
api_implements*(gru_143ba06e-5c19-42a2-8213-980f4e6147b7*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_255219*
go_backwards( *

time_major( :% !

_output_shapes
:	�:2.
,
_output_shapes
:����������:%!

_output_shapes
:	�:

_output_shapes
: :2.
,
_output_shapes
:����������: 

_output_shapes
::

_output_shapes
: :

_output_shapes
::1-
+
_output_shapes
:���������@:)	%
#
_output_shapes
:�:


_output_shapes
: :"

_output_shapes

:��	:)%
#
_output_shapes
:�: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�	
�
E__inference_embedding_layer_call_and_return_conditional_losses_257888

inputs)
embedding_lookup_257882:@@
identity��embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:����������
embedding_lookupResourceGatherembedding_lookup_257882Cast:y:0*
Tindices0**
_class 
loc:@embedding_lookup/257882*+
_output_shapes
:���������@*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/257882*+
_output_shapes
:���������@�
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������@w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:���������@Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
?__inference_gru_layer_call_and_return_conditional_losses_256004

inputs/
read_readvariableop_resource:	�1
read_1_readvariableop_resource:	@�2
read_2_readvariableop_resource:
��1
read_3_readvariableop_resource:	�

identity_4��AssignVariableOp�Read/ReadVariableOp�Read_1/ReadVariableOp�Read_2/ReadVariableOp�Read_3/ReadVariableOpq
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	�*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	�u
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	@�*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	@�v
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource* 
_output_shapes
:
��*
dtype0`

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��u
Read_3/ReadVariableOpReadVariableOpread_3_readvariableop_resource*
_output_shapes
:	�*
dtype0_

Identity_3IdentityRead_3/ReadVariableOp:value:0*
T0*
_output_shapes
:	��
PartitionedCallPartitionedCallinputsIdentity:output:0Identity_1:output:0Identity_2:output:0Identity_3:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *D
_output_shapes2
0:	�:����������:	�: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *(
f#R!
__inference_standard_gru_255790�
AssignVariableOpAssignVariableOpread_readvariableop_resourcePartitionedCall:output:2^Read/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(n

Identity_4IdentityPartitionedCall:output:1^NoOp*
T0*,
_output_shapes
:�����������
NoOpNoOp^AssignVariableOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp^Read_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : : : 2$
AssignVariableOpAssignVariableOp2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp2.
Read_3/ReadVariableOpRead_3/ReadVariableOp:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs
�	
�
while_cond_255700
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_255700___redundant_placeholder04
0while_while_cond_255700___redundant_placeholder14
0while_while_cond_255700___redundant_placeholder24
0while_while_cond_255700___redundant_placeholder34
0while_while_cond_255700___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
): : : : :	�: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	�:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
�4
�
(__inference_gpu_gru_with_fallback_255866

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3�c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������@P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : g

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*#
_output_shapes
:�Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0kernel*
T0*5
_output_shapes#
!:	@�:	@�:	@�*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*8
_output_shapes&
$:
��:
��:
��*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:�	S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : �
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*>
_output_shapes,
*:�:�:�:�:�:�*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
���������a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_4	Transposesplit_1:output:0transpose_4/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:��a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:1transpose_5/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:��a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:��\
	Reshape_7Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:�\
	Reshape_8Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:�\
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:�]

Reshape_10Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:�]

Reshape_11Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:�]

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:�M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes

:��	U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    �
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*A
_output_shapes/
-:����������:�: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*,
_output_shapes
:����������h
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	�*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @V
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes
:	�^

Identity_1Identitytranspose_7:y:0*
T0*,
_output_shapes
:����������R

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	�I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:���������@:	�:	@�:
��:	�*<
api_implements*(gru_cb4e491c-1d5e-4fbc-b010-52f54a3bfaed*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs:GC

_output_shapes
:	�
 
_user_specified_nameinit_h:GC

_output_shapes
:	@�
 
_user_specified_namekernel:RN
 
_output_shapes
:
��
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	�

_user_specified_namebias
�>
�
&__forward_gpu_gru_with_fallback_258675

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
cudnnrnn
transpose_7_perm

cudnnrnn_0

cudnnrnn_1
	transpose

expanddims
cudnnrnn_input_c

concat

cudnnrnn_2
transpose_perm
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dim�c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : g

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*#
_output_shapes
:�Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0kernel*
T0*5
_output_shapes#
!:	@�:	@�:	@�*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*8
_output_shapes&
$:
��:
��:
��*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:�	S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : �
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*>
_output_shapes,
*:�:�:�:�:�:�*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
���������a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_4	Transposesplit_1:output:0transpose_4/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:��a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:1transpose_5/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:��a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:��\
	Reshape_7Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:�\
	Reshape_8Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:�\
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:�]

Reshape_10Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:�]

Reshape_11Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:�]

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:�M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    �
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*A
_output_shapes/
-:����������:�: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*,
_output_shapes
:����������h
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	�*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @V
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes
:	�^

Identity_1Identitytranspose_7:y:0*
T0*,
_output_shapes
:����������R

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	�I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_c:0"&

cudnnrnn_1CudnnRNN:reserve_space:0"!

cudnnrnn_2CudnnRNN:output_h:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:���������@:	�:	@�:
��:	�*<
api_implements*(gru_c3db9be3-2e84-45bd-b1c9-3aa3120a2350*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_258541_258676*
go_backwards( *

time_major( :S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs:GC

_output_shapes
:	�
 
_user_specified_nameinit_h:GC

_output_shapes
:	@�
 
_user_specified_namekernel:RN
 
_output_shapes
:
��
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	�

_user_specified_namebias
�>
�
&__forward_gpu_gru_with_fallback_255619

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
cudnnrnn
transpose_7_perm

cudnnrnn_0

cudnnrnn_1
	transpose

expanddims
cudnnrnn_input_c

concat

cudnnrnn_2
transpose_perm
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dim�c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : g

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*#
_output_shapes
:�Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0kernel*
T0*5
_output_shapes#
!:	@�:	@�:	@�*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*8
_output_shapes&
$:
��:
��:
��*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:�	S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : �
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*>
_output_shapes,
*:�:�:�:�:�:�*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
���������a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_4	Transposesplit_1:output:0transpose_4/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:��a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:1transpose_5/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:��a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:��\
	Reshape_7Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:�\
	Reshape_8Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:�\
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:�]

Reshape_10Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:�]

Reshape_11Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:�]

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:�M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    �
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*A
_output_shapes/
-:����������:�: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*,
_output_shapes
:����������h
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	�*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @V
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes
:	�^

Identity_1Identitytranspose_7:y:0*
T0*,
_output_shapes
:����������R

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	�I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_c:0"&

cudnnrnn_1CudnnRNN:reserve_space:0"!

cudnnrnn_2CudnnRNN:output_h:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:���������@:	�:	@�:
��:	�*<
api_implements*(gru_60426ad3-9a85-4a83-a42b-06e99d63ae80*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_255485_255620*
go_backwards( *

time_major( :S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs:GC

_output_shapes
:	�
 
_user_specified_nameinit_h:GC

_output_shapes
:	@�
 
_user_specified_namekernel:RN
 
_output_shapes
:
��
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	�

_user_specified_namebias
��
�

:__inference___backward_gpu_gru_with_fallback_255867_256002
placeholder
placeholder_1
placeholder_2
placeholder_3/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_7_grad_invertpermutation_transpose_7_perm!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat5
1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn=
9gradients_transpose_grad_invertpermutation_transpose_perm)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4�V
gradients/grad_ys_0Identityplaceholder*
T0*
_output_shapes
:	�e
gradients/grad_ys_1Identityplaceholder_1*
T0*,
_output_shapes
:����������X
gradients/grad_ys_2Identityplaceholder_2*
T0*
_output_shapes
:	�O
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:�
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
���������{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:�
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*,
_output_shapes
:����������*
shrink_axis_mask�
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:�
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*,
_output_shapes
:����������q
gradients/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"      �   �
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*#
_output_shapes
:��
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*,
_output_shapes
:����������a
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:�
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*D
_output_shapes2
0:���������@:�: :��	*
rnn_modegru�
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:�
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:���������@p
gradients/ExpandDims_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   �   �
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*
_output_shapes
:	�\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :�
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:�dh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:�dh
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:�di
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:��i
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:��i
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:��h
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:�h
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:�h
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:�h
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:�i
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:�i
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:��
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::�
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:�d�
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:�d�
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:�d�
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes

:���
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:���
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:���
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:��
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:��
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:��
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:��
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:��
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:�o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   @   �
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	�@o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   @   �
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	�@o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   @   �
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	�@o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   �   �
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
��o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   �   �
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
��o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   �   �
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
��i
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes	
:�i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:�i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:�j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:�j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:�j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:��
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:�
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	@��
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:�
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	@��
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:�
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	@��
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:�
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
���
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:�
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
���
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:�
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
���
gradients/split_2_grad/concatConcatV2)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:�	�
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	@��
gradients/split_1_grad/concatConcatV2(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
��m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   X  �
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	�r
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:���������@l

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*
_output_shapes
:	�f

Identity_2Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	@�i

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
��i

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	�"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:	�:����������:	�: :����������:: ::���������@:�: :��	:�:: ::::::: : : *<
api_implements*(gru_cb4e491c-1d5e-4fbc-b010-52f54a3bfaed*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_256001*
go_backwards( *

time_major( :% !

_output_shapes
:	�:2.
,
_output_shapes
:����������:%!

_output_shapes
:	�:

_output_shapes
: :2.
,
_output_shapes
:����������: 

_output_shapes
::

_output_shapes
: :

_output_shapes
::1-
+
_output_shapes
:���������@:)	%
#
_output_shapes
:�:


_output_shapes
: :"

_output_shapes

:��	:)%
#
_output_shapes
:�: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�;
�
__inference_standard_gru_257630

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
:�:�*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������@B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@*
shrink_axis_mask\
MatMulMatMulstrided_slice_1:output:0kernel*
T0*
_output_shapes
:	�`
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*
_output_shapes
:	�Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*5
_output_shapes#
!:	�:	�:	�*
	num_splitV
MatMul_1MatMulinit_hrecurrent_kernel*
T0*
_output_shapes
:	�d
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*
_output_shapes
:	�S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*5
_output_shapes#
!:	�:	�:	�*
	num_splitX
addAddV2split:output:0split_1:output:0*
T0*
_output_shapes
:	�E
SigmoidSigmoidadd:z:0*
T0*
_output_shapes
:	�Z
add_1AddV2split:output:1split_1:output:1*
T0*
_output_shapes
:	�I
	Sigmoid_1Sigmoid	add_1:z:0*
T0*
_output_shapes
:	�U
mulMulSigmoid_1:y:0split_1:output:2*
T0*
_output_shapes
:	�Q
add_2AddV2split:output:2mul:z:0*
T0*
_output_shapes
:	�A
TanhTanh	add_2:z:0*
T0*
_output_shapes
:	�K
mul_1MulSigmoid:y:0init_h*
T0*
_output_shapes
:	�J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?Q
subSubsub/x:output:0Sigmoid:y:0*
T0*
_output_shapes
:	�I
mul_2Mulsub:z:0Tanh:y:0*
T0*
_output_shapes
:	�N
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*
_output_shapes
:	�n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*P
_output_shapes>
<: : : : :	�: : :	@�:�:
��:�* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_257541*
condR
while_cond_257540*O
output_shapes>
<: : : : :	�: : :	@�:�:
��:�*
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:����������[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  �?X
IdentityIdentitystrided_slice_2:output:0*
T0*
_output_shapes
:	�^

Identity_1Identitytranspose_1:y:0*
T0*,
_output_shapes
:����������P

Identity_2Identitywhile:output:4*
T0*
_output_shapes
:	�I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:���������@:	�:	@�:
��:	�*<
api_implements*(gru_8da67801-88e6-4edc-90e8-b744ecf7bb1f*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs:GC

_output_shapes
:	�
 
_user_specified_nameinit_h:GC

_output_shapes
:	@�
 
_user_specified_namekernel:RN
 
_output_shapes
:
��
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	�

_user_specified_namebias
�>
�
&__forward_gpu_gru_with_fallback_257439

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
cudnnrnn
transpose_7_perm

cudnnrnn_0

cudnnrnn_1
	transpose

expanddims
cudnnrnn_input_c

concat

cudnnrnn_2
transpose_perm
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dim�c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : g

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*#
_output_shapes
:�Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0kernel*
T0*5
_output_shapes#
!:	@�:	@�:	@�*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*8
_output_shapes&
$:
��:
��:
��*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:�	S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : �
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*>
_output_shapes,
*:�:�:�:�:�:�*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
���������a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	�@[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:�da
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_4	Transposesplit_1:output:0transpose_4/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:��a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:1transpose_5/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:��a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0* 
_output_shapes
:
��\
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:��\
	Reshape_7Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:�\
	Reshape_8Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:�\
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:�]

Reshape_10Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:�]

Reshape_11Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:�]

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:�M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    �
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*A
_output_shapes/
-:����������:�: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*,
_output_shapes
:����������h
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	�*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @V
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes
:	�^

Identity_1Identitytranspose_7:y:0*
T0*,
_output_shapes
:����������R

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	�I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_c:0"&

cudnnrnn_1CudnnRNN:reserve_space:0"!

cudnnrnn_2CudnnRNN:output_h:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:���������@:	�:	@�:
��:	�*<
api_implements*(gru_09d5e506-df40-4942-8c68-99787e52d095*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_257305_257440*
go_backwards( *

time_major( :S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs:GC

_output_shapes
:	�
 
_user_specified_nameinit_h:GC

_output_shapes
:	@�
 
_user_specified_namekernel:RN
 
_output_shapes
:
��
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	�

_user_specified_namebias
�
�
A__inference_dense_layer_call_and_return_conditional_losses_256445

inputs4
!tensordot_readvariableop_resource:	�@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	�@*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:�����������
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������@Z
SoftmaxSoftmaxBiasAdd:output:0*
T0*+
_output_shapes
:���������@d
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*+
_output_shapes
:���������@z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�*
�
while_body_259113
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:@*
element_dtype0�
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*
_output_shapes
:	�s
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*
_output_shapes
:	�W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*5
_output_shapes#
!:	�:	�:	�*
	num_splitz
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*
_output_shapes
:	�y
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*
_output_shapes
:	�Y
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*5
_output_shapes#
!:	�:	�:	�*
	num_splitj
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*
_output_shapes
:	�Q
while/SigmoidSigmoidwhile/add:z:0*
T0*
_output_shapes
:	�l
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*
_output_shapes
:	�U
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*
_output_shapes
:	�g
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*
_output_shapes
:	�c
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*
_output_shapes
:	�M

while/TanhTanhwhile/add_2:z:0*
T0*
_output_shapes
:	�d
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*
_output_shapes
:	�P
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?c
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*
_output_shapes
:	�[
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*
_output_shapes
:	�`
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*
_output_shapes
:	��
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype0:���O
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: W
while/Identity_4Identitywhile/add_3:z:0*
T0*
_output_shapes
:	�"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<: : : : :	�: : :	@�:�:
��:�: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	�:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	@�:!

_output_shapes	
:�:&	"
 
_output_shapes
:
��:!


_output_shapes	
:�
�;
�
__inference_standard_gru_258095

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
:�:�*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������@B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@*
shrink_axis_mask\
MatMulMatMulstrided_slice_1:output:0kernel*
T0*
_output_shapes
:	�`
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*
_output_shapes
:	�Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*5
_output_shapes#
!:	�:	�:	�*
	num_splitV
MatMul_1MatMulinit_hrecurrent_kernel*
T0*
_output_shapes
:	�d
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*
_output_shapes
:	�S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*5
_output_shapes#
!:	�:	�:	�*
	num_splitX
addAddV2split:output:0split_1:output:0*
T0*
_output_shapes
:	�E
SigmoidSigmoidadd:z:0*
T0*
_output_shapes
:	�Z
add_1AddV2split:output:1split_1:output:1*
T0*
_output_shapes
:	�I
	Sigmoid_1Sigmoid	add_1:z:0*
T0*
_output_shapes
:	�U
mulMulSigmoid_1:y:0split_1:output:2*
T0*
_output_shapes
:	�Q
add_2AddV2split:output:2mul:z:0*
T0*
_output_shapes
:	�A
TanhTanh	add_2:z:0*
T0*
_output_shapes
:	�K
mul_1MulSigmoid:y:0init_h*
T0*
_output_shapes
:	�J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?Q
subSubsub/x:output:0Sigmoid:y:0*
T0*
_output_shapes
:	�I
mul_2Mulsub:z:0Tanh:y:0*
T0*
_output_shapes
:	�N
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*
_output_shapes
:	�n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*P
_output_shapes>
<: : : : :	�: : :	@�:�:
��:�* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_258006*
condR
while_cond_258005*O
output_shapes>
<: : : : :	�: : :	@�:�:
��:�*
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:����������[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  �?X
IdentityIdentitystrided_slice_2:output:0*
T0*
_output_shapes
:	�^

Identity_1Identitytranspose_1:y:0*
T0*,
_output_shapes
:����������P

Identity_2Identitywhile:output:4*
T0*
_output_shapes
:	�I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:���������@:	�:	@�:
��:	�*<
api_implements*(gru_2d7b9471-187b-4a97-b1dc-57408aa712ec*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs:GC

_output_shapes
:	�
 
_user_specified_nameinit_h:GC

_output_shapes
:	@�
 
_user_specified_namekernel:RN
 
_output_shapes
:
��
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	�

_user_specified_namebias
�	
�
while_cond_258743
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_258743___redundant_placeholder04
0while_while_cond_258743___redundant_placeholder14
0while_while_cond_258743___redundant_placeholder24
0while_while_cond_258743___redundant_placeholder34
0while_while_cond_258743___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
): : : : :	�: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	�:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
�*
�
while_body_257139
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:@*
element_dtype0�
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*
_output_shapes
:	�s
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*
_output_shapes
:	�W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*5
_output_shapes#
!:	�:	�:	�*
	num_splitz
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*
_output_shapes
:	�y
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*
_output_shapes
:	�Y
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*5
_output_shapes#
!:	�:	�:	�*
	num_splitj
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*
_output_shapes
:	�Q
while/SigmoidSigmoidwhile/add:z:0*
T0*
_output_shapes
:	�l
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*
_output_shapes
:	�U
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*
_output_shapes
:	�g
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*
_output_shapes
:	�c
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*
_output_shapes
:	�M

while/TanhTanhwhile/add_2:z:0*
T0*
_output_shapes
:	�d
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*
_output_shapes
:	�P
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?c
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*
_output_shapes
:	�[
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*
_output_shapes
:	�`
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*
_output_shapes
:	��
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype0:���O
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: W
while/Identity_4Identitywhile/add_3:z:0*
T0*
_output_shapes
:	�"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<: : : : :	�: : :	@�:�:
��:�: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	�:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	@�:!

_output_shapes	
:�:&	"
 
_output_shapes
:
��:!


_output_shapes	
:�
��
�

:__inference___backward_gpu_gru_with_fallback_257305_257440
placeholder
placeholder_1
placeholder_2
placeholder_3/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_7_grad_invertpermutation_transpose_7_perm!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat5
1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn=
9gradients_transpose_grad_invertpermutation_transpose_perm)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4�V
gradients/grad_ys_0Identityplaceholder*
T0*
_output_shapes
:	�e
gradients/grad_ys_1Identityplaceholder_1*
T0*,
_output_shapes
:����������X
gradients/grad_ys_2Identityplaceholder_2*
T0*
_output_shapes
:	�O
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:�
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
���������{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:�
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*,
_output_shapes
:����������*
shrink_axis_mask�
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:�
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*,
_output_shapes
:����������q
gradients/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"      �   �
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*#
_output_shapes
:��
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*,
_output_shapes
:����������a
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:�
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*D
_output_shapes2
0:���������@:�: :��	*
rnn_modegru�
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:�
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:���������@p
gradients/ExpandDims_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   �   �
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*
_output_shapes
:	�\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :�
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:�dh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:�dh
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:�di
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:��i
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:��i
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:��h
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:�h
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:�h
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:�h
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:�i
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:�i
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:��
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::�
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:�d�
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:�d�
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:�d�
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes

:���
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:���
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:���
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:��
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:��
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:��
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:��
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:��
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:�o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   @   �
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	�@o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   @   �
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	�@o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   @   �
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	�@o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   �   �
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
��o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   �   �
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
��o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�   �   �
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
��i
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes	
:�i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:�i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:�j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:�j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:�j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:��
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:��
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:�
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	@��
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:�
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	@��
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:�
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	@��
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:�
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
���
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:�
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
���
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:�
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
���
gradients/split_2_grad/concatConcatV2)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:�	�
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	@��
gradients/split_1_grad/concatConcatV2(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
��m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   X  �
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	�r
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:���������@l

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*
_output_shapes
:	�f

Identity_2Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	@�i

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
��i

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	�"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:	�:����������:	�: :����������:: ::���������@:�: :��	:�:: ::::::: : : *<
api_implements*(gru_09d5e506-df40-4942-8c68-99787e52d095*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_257439*
go_backwards( *

time_major( :% !

_output_shapes
:	�:2.
,
_output_shapes
:����������:%!

_output_shapes
:	�:

_output_shapes
: :2.
,
_output_shapes
:����������: 

_output_shapes
::

_output_shapes
: :

_output_shapes
::1-
+
_output_shapes
:���������@:)	%
#
_output_shapes
:�:


_output_shapes
: :"

_output_shapes

:��	:)%
#
_output_shapes
:�: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�*
�
while_body_257541
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:@*
element_dtype0�
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*
_output_shapes
:	�s
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*
_output_shapes
:	�W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*5
_output_shapes#
!:	�:	�:	�*
	num_splitz
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*
_output_shapes
:	�y
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*
_output_shapes
:	�Y
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*5
_output_shapes#
!:	�:	�:	�*
	num_splitj
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*
_output_shapes
:	�Q
while/SigmoidSigmoidwhile/add:z:0*
T0*
_output_shapes
:	�l
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*
_output_shapes
:	�U
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*
_output_shapes
:	�g
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*
_output_shapes
:	�c
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*
_output_shapes
:	�M

while/TanhTanhwhile/add_2:z:0*
T0*
_output_shapes
:	�d
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*
_output_shapes
:	�P
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?c
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*
_output_shapes
:	�[
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*
_output_shapes
:	�`
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*
_output_shapes
:	��
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype0:���O
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: W
while/Identity_4Identitywhile/add_3:z:0*
T0*
_output_shapes
:	�"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<: : : : :	�: : :	@�:�:
��:�: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	�:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	@�:!

_output_shapes	
:�:&	"
 
_output_shapes
:
��:!


_output_shapes	
:�
�	
�
+__inference_sequential_layer_call_fn_256960
embedding_input
unknown:@@
	unknown_0:	�
	unknown_1:	@�
	unknown_2:
��
	unknown_3:	�
	unknown_4:	�@
	unknown_5:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallembedding_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_256924s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:���������: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
'
_output_shapes
:���������
)
_user_specified_nameembedding_input
�	
�
while_cond_259112
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_259112___redundant_placeholder04
0while_while_cond_259112___redundant_placeholder14
0while_while_cond_259112___redundant_placeholder24
0while_while_cond_259112___redundant_placeholder34
0while_while_cond_259112___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
): : : : :	�: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	�:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
�
�
?__inference_gru_layer_call_and_return_conditional_losses_256404

inputs/
read_readvariableop_resource:	�1
read_1_readvariableop_resource:	@�2
read_2_readvariableop_resource:
��1
read_3_readvariableop_resource:	�

identity_4��AssignVariableOp�Read/ReadVariableOp�Read_1/ReadVariableOp�Read_2/ReadVariableOp�Read_3/ReadVariableOpq
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	�*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	�u
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	@�*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	@�v
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource* 
_output_shapes
:
��*
dtype0`

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��u
Read_3/ReadVariableOpReadVariableOpread_3_readvariableop_resource*
_output_shapes
:	�*
dtype0_

Identity_3IdentityRead_3/ReadVariableOp:value:0*
T0*
_output_shapes
:	��
PartitionedCallPartitionedCallinputsIdentity:output:0Identity_1:output:0Identity_2:output:0Identity_3:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *D
_output_shapes2
0:	�:����������:	�: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *(
f#R!
__inference_standard_gru_256190�
AssignVariableOpAssignVariableOpread_readvariableop_resourcePartitionedCall:output:2^Read/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(n

Identity_4IdentityPartitionedCall:output:1^NoOp*
T0*,
_output_shapes
:�����������
NoOpNoOp^AssignVariableOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp^Read_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : : : 2$
AssignVariableOpAssignVariableOp2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp2.
Read_3/ReadVariableOpRead_3/ReadVariableOp:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs"�	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
K
embedding_input8
!serving_default_embedding_input:0���������=
dense4
StatefulPartitionedCall:0���������@tensorflow/serving/predict:��
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec"
_tf_keras_rnn_layer
�
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses

#kernel
$bias"
_tf_keras_layer
J
0
%1
&2
'3
#4
$5"
trackable_list_wrapper
J
0
%1
&2
'3
#4
$5"
trackable_list_wrapper
 "
trackable_list_wrapper
�
(non_trainable_variables

)layers
*metrics
+layer_regularization_losses
,layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses"
_generic_user_object
�
-trace_0
.trace_1
/trace_2
0trace_32�
+__inference_sequential_layer_call_fn_256469
+__inference_sequential_layer_call_fn_257048
+__inference_sequential_layer_call_fn_257067
+__inference_sequential_layer_call_fn_256960�
���
FullArgSpec1
args)�&
jself
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
annotations� *
 z-trace_0z.trace_1z/trace_2z0trace_3
�
1trace_0
2trace_1
3trace_2
4trace_32�
F__inference_sequential_layer_call_and_return_conditional_losses_257469
F__inference_sequential_layer_call_and_return_conditional_losses_257871
F__inference_sequential_layer_call_and_return_conditional_losses_256981
F__inference_sequential_layer_call_and_return_conditional_losses_257002�
���
FullArgSpec1
args)�&
jself
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
annotations� *
 z1trace_0z2trace_1z3trace_2z4trace_3
�B�
!__inference__wrapped_model_255249embedding_input"�
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
5iter

6beta_1

7beta_2
	8decay
9learning_rate
:momentum_cachemp#mq$mr%ms&mt'muvv#vw$vx%vy&vz'v{"
	optimizer
,
;serving_default"
signature_map
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
<non_trainable_variables

=layers
>metrics
?layer_regularization_losses
@layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Atrace_02�
*__inference_embedding_layer_call_fn_257878�
���
FullArgSpec
args�
jself
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
annotations� *
 zAtrace_0
�
Btrace_02�
E__inference_embedding_layer_call_and_return_conditional_losses_257888�
���
FullArgSpec
args�
jself
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
annotations� *
 zBtrace_0
&:$@@2embedding/embeddings
5
%0
&1
'2"
trackable_list_wrapper
5
%0
&1
'2"
trackable_list_wrapper
 "
trackable_list_wrapper
�

Cstates
Dnon_trainable_variables

Elayers
Fmetrics
Glayer_regularization_losses
Hlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Itrace_0
Jtrace_1
Ktrace_2
Ltrace_32�
$__inference_gru_layer_call_fn_257901
$__inference_gru_layer_call_fn_257914
$__inference_gru_layer_call_fn_257927
$__inference_gru_layer_call_fn_257940�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zItrace_0zJtrace_1zKtrace_2zLtrace_3
�
Mtrace_0
Ntrace_1
Otrace_2
Ptrace_32�
?__inference_gru_layer_call_and_return_conditional_losses_258309
?__inference_gru_layer_call_and_return_conditional_losses_258678
?__inference_gru_layer_call_and_return_conditional_losses_259047
?__inference_gru_layer_call_and_return_conditional_losses_259416�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zMtrace_0zNtrace_1zOtrace_2zPtrace_3
"
_generic_user_object
�
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses
W_random_generator

%kernel
&recurrent_kernel
'bias"
_tf_keras_layer
 "
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses"
_generic_user_object
�
]trace_02�
&__inference_dense_layer_call_fn_259425�
���
FullArgSpec
args�
jself
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
annotations� *
 z]trace_0
�
^trace_02�
A__inference_dense_layer_call_and_return_conditional_losses_259456�
���
FullArgSpec
args�
jself
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
annotations� *
 z^trace_0
:	�@2dense/kernel
:@2
dense/bias
&:$	@�2gru/gru_cell/kernel
1:/
��2gru/gru_cell/recurrent_kernel
$:"	�2gru/gru_cell/bias
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
.
_0
`1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
+__inference_sequential_layer_call_fn_256469embedding_input"�
���
FullArgSpec1
args)�&
jself
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
annotations� *
 
�B�
+__inference_sequential_layer_call_fn_257048inputs"�
���
FullArgSpec1
args)�&
jself
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
annotations� *
 
�B�
+__inference_sequential_layer_call_fn_257067inputs"�
���
FullArgSpec1
args)�&
jself
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
annotations� *
 
�B�
+__inference_sequential_layer_call_fn_256960embedding_input"�
���
FullArgSpec1
args)�&
jself
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
annotations� *
 
�B�
F__inference_sequential_layer_call_and_return_conditional_losses_257469inputs"�
���
FullArgSpec1
args)�&
jself
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
annotations� *
 
�B�
F__inference_sequential_layer_call_and_return_conditional_losses_257871inputs"�
���
FullArgSpec1
args)�&
jself
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
annotations� *
 
�B�
F__inference_sequential_layer_call_and_return_conditional_losses_256981embedding_input"�
���
FullArgSpec1
args)�&
jself
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
annotations� *
 
�B�
F__inference_sequential_layer_call_and_return_conditional_losses_257002embedding_input"�
���
FullArgSpec1
args)�&
jself
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
annotations� *
 
:	 (2
Nadam/iter
: (2Nadam/beta_1
: (2Nadam/beta_2
: (2Nadam/decay
: (2Nadam/learning_rate
: (2Nadam/momentum_cache
�B�
$__inference_signature_wrapper_257029embedding_input"�
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
*__inference_embedding_layer_call_fn_257878inputs"�
���
FullArgSpec
args�
jself
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
annotations� *
 
�B�
E__inference_embedding_layer_call_and_return_conditional_losses_257888inputs"�
���
FullArgSpec
args�
jself
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
annotations� *
 
'
a0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
$__inference_gru_layer_call_fn_257901inputs/0"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
$__inference_gru_layer_call_fn_257914inputs/0"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
$__inference_gru_layer_call_fn_257927inputs"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
$__inference_gru_layer_call_fn_257940inputs"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
?__inference_gru_layer_call_and_return_conditional_losses_258309inputs/0"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
?__inference_gru_layer_call_and_return_conditional_losses_258678inputs/0"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
?__inference_gru_layer_call_and_return_conditional_losses_259047inputs"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
?__inference_gru_layer_call_and_return_conditional_losses_259416inputs"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
5
%0
&1
'2"
trackable_list_wrapper
5
%0
&1
'2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec3
args+�(
jself
jinputs
jstates

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
annotations� *
 
�2��
���
FullArgSpec3
args+�(
jself
jinputs
jstates

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
annotations� *
 
"
_generic_user_object
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
&__inference_dense_layer_call_fn_259425inputs"�
���
FullArgSpec
args�
jself
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
annotations� *
 
�B�
A__inference_dense_layer_call_and_return_conditional_losses_259456inputs"�
���
FullArgSpec
args�
jself
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
annotations� *
 
N
g	variables
h	keras_api
	itotal
	jcount"
_tf_keras_metric
^
k	variables
l	keras_api
	mtotal
	ncount
o
_fn_kwargs"
_tf_keras_metric
:	�2gru/Variable
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
.
i0
j1"
trackable_list_wrapper
-
g	variables"
_generic_user_object
:  (2total
:  (2count
.
m0
n1"
trackable_list_wrapper
-
k	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
,:*@@2Nadam/embedding/embeddings/m
%:#	�@2Nadam/dense/kernel/m
:@2Nadam/dense/bias/m
,:*	@�2Nadam/gru/gru_cell/kernel/m
7:5
��2%Nadam/gru/gru_cell/recurrent_kernel/m
*:(	�2Nadam/gru/gru_cell/bias/m
,:*@@2Nadam/embedding/embeddings/v
%:#	�@2Nadam/dense/kernel/v
:@2Nadam/dense/bias/v
,:*	@�2Nadam/gru/gru_cell/kernel/v
7:5
��2%Nadam/gru/gru_cell/recurrent_kernel/v
*:(	�2Nadam/gru/gru_cell/bias/v�
!__inference__wrapped_model_255249va%&'#$8�5
.�+
)�&
embedding_input���������
� "1�.
,
dense#� 
dense���������@�
A__inference_dense_layer_call_and_return_conditional_losses_259456e#$4�1
*�'
%�"
inputs����������
� ")�&
�
0���������@
� �
&__inference_dense_layer_call_fn_259425X#$4�1
*�'
%�"
inputs����������
� "����������@�
E__inference_embedding_layer_call_and_return_conditional_losses_257888_/�,
%�"
 �
inputs���������
� ")�&
�
0���������@
� �
*__inference_embedding_layer_call_fn_257878R/�,
%�"
 �
inputs���������
� "����������@�
?__inference_gru_layer_call_and_return_conditional_losses_258309za%&'F�C
<�9
+�(
&�#
inputs/0���������@

 
p 

 
� "*�'
 �
0����������
� �
?__inference_gru_layer_call_and_return_conditional_losses_258678za%&'F�C
<�9
+�(
&�#
inputs/0���������@

 
p

 
� "*�'
 �
0����������
� �
?__inference_gru_layer_call_and_return_conditional_losses_259047sa%&'?�<
5�2
$�!
inputs���������@

 
p 

 
� "*�'
 �
0����������
� �
?__inference_gru_layer_call_and_return_conditional_losses_259416sa%&'?�<
5�2
$�!
inputs���������@

 
p

 
� "*�'
 �
0����������
� �
$__inference_gru_layer_call_fn_257901ma%&'F�C
<�9
+�(
&�#
inputs/0���������@

 
p 

 
� "������������
$__inference_gru_layer_call_fn_257914ma%&'F�C
<�9
+�(
&�#
inputs/0���������@

 
p

 
� "������������
$__inference_gru_layer_call_fn_257927fa%&'?�<
5�2
$�!
inputs���������@

 
p 

 
� "������������
$__inference_gru_layer_call_fn_257940fa%&'?�<
5�2
$�!
inputs���������@

 
p

 
� "������������
F__inference_sequential_layer_call_and_return_conditional_losses_256981va%&'#$@�=
6�3
)�&
embedding_input���������
p 

 
� ")�&
�
0���������@
� �
F__inference_sequential_layer_call_and_return_conditional_losses_257002va%&'#$@�=
6�3
)�&
embedding_input���������
p

 
� ")�&
�
0���������@
� �
F__inference_sequential_layer_call_and_return_conditional_losses_257469ma%&'#$7�4
-�*
 �
inputs���������
p 

 
� ")�&
�
0���������@
� �
F__inference_sequential_layer_call_and_return_conditional_losses_257871ma%&'#$7�4
-�*
 �
inputs���������
p

 
� ")�&
�
0���������@
� �
+__inference_sequential_layer_call_fn_256469ia%&'#$@�=
6�3
)�&
embedding_input���������
p 

 
� "����������@�
+__inference_sequential_layer_call_fn_256960ia%&'#$@�=
6�3
)�&
embedding_input���������
p

 
� "����������@�
+__inference_sequential_layer_call_fn_257048`a%&'#$7�4
-�*
 �
inputs���������
p 

 
� "����������@�
+__inference_sequential_layer_call_fn_257067`a%&'#$7�4
-�*
 �
inputs���������
p

 
� "����������@�
$__inference_signature_wrapper_257029�a%&'#$K�H
� 
A�>
<
embedding_input)�&
embedding_input���������"1�.
,
dense#� 
dense���������@