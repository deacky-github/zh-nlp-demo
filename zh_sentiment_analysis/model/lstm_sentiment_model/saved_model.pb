ЖС
ж>Љ>
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	АР
о
	ApplyAdam
var"TА	
m"TА	
v"TА
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"TА" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
Ы
ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
x
Assign
ref"TА

value"T

output_ref"TА"	
Ttype"
validate_shapebool("
use_lockingbool(Ш
s
	AssignSub
ref"TА

value"T

output_ref"TА" 
Ttype:
2	"
use_lockingbool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
I
ConcatOffset

concat_dim
shape*N
offset*N"
Nint(0
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

ControlTrigger
y
Enter	
data"T
output"T"	
Ttype"

frame_namestring"
is_constantbool( "
parallel_iterationsint

B
Equal
x"T
y"T
z
"
Ttype:
2	
Р
)
Exit	
data"T
output"T"	
Ttype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
,
Floor
x"T
y"T"
Ttype:
2
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
9
FloorMod
x"T
y"T
z"T"
Ttype:

2	
Ц
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
:
InvertPermutation
x"T
y"T"
Ttype0:
2	
:
Less
x"T
y"T
z
"
Ttype:
2	
?

LogSoftmax
logits"T

logsoftmax"T"
Ttype:
2
$

LogicalAnd
x

y

z
Р
!
LoopCond	
input


output

p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
;
Maximum
x"T
y"T
z"T"
Ttype:

2	Р
Н
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
;
Minimum
x"T
y"T
z"T"
Ttype:

2	Р
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р
.
Neg
x"T
y"T"
Ttype:

2	
2
NextIteration	
data"T
output"T"	
Ttype
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
Н
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
Е
RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
•

ScatterAdd
ref"TА
indices"Tindices
updates"T

output_ref"TА" 
Ttype:
2	"
Tindicestype:
2	"
use_lockingbool( 
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
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
=
SigmoidGrad
y"T
dy"T
z"T"
Ttype:

2
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
j
SoftmaxCrossEntropyWithLogits
features"T
labels"T	
loss"T
backprop"T"
Ttype:
2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
-
Sqrt
x"T
y"T"
Ttype:

2
A

StackPopV2

handle
elem"	elem_type"
	elem_typetypeИ
X
StackPushV2

handle	
elem"T
output"T"	
Ttype"
swap_memorybool( И
S
StackV2
max_size

handle"
	elem_typetype"

stack_namestring И
ц
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
З
StridedSliceGrad
shape"Index
begin"Index
end"Index
strides"Index
dy"T
output"T"	
Ttype"
Indextype:
2	"

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
:
Sub
x"T
y"T
z"T"
Ttype:
2	
М
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
-
Tanh
x"T
y"T"
Ttype:

2
:
TanhGrad
y"T
dy"T
z"T"
Ttype:

2
{
TensorArrayGatherV3

handle
indices
flow_in
value"dtype"
dtypetype"
element_shapeshape:И
`
TensorArrayGradV3

handle
flow_in
grad_handle
flow_out"
sourcestringИ
Y
TensorArrayReadV3

handle	
index
flow_in
value"dtype"
dtypetypeИ
d
TensorArrayScatterV3

handle
indices

value"T
flow_in
flow_out"	
TtypeИ
9
TensorArraySizeV3

handle
flow_in
sizeИ
ё
TensorArrayV3
size

handle
flow"
dtypetype"
element_shapeshape:"
dynamic_sizebool( "
clear_after_readbool("$
identical_element_shapesbool( "
tensor_array_namestring И
`
TensorArrayWriteV3

handle	
index

value"T
flow_in
flow_out"	
TtypeИ
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
P
Unique
x"T
y"T
idx"out_idx"	
Ttype"
out_idxtype0:
2	
Ѕ
UnsortedSegmentSum	
data"T
segment_ids"Tindices
num_segments"Tnumsegments
output"T" 
Ttype:
2	"
Tindicestype:
2	" 
Tnumsegmentstype0:
2	
s

VariableV2
ref"dtypeА"
shapeshape"
dtypetype"
	containerstring "
shared_namestring И
&
	ZerosLike
x"T
y"T"	
Ttype"mytag*1.8.02b'v1.8.0-0-g93bc2e2072'у±
v
Input_Layer/input_xPlaceholder*
dtype0*
shape:€€€€€€€€€d*'
_output_shapes
:€€€€€€€€€d
Z
Input_Layer/keep_probPlaceholder*
dtype0*
shape:*
_output_shapes
:
v
Input_Layer/label_yPlaceholder*
dtype0*
shape:€€€€€€€€€*'
_output_shapes
:€€€€€€€€€
t
#Embedding_layer/random_normal/shapeConst*
valueB"÷Т  d   *
dtype0*
_output_shapes
:
g
"Embedding_layer/random_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
i
$Embedding_layer/random_normal/stddevConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
ј
2Embedding_layer/random_normal/RandomStandardNormalRandomStandardNormal#Embedding_layer/random_normal/shape*
T0*
dtype0*
seed2 *

seed * 
_output_shapes
:
÷•d
≠
!Embedding_layer/random_normal/mulMul2Embedding_layer/random_normal/RandomStandardNormal$Embedding_layer/random_normal/stddev*
T0* 
_output_shapes
:
÷•d
Ц
Embedding_layer/random_normalAdd!Embedding_layer/random_normal/mul"Embedding_layer/random_normal/mean*
T0* 
_output_shapes
:
÷•d
Р
Embedding_layer/Variable
VariableV2*
dtype0*
shared_name *
shape:
÷•d*
	container * 
_output_shapes
:
÷•d
г
Embedding_layer/Variable/AssignAssignEmbedding_layer/VariableEmbedding_layer/random_normal*
T0*
use_locking(*
validate_shape(*+
_class!
loc:@Embedding_layer/Variable* 
_output_shapes
:
÷•d
Ы
Embedding_layer/Variable/readIdentityEmbedding_layer/Variable*
T0*+
_class!
loc:@Embedding_layer/Variable* 
_output_shapes
:
÷•d
Ф
%Embedding_layer/embedding_lookup/axisConst*
value	B : *
dtype0*+
_class!
loc:@Embedding_layer/Variable*
_output_shapes
: 
Н
 Embedding_layer/embedding_lookupGatherV2Embedding_layer/Variable/readInput_Layer/input_x%Embedding_layer/embedding_lookup/axis*
Taxis0*
Tparams0*
Tindices0*+
_class!
loc:@Embedding_layer/Variable*+
_output_shapes
:€€€€€€€€€dd
T
RNN_layer/rnn/RankConst*
value	B :*
dtype0*
_output_shapes
: 
[
RNN_layer/rnn/range/startConst*
value	B :*
dtype0*
_output_shapes
: 
[
RNN_layer/rnn/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
О
RNN_layer/rnn/rangeRangeRNN_layer/rnn/range/startRNN_layer/rnn/RankRNN_layer/rnn/range/delta*

Tidx0*
_output_shapes
:
n
RNN_layer/rnn/concat/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
[
RNN_layer/rnn/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
©
RNN_layer/rnn/concatConcatV2RNN_layer/rnn/concat/values_0RNN_layer/rnn/rangeRNN_layer/rnn/concat/axis*
T0*
N*

Tidx0*
_output_shapes
:
Я
RNN_layer/rnn/transpose	Transpose Embedding_layer/embedding_lookupRNN_layer/rnn/concat*
T0*
Tperm0*+
_output_shapes
:d€€€€€€€€€d
j
RNN_layer/rnn/ShapeShapeRNN_layer/rnn/transpose*
T0*
out_type0*
_output_shapes
:
k
!RNN_layer/rnn/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#RNN_layer/rnn/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#RNN_layer/rnn/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
њ
RNN_layer/rnn/strided_sliceStridedSliceRNN_layer/rnn/Shape!RNN_layer/rnn/strided_slice/stack#RNN_layer/rnn/strided_slice/stack_1#RNN_layer/rnn/strided_slice/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 
Л
IRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
м
ERNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState/ExpandDims
ExpandDimsRNN_layer/rnn/strided_sliceIRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState/ExpandDims/dim*
T0*

Tdim0*
_output_shapes
:
Л
@RNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState/ConstConst*
valueB:А*
dtype0*
_output_shapes
:
И
FRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ў
ARNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState/concatConcatV2ERNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState/ExpandDims@RNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState/ConstFRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState/concat/axis*
T0*
N*

Tidx0*
_output_shapes
:
Л
FRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ш
@RNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState/zerosFillARNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState/concatFRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros/Const*
T0*

index_type0*(
_output_shapes
:€€€€€€€€€А
Н
KRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
р
GRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState/ExpandDims_1
ExpandDimsRNN_layer/rnn/strided_sliceKRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState/ExpandDims_1/dim*
T0*

Tdim0*
_output_shapes
:
Н
BRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState/Const_1Const*
valueB:А*
dtype0*
_output_shapes
:
Н
KRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState/ExpandDims_2/dimConst*
value	B : *
dtype0*
_output_shapes
: 
р
GRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState/ExpandDims_2
ExpandDimsRNN_layer/rnn/strided_sliceKRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState/ExpandDims_2/dim*
T0*

Tdim0*
_output_shapes
:
Н
BRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState/Const_2Const*
valueB:А*
dtype0*
_output_shapes
:
К
HRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
а
CRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState/concat_1ConcatV2GRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState/ExpandDims_2BRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState/Const_2HRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState/concat_1/axis*
T0*
N*

Tidx0*
_output_shapes
:
Н
HRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ю
BRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros_1FillCRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState/concat_1HRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros_1/Const*
T0*

index_type0*(
_output_shapes
:€€€€€€€€€А
Н
KRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState/ExpandDims_3/dimConst*
value	B : *
dtype0*
_output_shapes
: 
р
GRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState/ExpandDims_3
ExpandDimsRNN_layer/rnn/strided_sliceKRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState/ExpandDims_3/dim*
T0*

Tdim0*
_output_shapes
:
Н
BRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState/Const_3Const*
valueB:А*
dtype0*
_output_shapes
:
Н
KRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
р
GRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/ExpandDims
ExpandDimsRNN_layer/rnn/strided_sliceKRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/ExpandDims/dim*
T0*

Tdim0*
_output_shapes
:
Н
BRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/ConstConst*
valueB:А*
dtype0*
_output_shapes
:
К
HRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
а
CRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/concatConcatV2GRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/ExpandDimsBRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/ConstHRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/concat/axis*
T0*
N*

Tidx0*
_output_shapes
:
Н
HRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ю
BRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zerosFillCRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/concatHRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros/Const*
T0*

index_type0*(
_output_shapes
:€€€€€€€€€А
П
MRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
ф
IRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/ExpandDims_1
ExpandDimsRNN_layer/rnn/strided_sliceMRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/ExpandDims_1/dim*
T0*

Tdim0*
_output_shapes
:
П
DRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/Const_1Const*
valueB:А*
dtype0*
_output_shapes
:
П
MRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/ExpandDims_2/dimConst*
value	B : *
dtype0*
_output_shapes
: 
ф
IRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/ExpandDims_2
ExpandDimsRNN_layer/rnn/strided_sliceMRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/ExpandDims_2/dim*
T0*

Tdim0*
_output_shapes
:
П
DRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/Const_2Const*
valueB:А*
dtype0*
_output_shapes
:
М
JRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
и
ERNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/concat_1ConcatV2IRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/ExpandDims_2DRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/Const_2JRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/concat_1/axis*
T0*
N*

Tidx0*
_output_shapes
:
П
JRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
§
DRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros_1FillERNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/concat_1JRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros_1/Const*
T0*

index_type0*(
_output_shapes
:€€€€€€€€€А
П
MRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/ExpandDims_3/dimConst*
value	B : *
dtype0*
_output_shapes
: 
ф
IRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/ExpandDims_3
ExpandDimsRNN_layer/rnn/strided_sliceMRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/ExpandDims_3/dim*
T0*

Tdim0*
_output_shapes
:
П
DRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/Const_3Const*
valueB:А*
dtype0*
_output_shapes
:
l
RNN_layer/rnn/Shape_1ShapeRNN_layer/rnn/transpose*
T0*
out_type0*
_output_shapes
:
m
#RNN_layer/rnn/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
o
%RNN_layer/rnn/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
o
%RNN_layer/rnn/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
…
RNN_layer/rnn/strided_slice_1StridedSliceRNN_layer/rnn/Shape_1#RNN_layer/rnn/strided_slice_1/stack%RNN_layer/rnn/strided_slice_1/stack_1%RNN_layer/rnn/strided_slice_1/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 
l
RNN_layer/rnn/Shape_2ShapeRNN_layer/rnn/transpose*
T0*
out_type0*
_output_shapes
:
m
#RNN_layer/rnn/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
o
%RNN_layer/rnn/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
o
%RNN_layer/rnn/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
…
RNN_layer/rnn/strided_slice_2StridedSliceRNN_layer/rnn/Shape_2#RNN_layer/rnn/strided_slice_2/stack%RNN_layer/rnn/strided_slice_2/stack_1%RNN_layer/rnn/strided_slice_2/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 
^
RNN_layer/rnn/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
Ф
RNN_layer/rnn/ExpandDims
ExpandDimsRNN_layer/rnn/strided_slice_2RNN_layer/rnn/ExpandDims/dim*
T0*

Tdim0*
_output_shapes
:
^
RNN_layer/rnn/ConstConst*
valueB:А*
dtype0*
_output_shapes
:
]
RNN_layer/rnn/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
®
RNN_layer/rnn/concat_1ConcatV2RNN_layer/rnn/ExpandDimsRNN_layer/rnn/ConstRNN_layer/rnn/concat_1/axis*
T0*
N*

Tidx0*
_output_shapes
:
^
RNN_layer/rnn/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
У
RNN_layer/rnn/zerosFillRNN_layer/rnn/concat_1RNN_layer/rnn/zeros/Const*
T0*

index_type0*(
_output_shapes
:€€€€€€€€€А
T
RNN_layer/rnn/timeConst*
value	B : *
dtype0*
_output_shapes
: 
Ґ
RNN_layer/rnn/TensorArrayTensorArrayV3RNN_layer/rnn/strided_slice_1*
dynamic_size( *
identical_element_shapes(*%
element_shape:€€€€€€€€€А*
dtype0*
clear_after_read(*9
tensor_array_name$"RNN_layer/rnn/dynamic_rnn/output_0*
_output_shapes

:: 
Ґ
RNN_layer/rnn/TensorArray_1TensorArrayV3RNN_layer/rnn/strided_slice_1*
dynamic_size( *
identical_element_shapes(*$
element_shape:€€€€€€€€€d*
dtype0*
clear_after_read(*8
tensor_array_name#!RNN_layer/rnn/dynamic_rnn/input_0*
_output_shapes

:: 
}
&RNN_layer/rnn/TensorArrayUnstack/ShapeShapeRNN_layer/rnn/transpose*
T0*
out_type0*
_output_shapes
:
~
4RNN_layer/rnn/TensorArrayUnstack/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
А
6RNN_layer/rnn/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
А
6RNN_layer/rnn/TensorArrayUnstack/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ю
.RNN_layer/rnn/TensorArrayUnstack/strided_sliceStridedSlice&RNN_layer/rnn/TensorArrayUnstack/Shape4RNN_layer/rnn/TensorArrayUnstack/strided_slice/stack6RNN_layer/rnn/TensorArrayUnstack/strided_slice/stack_16RNN_layer/rnn/TensorArrayUnstack/strided_slice/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 
n
,RNN_layer/rnn/TensorArrayUnstack/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
n
,RNN_layer/rnn/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
м
&RNN_layer/rnn/TensorArrayUnstack/rangeRange,RNN_layer/rnn/TensorArrayUnstack/range/start.RNN_layer/rnn/TensorArrayUnstack/strided_slice,RNN_layer/rnn/TensorArrayUnstack/range/delta*

Tidx0*#
_output_shapes
:€€€€€€€€€
™
HRNN_layer/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3RNN_layer/rnn/TensorArray_1&RNN_layer/rnn/TensorArrayUnstack/rangeRNN_layer/rnn/transposeRNN_layer/rnn/TensorArray_1:1*
T0**
_class 
loc:@RNN_layer/rnn/transpose*
_output_shapes
: 
Y
RNN_layer/rnn/Maximum/xConst*
value	B :*
dtype0*
_output_shapes
: 
y
RNN_layer/rnn/MaximumMaximumRNN_layer/rnn/Maximum/xRNN_layer/rnn/strided_slice_1*
T0*
_output_shapes
: 
w
RNN_layer/rnn/MinimumMinimumRNN_layer/rnn/strided_slice_1RNN_layer/rnn/Maximum*
T0*
_output_shapes
: 
g
%RNN_layer/rnn/while/iteration_counterConst*
value	B : *
dtype0*
_output_shapes
: 
Ћ
RNN_layer/rnn/while/EnterEnter%RNN_layer/rnn/while/iteration_counter*
T0*
parallel_iterations *1

frame_name#!RNN_layer/rnn/while/while_context*
is_constant( *
_output_shapes
: 
Ї
RNN_layer/rnn/while/Enter_1EnterRNN_layer/rnn/time*
T0*
parallel_iterations *1

frame_name#!RNN_layer/rnn/while/while_context*
is_constant( *
_output_shapes
: 
√
RNN_layer/rnn/while/Enter_2EnterRNN_layer/rnn/TensorArray:1*
T0*
parallel_iterations *1

frame_name#!RNN_layer/rnn/while/while_context*
is_constant( *
_output_shapes
: 
ъ
RNN_layer/rnn/while/Enter_3Enter@RNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros*
T0*
parallel_iterations *1

frame_name#!RNN_layer/rnn/while/while_context*
is_constant( *(
_output_shapes
:€€€€€€€€€А
ь
RNN_layer/rnn/while/Enter_4EnterBRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros_1*
T0*
parallel_iterations *1

frame_name#!RNN_layer/rnn/while/while_context*
is_constant( *(
_output_shapes
:€€€€€€€€€А
ь
RNN_layer/rnn/while/Enter_5EnterBRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros*
T0*
parallel_iterations *1

frame_name#!RNN_layer/rnn/while/while_context*
is_constant( *(
_output_shapes
:€€€€€€€€€А
ю
RNN_layer/rnn/while/Enter_6EnterDRNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros_1*
T0*
parallel_iterations *1

frame_name#!RNN_layer/rnn/while/while_context*
is_constant( *(
_output_shapes
:€€€€€€€€€А
М
RNN_layer/rnn/while/MergeMergeRNN_layer/rnn/while/Enter!RNN_layer/rnn/while/NextIteration*
T0*
N*
_output_shapes
: : 
Т
RNN_layer/rnn/while/Merge_1MergeRNN_layer/rnn/while/Enter_1#RNN_layer/rnn/while/NextIteration_1*
T0*
N*
_output_shapes
: : 
Т
RNN_layer/rnn/while/Merge_2MergeRNN_layer/rnn/while/Enter_2#RNN_layer/rnn/while/NextIteration_2*
T0*
N*
_output_shapes
: : 
§
RNN_layer/rnn/while/Merge_3MergeRNN_layer/rnn/while/Enter_3#RNN_layer/rnn/while/NextIteration_3*
T0*
N**
_output_shapes
:€€€€€€€€€А: 
§
RNN_layer/rnn/while/Merge_4MergeRNN_layer/rnn/while/Enter_4#RNN_layer/rnn/while/NextIteration_4*
T0*
N**
_output_shapes
:€€€€€€€€€А: 
§
RNN_layer/rnn/while/Merge_5MergeRNN_layer/rnn/while/Enter_5#RNN_layer/rnn/while/NextIteration_5*
T0*
N**
_output_shapes
:€€€€€€€€€А: 
§
RNN_layer/rnn/while/Merge_6MergeRNN_layer/rnn/while/Enter_6#RNN_layer/rnn/while/NextIteration_6*
T0*
N**
_output_shapes
:€€€€€€€€€А: 
|
RNN_layer/rnn/while/LessLessRNN_layer/rnn/while/MergeRNN_layer/rnn/while/Less/Enter*
T0*
_output_shapes
: 
»
RNN_layer/rnn/while/Less/EnterEnterRNN_layer/rnn/strided_slice_1*
T0*
parallel_iterations *1

frame_name#!RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
: 
В
RNN_layer/rnn/while/Less_1LessRNN_layer/rnn/while/Merge_1 RNN_layer/rnn/while/Less_1/Enter*
T0*
_output_shapes
: 
¬
 RNN_layer/rnn/while/Less_1/EnterEnterRNN_layer/rnn/Minimum*
T0*
parallel_iterations *1

frame_name#!RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
: 
z
RNN_layer/rnn/while/LogicalAnd
LogicalAndRNN_layer/rnn/while/LessRNN_layer/rnn/while/Less_1*
_output_shapes
: 
`
RNN_layer/rnn/while/LoopCondLoopCondRNN_layer/rnn/while/LogicalAnd*
_output_shapes
: 
Ѓ
RNN_layer/rnn/while/SwitchSwitchRNN_layer/rnn/while/MergeRNN_layer/rnn/while/LoopCond*
T0*,
_class"
 loc:@RNN_layer/rnn/while/Merge*
_output_shapes
: : 
і
RNN_layer/rnn/while/Switch_1SwitchRNN_layer/rnn/while/Merge_1RNN_layer/rnn/while/LoopCond*
T0*.
_class$
" loc:@RNN_layer/rnn/while/Merge_1*
_output_shapes
: : 
і
RNN_layer/rnn/while/Switch_2SwitchRNN_layer/rnn/while/Merge_2RNN_layer/rnn/while/LoopCond*
T0*.
_class$
" loc:@RNN_layer/rnn/while/Merge_2*
_output_shapes
: : 
Ў
RNN_layer/rnn/while/Switch_3SwitchRNN_layer/rnn/while/Merge_3RNN_layer/rnn/while/LoopCond*
T0*.
_class$
" loc:@RNN_layer/rnn/while/Merge_3*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А
Ў
RNN_layer/rnn/while/Switch_4SwitchRNN_layer/rnn/while/Merge_4RNN_layer/rnn/while/LoopCond*
T0*.
_class$
" loc:@RNN_layer/rnn/while/Merge_4*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А
Ў
RNN_layer/rnn/while/Switch_5SwitchRNN_layer/rnn/while/Merge_5RNN_layer/rnn/while/LoopCond*
T0*.
_class$
" loc:@RNN_layer/rnn/while/Merge_5*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А
Ў
RNN_layer/rnn/while/Switch_6SwitchRNN_layer/rnn/while/Merge_6RNN_layer/rnn/while/LoopCond*
T0*.
_class$
" loc:@RNN_layer/rnn/while/Merge_6*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А
g
RNN_layer/rnn/while/IdentityIdentityRNN_layer/rnn/while/Switch:1*
T0*
_output_shapes
: 
k
RNN_layer/rnn/while/Identity_1IdentityRNN_layer/rnn/while/Switch_1:1*
T0*
_output_shapes
: 
k
RNN_layer/rnn/while/Identity_2IdentityRNN_layer/rnn/while/Switch_2:1*
T0*
_output_shapes
: 
}
RNN_layer/rnn/while/Identity_3IdentityRNN_layer/rnn/while/Switch_3:1*
T0*(
_output_shapes
:€€€€€€€€€А
}
RNN_layer/rnn/while/Identity_4IdentityRNN_layer/rnn/while/Switch_4:1*
T0*(
_output_shapes
:€€€€€€€€€А
}
RNN_layer/rnn/while/Identity_5IdentityRNN_layer/rnn/while/Switch_5:1*
T0*(
_output_shapes
:€€€€€€€€€А
}
RNN_layer/rnn/while/Identity_6IdentityRNN_layer/rnn/while/Switch_6:1*
T0*(
_output_shapes
:€€€€€€€€€А
z
RNN_layer/rnn/while/add/yConst^RNN_layer/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
x
RNN_layer/rnn/while/addAddRNN_layer/rnn/while/IdentityRNN_layer/rnn/while/add/y*
T0*
_output_shapes
: 
м
%RNN_layer/rnn/while/TensorArrayReadV3TensorArrayReadV3+RNN_layer/rnn/while/TensorArrayReadV3/EnterRNN_layer/rnn/while/Identity_1-RNN_layer/rnn/while/TensorArrayReadV3/Enter_1*
dtype0*'
_output_shapes
:€€€€€€€€€d
„
+RNN_layer/rnn/while/TensorArrayReadV3/EnterEnterRNN_layer/rnn/TensorArray_1*
T0*
parallel_iterations *1

frame_name#!RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
В
-RNN_layer/rnn/while/TensorArrayReadV3/Enter_1EnterHRNN_layer/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*
parallel_iterations *1

frame_name#!RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
: 
з
Qrnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/shapeConst*
valueB"д      *
dtype0*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
_output_shapes
:
ў
Ornn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/minConst*
valueB
 *ИiЄљ*
dtype0*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
_output_shapes
: 
ў
Ornn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/maxConst*
valueB
 *ИiЄ=*
dtype0*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
_output_shapes
: 
”
Yrnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/RandomUniformRandomUniformQrnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/shape*
T0*
dtype0*
seed2 *

seed *C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel* 
_output_shapes
:
дА
ё
Ornn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/subSubOrnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/maxOrnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/min*
T0*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
_output_shapes
: 
т
Ornn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/mulMulYrnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/RandomUniformOrnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/sub*
T0*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel* 
_output_shapes
:
дА
д
Krnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniformAddOrnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/mulOrnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/min*
T0*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel* 
_output_shapes
:
дА
н
0rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel
VariableV2*
dtype0*
shared_name *
shape:
дА*
	container *C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel* 
_output_shapes
:
дА
ў
7rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/AssignAssign0rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernelKrnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform*
T0*
use_locking(*
validate_shape(*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel* 
_output_shapes
:
дА
Ю
5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/readIdentity0rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
T0* 
_output_shapes
:
дА
“
@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Initializer/zerosConst*
valueBА*    *
dtype0*A
_class7
53loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
_output_shapes	
:А
я
.rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias
VariableV2*
dtype0*
shared_name *
shape:А*
	container *A
_class7
53loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
_output_shapes	
:А
√
5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/AssignAssign.rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Initializer/zeros*
T0*
use_locking(*
validate_shape(*A
_class7
53loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
_output_shapes	
:А
Х
3rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/readIdentity.rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
T0*
_output_shapes	
:А
§
CRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/ConstConst^RNN_layer/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
™
IRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat/axisConst^RNN_layer/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
™
DRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concatConcatV2%RNN_layer/rnn/while/TensorArrayReadV3RNN_layer/rnn/while/Identity_4IRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat/axis*
T0*
N*

Tidx0*(
_output_shapes
:€€€€€€€€€д
є
DRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMulMatMulDRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concatJRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter*
T0*
transpose_b( *
transpose_a( *(
_output_shapes
:€€€€€€€€€А
Ц
JRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/EnterEnter5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/read*
T0*
parallel_iterations *1

frame_name#!RNN_layer/rnn/while/while_context*
is_constant(* 
_output_shapes
:
дА
≠
ERNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAddBiasAddDRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMulKRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter*
T0*
data_formatNHWC*(
_output_shapes
:€€€€€€€€€А
Р
KRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/EnterEnter3rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/read*
T0*
parallel_iterations *1

frame_name#!RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes	
:А
¶
ERNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Const_1Const^RNN_layer/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Ў
CRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/splitSplitCRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/ConstERNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd*
T0*
	num_split*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А
©
ERNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Const_2Const^RNN_layer/rnn/while/Identity*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Й
ARNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/AddAddERNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split:2ERNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Const_2*
T0*(
_output_shapes
:€€€€€€€€€А
∆
ERNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/SigmoidSigmoidARNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add*
T0*(
_output_shapes
:€€€€€€€€€А
в
ARNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MulMulRNN_layer/rnn/while/Identity_3ERNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid*
T0*(
_output_shapes
:€€€€€€€€€А
 
GRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_1SigmoidCRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split*
T0*(
_output_shapes
:€€€€€€€€€А
ƒ
BRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/TanhTanhERNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split:1*
T0*(
_output_shapes
:€€€€€€€€€А
К
CRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1MulGRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_1BRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh*
T0*(
_output_shapes
:€€€€€€€€€А
Е
CRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1AddARNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MulCRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1*
T0*(
_output_shapes
:€€€€€€€€€А
ƒ
DRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_1TanhCRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1*
T0*(
_output_shapes
:€€€€€€€€€А
ћ
GRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_2SigmoidERNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split:3*
T0*(
_output_shapes
:€€€€€€€€€А
М
CRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2MulDRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_1GRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_2*
T0*(
_output_shapes
:€€€€€€€€€А
з
Qrnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Initializer/random_uniform/shapeConst*
valueB"      *
dtype0*C
_class9
75loc:@rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel*
_output_shapes
:
ў
Ornn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Initializer/random_uniform/minConst*
valueB
 *уµљ*
dtype0*C
_class9
75loc:@rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel*
_output_shapes
: 
ў
Ornn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Initializer/random_uniform/maxConst*
valueB
 *уµ=*
dtype0*C
_class9
75loc:@rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel*
_output_shapes
: 
”
Yrnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Initializer/random_uniform/RandomUniformRandomUniformQrnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Initializer/random_uniform/shape*
T0*
dtype0*
seed2 *

seed *C
_class9
75loc:@rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel* 
_output_shapes
:
АА
ё
Ornn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Initializer/random_uniform/subSubOrnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Initializer/random_uniform/maxOrnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Initializer/random_uniform/min*
T0*C
_class9
75loc:@rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel*
_output_shapes
: 
т
Ornn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Initializer/random_uniform/mulMulYrnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Initializer/random_uniform/RandomUniformOrnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Initializer/random_uniform/sub*
T0*C
_class9
75loc:@rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel* 
_output_shapes
:
АА
д
Krnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Initializer/random_uniformAddOrnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Initializer/random_uniform/mulOrnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Initializer/random_uniform/min*
T0*C
_class9
75loc:@rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel* 
_output_shapes
:
АА
н
0rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel
VariableV2*
dtype0*
shared_name *
shape:
АА*
	container *C
_class9
75loc:@rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel* 
_output_shapes
:
АА
ў
7rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/AssignAssign0rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernelKrnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Initializer/random_uniform*
T0*
use_locking(*
validate_shape(*C
_class9
75loc:@rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel* 
_output_shapes
:
АА
Ю
5rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/readIdentity0rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel*
T0* 
_output_shapes
:
АА
“
@rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Initializer/zerosConst*
valueBА*    *
dtype0*A
_class7
53loc:@rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
_output_shapes	
:А
я
.rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias
VariableV2*
dtype0*
shared_name *
shape:А*
	container *A
_class7
53loc:@rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
_output_shapes	
:А
√
5rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/AssignAssign.rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias@rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Initializer/zeros*
T0*
use_locking(*
validate_shape(*A
_class7
53loc:@rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
_output_shapes	
:А
Х
3rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/readIdentity.rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
T0*
_output_shapes	
:А
§
CRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/ConstConst^RNN_layer/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
™
IRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat/axisConst^RNN_layer/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
»
DRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concatConcatV2CRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2RNN_layer/rnn/while/Identity_6IRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat/axis*
T0*
N*

Tidx0*(
_output_shapes
:€€€€€€€€€А
є
DRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MatMulMatMulDRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concatJRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul/Enter*
T0*
transpose_b( *
transpose_a( *(
_output_shapes
:€€€€€€€€€А
Ц
JRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul/EnterEnter5rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/read*
T0*
parallel_iterations *1

frame_name#!RNN_layer/rnn/while/while_context*
is_constant(* 
_output_shapes
:
АА
≠
ERNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAddBiasAddDRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MatMulKRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd/Enter*
T0*
data_formatNHWC*(
_output_shapes
:€€€€€€€€€А
Р
KRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd/EnterEnter3rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/read*
T0*
parallel_iterations *1

frame_name#!RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes	
:А
¶
ERNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Const_1Const^RNN_layer/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Ў
CRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/splitSplitCRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/ConstERNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd*
T0*
	num_split*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А
©
ERNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Const_2Const^RNN_layer/rnn/while/Identity*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Й
ARNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/AddAddERNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/split:2ERNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Const_2*
T0*(
_output_shapes
:€€€€€€€€€А
∆
ERNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/SigmoidSigmoidARNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add*
T0*(
_output_shapes
:€€€€€€€€€А
в
ARNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MulMulRNN_layer/rnn/while/Identity_5ERNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid*
T0*(
_output_shapes
:€€€€€€€€€А
 
GRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_1SigmoidCRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/split*
T0*(
_output_shapes
:€€€€€€€€€А
ƒ
BRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/TanhTanhERNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/split:1*
T0*(
_output_shapes
:€€€€€€€€€А
К
CRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1MulGRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_1BRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Tanh*
T0*(
_output_shapes
:€€€€€€€€€А
Е
CRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1AddARNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MulCRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1*
T0*(
_output_shapes
:€€€€€€€€€А
ƒ
DRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Tanh_1TanhCRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1*
T0*(
_output_shapes
:€€€€€€€€€А
ћ
GRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_2SigmoidERNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/split:3*
T0*(
_output_shapes
:€€€€€€€€€А
М
CRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2MulDRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Tanh_1GRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_2*
T0*(
_output_shapes
:€€€€€€€€€А
К
7RNN_layer/rnn/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3=RNN_layer/rnn/while/TensorArrayWrite/TensorArrayWriteV3/EnterRNN_layer/rnn/while/Identity_1CRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2RNN_layer/rnn/while/Identity_2*
T0*V
_classL
JHloc:@RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2*
_output_shapes
: 
њ
=RNN_layer/rnn/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnterRNN_layer/rnn/TensorArray*
T0*
parallel_iterations *1

frame_name#!RNN_layer/rnn/while/while_context*
is_constant(*V
_classL
JHloc:@RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2*
_output_shapes
:
|
RNN_layer/rnn/while/add_1/yConst^RNN_layer/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
~
RNN_layer/rnn/while/add_1AddRNN_layer/rnn/while/Identity_1RNN_layer/rnn/while/add_1/y*
T0*
_output_shapes
: 
l
!RNN_layer/rnn/while/NextIterationNextIterationRNN_layer/rnn/while/add*
T0*
_output_shapes
: 
p
#RNN_layer/rnn/while/NextIteration_1NextIterationRNN_layer/rnn/while/add_1*
T0*
_output_shapes
: 
О
#RNN_layer/rnn/while/NextIteration_2NextIteration7RNN_layer/rnn/while/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
ђ
#RNN_layer/rnn/while/NextIteration_3NextIterationCRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1*
T0*(
_output_shapes
:€€€€€€€€€А
ђ
#RNN_layer/rnn/while/NextIteration_4NextIterationCRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2*
T0*(
_output_shapes
:€€€€€€€€€А
ђ
#RNN_layer/rnn/while/NextIteration_5NextIterationCRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1*
T0*(
_output_shapes
:€€€€€€€€€А
ђ
#RNN_layer/rnn/while/NextIteration_6NextIterationCRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2*
T0*(
_output_shapes
:€€€€€€€€€А
]
RNN_layer/rnn/while/ExitExitRNN_layer/rnn/while/Switch*
T0*
_output_shapes
: 
a
RNN_layer/rnn/while/Exit_1ExitRNN_layer/rnn/while/Switch_1*
T0*
_output_shapes
: 
a
RNN_layer/rnn/while/Exit_2ExitRNN_layer/rnn/while/Switch_2*
T0*
_output_shapes
: 
s
RNN_layer/rnn/while/Exit_3ExitRNN_layer/rnn/while/Switch_3*
T0*(
_output_shapes
:€€€€€€€€€А
s
RNN_layer/rnn/while/Exit_4ExitRNN_layer/rnn/while/Switch_4*
T0*(
_output_shapes
:€€€€€€€€€А
s
RNN_layer/rnn/while/Exit_5ExitRNN_layer/rnn/while/Switch_5*
T0*(
_output_shapes
:€€€€€€€€€А
s
RNN_layer/rnn/while/Exit_6ExitRNN_layer/rnn/while/Switch_6*
T0*(
_output_shapes
:€€€€€€€€€А
¬
0RNN_layer/rnn/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3RNN_layer/rnn/TensorArrayRNN_layer/rnn/while/Exit_2*,
_class"
 loc:@RNN_layer/rnn/TensorArray*
_output_shapes
: 
Ъ
*RNN_layer/rnn/TensorArrayStack/range/startConst*
value	B : *
dtype0*,
_class"
 loc:@RNN_layer/rnn/TensorArray*
_output_shapes
: 
Ъ
*RNN_layer/rnn/TensorArrayStack/range/deltaConst*
value	B :*
dtype0*,
_class"
 loc:@RNN_layer/rnn/TensorArray*
_output_shapes
: 
Ц
$RNN_layer/rnn/TensorArrayStack/rangeRange*RNN_layer/rnn/TensorArrayStack/range/start0RNN_layer/rnn/TensorArrayStack/TensorArraySizeV3*RNN_layer/rnn/TensorArrayStack/range/delta*

Tidx0*,
_class"
 loc:@RNN_layer/rnn/TensorArray*#
_output_shapes
:€€€€€€€€€
ґ
2RNN_layer/rnn/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3RNN_layer/rnn/TensorArray$RNN_layer/rnn/TensorArrayStack/rangeRNN_layer/rnn/while/Exit_2*%
element_shape:€€€€€€€€€А*
dtype0*,
_class"
 loc:@RNN_layer/rnn/TensorArray*,
_output_shapes
:d€€€€€€€€€А
`
RNN_layer/rnn/Const_1Const*
valueB:А*
dtype0*
_output_shapes
:
V
RNN_layer/rnn/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
]
RNN_layer/rnn/range_1/startConst*
value	B :*
dtype0*
_output_shapes
: 
]
RNN_layer/rnn/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ц
RNN_layer/rnn/range_1RangeRNN_layer/rnn/range_1/startRNN_layer/rnn/Rank_1RNN_layer/rnn/range_1/delta*

Tidx0*
_output_shapes
:
p
RNN_layer/rnn/concat_2/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
]
RNN_layer/rnn/concat_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
±
RNN_layer/rnn/concat_2ConcatV2RNN_layer/rnn/concat_2/values_0RNN_layer/rnn/range_1RNN_layer/rnn/concat_2/axis*
T0*
N*

Tidx0*
_output_shapes
:
ґ
RNN_layer/rnn/transpose_1	Transpose2RNN_layer/rnn/TensorArrayStack/TensorArrayGatherV3RNN_layer/rnn/concat_2*
T0*
Tperm0*,
_output_shapes
:€€€€€€€€€dА
m
RNN_layer/transpose/permConst*!
valueB"          *
dtype0*
_output_shapes
:
Щ
RNN_layer/transpose	TransposeRNN_layer/rnn/transpose_1RNN_layer/transpose/perm*
T0*
Tperm0*,
_output_shapes
:d€€€€€€€€€А
t
!Dropout_layer/strided_slice/stackConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
m
#Dropout_layer/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
m
#Dropout_layer/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
—
Dropout_layer/strided_sliceStridedSliceRNN_layer/transpose!Dropout_layer/strided_slice/stack#Dropout_layer/strided_slice/stack_1#Dropout_layer/strided_slice/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *(
_output_shapes
:€€€€€€€€€А
v
Dropout_layer/dropout/ShapeShapeDropout_layer/strided_slice*
T0*
out_type0*
_output_shapes
:
m
(Dropout_layer/dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
m
(Dropout_layer/dropout/random_uniform/maxConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
є
2Dropout_layer/dropout/random_uniform/RandomUniformRandomUniformDropout_layer/dropout/Shape*
T0*
dtype0*
seed2 *

seed *(
_output_shapes
:€€€€€€€€€А
§
(Dropout_layer/dropout/random_uniform/subSub(Dropout_layer/dropout/random_uniform/max(Dropout_layer/dropout/random_uniform/min*
T0*
_output_shapes
: 
ј
(Dropout_layer/dropout/random_uniform/mulMul2Dropout_layer/dropout/random_uniform/RandomUniform(Dropout_layer/dropout/random_uniform/sub*
T0*(
_output_shapes
:€€€€€€€€€А
≤
$Dropout_layer/dropout/random_uniformAdd(Dropout_layer/dropout/random_uniform/mul(Dropout_layer/dropout/random_uniform/min*
T0*(
_output_shapes
:€€€€€€€€€А
А
Dropout_layer/dropout/addAddInput_Layer/keep_prob$Dropout_layer/dropout/random_uniform*
T0*
_output_shapes
:
b
Dropout_layer/dropout/FloorFloorDropout_layer/dropout/add*
T0*
_output_shapes
:
{
Dropout_layer/dropout/divRealDivDropout_layer/strided_sliceInput_Layer/keep_prob*
T0*
_output_shapes
:
Л
Dropout_layer/dropout/mulMulDropout_layer/dropout/divDropout_layer/dropout/Floor*
T0*(
_output_shapes
:€€€€€€€€€А
q
 Output_layer/random_normal/shapeConst*
valueB"А      *
dtype0*
_output_shapes
:
d
Output_layer/random_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
f
!Output_layer/random_normal/stddevConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
є
/Output_layer/random_normal/RandomStandardNormalRandomStandardNormal Output_layer/random_normal/shape*
T0*
dtype0*
seed2 *

seed *
_output_shapes
:	А
£
Output_layer/random_normal/mulMul/Output_layer/random_normal/RandomStandardNormal!Output_layer/random_normal/stddev*
T0*
_output_shapes
:	А
М
Output_layer/random_normalAddOutput_layer/random_normal/mulOutput_layer/random_normal/mean*
T0*
_output_shapes
:	А
Л
Output_layer/Variable
VariableV2*
dtype0*
shared_name *
shape:	А*
	container *
_output_shapes
:	А
÷
Output_layer/Variable/AssignAssignOutput_layer/VariableOutput_layer/random_normal*
T0*
use_locking(*
validate_shape(*(
_class
loc:@Output_layer/Variable*
_output_shapes
:	А
С
Output_layer/Variable/readIdentityOutput_layer/Variable*
T0*(
_class
loc:@Output_layer/Variable*
_output_shapes
:	А
l
"Output_layer/random_normal_1/shapeConst*
valueB:*
dtype0*
_output_shapes
:
f
!Output_layer/random_normal_1/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
h
#Output_layer/random_normal_1/stddevConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Є
1Output_layer/random_normal_1/RandomStandardNormalRandomStandardNormal"Output_layer/random_normal_1/shape*
T0*
dtype0*
seed2 *

seed *
_output_shapes
:
§
 Output_layer/random_normal_1/mulMul1Output_layer/random_normal_1/RandomStandardNormal#Output_layer/random_normal_1/stddev*
T0*
_output_shapes
:
Н
Output_layer/random_normal_1Add Output_layer/random_normal_1/mul!Output_layer/random_normal_1/mean*
T0*
_output_shapes
:
Г
Output_layer/Variable_1
VariableV2*
dtype0*
shared_name *
shape:*
	container *
_output_shapes
:
ў
Output_layer/Variable_1/AssignAssignOutput_layer/Variable_1Output_layer/random_normal_1*
T0*
use_locking(*
validate_shape(**
_class 
loc:@Output_layer/Variable_1*
_output_shapes
:
Т
Output_layer/Variable_1/readIdentityOutput_layer/Variable_1*
T0**
_class 
loc:@Output_layer/Variable_1*
_output_shapes
:
ђ
Output_layer/MatMulMatMulDropout_layer/dropout/mulOutput_layer/Variable/read*
T0*
transpose_b( *
transpose_a( *'
_output_shapes
:€€€€€€€€€
|
Output_layer/addAddOutput_layer/MatMulOutput_layer/Variable_1/read*
T0*'
_output_shapes
:€€€€€€€€€
m
+Loss/softmax_cross_entropy_with_logits/RankConst*
value	B :*
dtype0*
_output_shapes
: 
|
,Loss/softmax_cross_entropy_with_logits/ShapeShapeOutput_layer/add*
T0*
out_type0*
_output_shapes
:
o
-Loss/softmax_cross_entropy_with_logits/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
~
.Loss/softmax_cross_entropy_with_logits/Shape_1ShapeOutput_layer/add*
T0*
out_type0*
_output_shapes
:
n
,Loss/softmax_cross_entropy_with_logits/Sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
ѓ
*Loss/softmax_cross_entropy_with_logits/SubSub-Loss/softmax_cross_entropy_with_logits/Rank_1,Loss/softmax_cross_entropy_with_logits/Sub/y*
T0*
_output_shapes
: 
†
2Loss/softmax_cross_entropy_with_logits/Slice/beginPack*Loss/softmax_cross_entropy_with_logits/Sub*

axis *
T0*
N*
_output_shapes
:
{
1Loss/softmax_cross_entropy_with_logits/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
ю
,Loss/softmax_cross_entropy_with_logits/SliceSlice.Loss/softmax_cross_entropy_with_logits/Shape_12Loss/softmax_cross_entropy_with_logits/Slice/begin1Loss/softmax_cross_entropy_with_logits/Slice/size*
Index0*
T0*
_output_shapes
:
Й
6Loss/softmax_cross_entropy_with_logits/concat/values_0Const*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
t
2Loss/softmax_cross_entropy_with_logits/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Н
-Loss/softmax_cross_entropy_with_logits/concatConcatV26Loss/softmax_cross_entropy_with_logits/concat/values_0,Loss/softmax_cross_entropy_with_logits/Slice2Loss/softmax_cross_entropy_with_logits/concat/axis*
T0*
N*

Tidx0*
_output_shapes
:
√
.Loss/softmax_cross_entropy_with_logits/ReshapeReshapeOutput_layer/add-Loss/softmax_cross_entropy_with_logits/concat*
T0*
Tshape0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
o
-Loss/softmax_cross_entropy_with_logits/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
Б
.Loss/softmax_cross_entropy_with_logits/Shape_2ShapeInput_Layer/label_y*
T0*
out_type0*
_output_shapes
:
p
.Loss/softmax_cross_entropy_with_logits/Sub_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
≥
,Loss/softmax_cross_entropy_with_logits/Sub_1Sub-Loss/softmax_cross_entropy_with_logits/Rank_2.Loss/softmax_cross_entropy_with_logits/Sub_1/y*
T0*
_output_shapes
: 
§
4Loss/softmax_cross_entropy_with_logits/Slice_1/beginPack,Loss/softmax_cross_entropy_with_logits/Sub_1*

axis *
T0*
N*
_output_shapes
:
}
3Loss/softmax_cross_entropy_with_logits/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
Д
.Loss/softmax_cross_entropy_with_logits/Slice_1Slice.Loss/softmax_cross_entropy_with_logits/Shape_24Loss/softmax_cross_entropy_with_logits/Slice_1/begin3Loss/softmax_cross_entropy_with_logits/Slice_1/size*
Index0*
T0*
_output_shapes
:
Л
8Loss/softmax_cross_entropy_with_logits/concat_1/values_0Const*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
v
4Loss/softmax_cross_entropy_with_logits/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Х
/Loss/softmax_cross_entropy_with_logits/concat_1ConcatV28Loss/softmax_cross_entropy_with_logits/concat_1/values_0.Loss/softmax_cross_entropy_with_logits/Slice_14Loss/softmax_cross_entropy_with_logits/concat_1/axis*
T0*
N*

Tidx0*
_output_shapes
:
 
0Loss/softmax_cross_entropy_with_logits/Reshape_1ReshapeInput_Layer/label_y/Loss/softmax_cross_entropy_with_logits/concat_1*
T0*
Tshape0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
у
&Loss/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits.Loss/softmax_cross_entropy_with_logits/Reshape0Loss/softmax_cross_entropy_with_logits/Reshape_1*
T0*?
_output_shapes-
+:€€€€€€€€€:€€€€€€€€€€€€€€€€€€
p
.Loss/softmax_cross_entropy_with_logits/Sub_2/yConst*
value	B :*
dtype0*
_output_shapes
: 
±
,Loss/softmax_cross_entropy_with_logits/Sub_2Sub+Loss/softmax_cross_entropy_with_logits/Rank.Loss/softmax_cross_entropy_with_logits/Sub_2/y*
T0*
_output_shapes
: 
~
4Loss/softmax_cross_entropy_with_logits/Slice_2/beginConst*
valueB: *
dtype0*
_output_shapes
:
£
3Loss/softmax_cross_entropy_with_logits/Slice_2/sizePack,Loss/softmax_cross_entropy_with_logits/Sub_2*

axis *
T0*
N*
_output_shapes
:
Л
.Loss/softmax_cross_entropy_with_logits/Slice_2Slice,Loss/softmax_cross_entropy_with_logits/Shape4Loss/softmax_cross_entropy_with_logits/Slice_2/begin3Loss/softmax_cross_entropy_with_logits/Slice_2/size*
Index0*
T0*#
_output_shapes
:€€€€€€€€€
ѕ
0Loss/softmax_cross_entropy_with_logits/Reshape_2Reshape&Loss/softmax_cross_entropy_with_logits.Loss/softmax_cross_entropy_with_logits/Slice_2*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
T

Loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Н
	Loss/MeanMean0Loss/softmax_cross_entropy_with_logits/Reshape_2
Loss/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
W
Loss/gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
]
Loss/gradients/grad_ys_0Const*
valueB
 *  А?*
dtype0*
_output_shapes
: 
~
Loss/gradients/FillFillLoss/gradients/ShapeLoss/gradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
X
Loss/gradients/f_countConst*
value	B : *
dtype0*
_output_shapes
: 
ї
Loss/gradients/f_count_1EnterLoss/gradients/f_count*
T0*
parallel_iterations *1

frame_name#!RNN_layer/rnn/while/while_context*
is_constant( *
_output_shapes
: 
Б
Loss/gradients/MergeMergeLoss/gradients/f_count_1Loss/gradients/NextIteration*
T0*
N*
_output_shapes
: : 
v
Loss/gradients/SwitchSwitchLoss/gradients/MergeRNN_layer/rnn/while/LoopCond*
T0*
_output_shapes
: : 
u
Loss/gradients/Add/yConst^RNN_layer/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
i
Loss/gradients/AddAddLoss/gradients/Switch:1Loss/gradients/Add/y*
T0*
_output_shapes
: 
Ґ"
Loss/gradients/NextIterationNextIterationLoss/gradients/Addj^Loss/gradients/RNN_layer/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2z^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPushV2|^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPushV2_1x^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/StackPushV2n^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/StackPushV2z^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPushV2|^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPushV2_1h^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/StackPushV2j^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/StackPushV2z^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPushV2|^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPushV2_1h^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/StackPushV2j^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/StackPushV2x^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPushV2z^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPushV2_1f^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/StackPushV2h^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1/StackPushV2l^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/StackPushV2n^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/StackPushV2_1z^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPushV2|^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPushV2_1x^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/StackPushV2n^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1/StackPushV2z^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPushV2|^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPushV2_1h^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/StackPushV2j^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/StackPushV2z^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPushV2|^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPushV2_1h^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/StackPushV2j^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/StackPushV2x^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPushV2z^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPushV2_1f^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/StackPushV2h^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul_1/StackPushV2l^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/StackPushV2n^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/StackPushV2_1*
T0*
_output_shapes
: 
X
Loss/gradients/f_count_2ExitLoss/gradients/Switch*
T0*
_output_shapes
: 
X
Loss/gradients/b_countConst*
value	B :*
dtype0*
_output_shapes
: 
ћ
Loss/gradients/b_count_1EnterLoss/gradients/f_count_2*
T0*
parallel_iterations *@

frame_name20Loss/gradients/RNN_layer/rnn/while/while_context*
is_constant( *
_output_shapes
: 
Е
Loss/gradients/Merge_1MergeLoss/gradients/b_count_1Loss/gradients/NextIteration_1*
T0*
N*
_output_shapes
: : 
З
Loss/gradients/GreaterEqualGreaterEqualLoss/gradients/Merge_1!Loss/gradients/GreaterEqual/Enter*
T0*
_output_shapes
: 
”
!Loss/gradients/GreaterEqual/EnterEnterLoss/gradients/b_count*
T0*
parallel_iterations *@

frame_name20Loss/gradients/RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
: 
Y
Loss/gradients/b_count_2LoopCondLoss/gradients/GreaterEqual*
_output_shapes
: 
v
Loss/gradients/Switch_1SwitchLoss/gradients/Merge_1Loss/gradients/b_count_2*
T0*
_output_shapes
: : 
x
Loss/gradients/SubSubLoss/gradients/Switch_1:1!Loss/gradients/GreaterEqual/Enter*
T0*
_output_shapes
: 
Ћ
Loss/gradients/NextIteration_1NextIterationLoss/gradients/Sube^Loss/gradients/RNN_layer/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_sync*
T0*
_output_shapes
: 
Z
Loss/gradients/b_count_3ExitLoss/gradients/Switch_1*
T0*
_output_shapes
: 
u
+Loss/gradients/Loss/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
•
%Loss/gradients/Loss/Mean_grad/ReshapeReshapeLoss/gradients/Fill+Loss/gradients/Loss/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
У
#Loss/gradients/Loss/Mean_grad/ShapeShape0Loss/softmax_cross_entropy_with_logits/Reshape_2*
T0*
out_type0*
_output_shapes
:
ґ
"Loss/gradients/Loss/Mean_grad/TileTile%Loss/gradients/Loss/Mean_grad/Reshape#Loss/gradients/Loss/Mean_grad/Shape*
T0*

Tmultiples0*#
_output_shapes
:€€€€€€€€€
Х
%Loss/gradients/Loss/Mean_grad/Shape_1Shape0Loss/softmax_cross_entropy_with_logits/Reshape_2*
T0*
out_type0*
_output_shapes
:
h
%Loss/gradients/Loss/Mean_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
m
#Loss/gradients/Loss/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
і
"Loss/gradients/Loss/Mean_grad/ProdProd%Loss/gradients/Loss/Mean_grad/Shape_1#Loss/gradients/Loss/Mean_grad/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
o
%Loss/gradients/Loss/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
Є
$Loss/gradients/Loss/Mean_grad/Prod_1Prod%Loss/gradients/Loss/Mean_grad/Shape_2%Loss/gradients/Loss/Mean_grad/Const_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
i
'Loss/gradients/Loss/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 
†
%Loss/gradients/Loss/Mean_grad/MaximumMaximum$Loss/gradients/Loss/Mean_grad/Prod_1'Loss/gradients/Loss/Mean_grad/Maximum/y*
T0*
_output_shapes
: 
Ю
&Loss/gradients/Loss/Mean_grad/floordivFloorDiv"Loss/gradients/Loss/Mean_grad/Prod%Loss/gradients/Loss/Mean_grad/Maximum*
T0*
_output_shapes
: 
В
"Loss/gradients/Loss/Mean_grad/CastCast&Loss/gradients/Loss/Mean_grad/floordiv*

DstT0*

SrcT0*
_output_shapes
: 
¶
%Loss/gradients/Loss/Mean_grad/truedivRealDiv"Loss/gradients/Loss/Mean_grad/Tile"Loss/gradients/Loss/Mean_grad/Cast*
T0*#
_output_shapes
:€€€€€€€€€
∞
JLoss/gradients/Loss/softmax_cross_entropy_with_logits/Reshape_2_grad/ShapeShape&Loss/softmax_cross_entropy_with_logits*
T0*
out_type0*
_output_shapes
:
Ж
LLoss/gradients/Loss/softmax_cross_entropy_with_logits/Reshape_2_grad/ReshapeReshape%Loss/gradients/Loss/Mean_grad/truedivJLoss/gradients/Loss/softmax_cross_entropy_with_logits/Reshape_2_grad/Shape*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
Л
Loss/gradients/zeros_like	ZerosLike(Loss/softmax_cross_entropy_with_logits:1*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
Ф
ILoss/gradients/Loss/softmax_cross_entropy_with_logits_grad/ExpandDims/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
™
ELoss/gradients/Loss/softmax_cross_entropy_with_logits_grad/ExpandDims
ExpandDimsLLoss/gradients/Loss/softmax_cross_entropy_with_logits/Reshape_2_grad/ReshapeILoss/gradients/Loss/softmax_cross_entropy_with_logits_grad/ExpandDims/dim*
T0*

Tdim0*'
_output_shapes
:€€€€€€€€€
с
>Loss/gradients/Loss/softmax_cross_entropy_with_logits_grad/mulMulELoss/gradients/Loss/softmax_cross_entropy_with_logits_grad/ExpandDims(Loss/softmax_cross_entropy_with_logits:1*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
Њ
ELoss/gradients/Loss/softmax_cross_entropy_with_logits_grad/LogSoftmax
LogSoftmax.Loss/softmax_cross_entropy_with_logits/Reshape*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
«
>Loss/gradients/Loss/softmax_cross_entropy_with_logits_grad/NegNegELoss/gradients/Loss/softmax_cross_entropy_with_logits_grad/LogSoftmax*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
Ц
KLoss/gradients/Loss/softmax_cross_entropy_with_logits_grad/ExpandDims_1/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
Ѓ
GLoss/gradients/Loss/softmax_cross_entropy_with_logits_grad/ExpandDims_1
ExpandDimsLLoss/gradients/Loss/softmax_cross_entropy_with_logits/Reshape_2_grad/ReshapeKLoss/gradients/Loss/softmax_cross_entropy_with_logits_grad/ExpandDims_1/dim*
T0*

Tdim0*'
_output_shapes
:€€€€€€€€€
Л
@Loss/gradients/Loss/softmax_cross_entropy_with_logits_grad/mul_1MulGLoss/gradients/Loss/softmax_cross_entropy_with_logits_grad/ExpandDims_1>Loss/gradients/Loss/softmax_cross_entropy_with_logits_grad/Neg*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
„
KLoss/gradients/Loss/softmax_cross_entropy_with_logits_grad/tuple/group_depsNoOp?^Loss/gradients/Loss/softmax_cross_entropy_with_logits_grad/mulA^Loss/gradients/Loss/softmax_cross_entropy_with_logits_grad/mul_1
ы
SLoss/gradients/Loss/softmax_cross_entropy_with_logits_grad/tuple/control_dependencyIdentity>Loss/gradients/Loss/softmax_cross_entropy_with_logits_grad/mulL^Loss/gradients/Loss/softmax_cross_entropy_with_logits_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@Loss/gradients/Loss/softmax_cross_entropy_with_logits_grad/mul*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
Б
ULoss/gradients/Loss/softmax_cross_entropy_with_logits_grad/tuple/control_dependency_1Identity@Loss/gradients/Loss/softmax_cross_entropy_with_logits_grad/mul_1L^Loss/gradients/Loss/softmax_cross_entropy_with_logits_grad/tuple/group_deps*
T0*S
_classI
GEloc:@Loss/gradients/Loss/softmax_cross_entropy_with_logits_grad/mul_1*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
Ш
HLoss/gradients/Loss/softmax_cross_entropy_with_logits/Reshape_grad/ShapeShapeOutput_layer/add*
T0*
out_type0*
_output_shapes
:
і
JLoss/gradients/Loss/softmax_cross_entropy_with_logits/Reshape_grad/ReshapeReshapeSLoss/gradients/Loss/softmax_cross_entropy_with_logits_grad/tuple/control_dependencyHLoss/gradients/Loss/softmax_cross_entropy_with_logits/Reshape_grad/Shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
}
*Loss/gradients/Output_layer/add_grad/ShapeShapeOutput_layer/MatMul*
T0*
out_type0*
_output_shapes
:
v
,Loss/gradients/Output_layer/add_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
к
:Loss/gradients/Output_layer/add_grad/BroadcastGradientArgsBroadcastGradientArgs*Loss/gradients/Output_layer/add_grad/Shape,Loss/gradients/Output_layer/add_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
ч
(Loss/gradients/Output_layer/add_grad/SumSumJLoss/gradients/Loss/softmax_cross_entropy_with_logits/Reshape_grad/Reshape:Loss/gradients/Output_layer/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
Ќ
,Loss/gradients/Output_layer/add_grad/ReshapeReshape(Loss/gradients/Output_layer/add_grad/Sum*Loss/gradients/Output_layer/add_grad/Shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
ы
*Loss/gradients/Output_layer/add_grad/Sum_1SumJLoss/gradients/Loss/softmax_cross_entropy_with_logits/Reshape_grad/Reshape<Loss/gradients/Output_layer/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
∆
.Loss/gradients/Output_layer/add_grad/Reshape_1Reshape*Loss/gradients/Output_layer/add_grad/Sum_1,Loss/gradients/Output_layer/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
Э
5Loss/gradients/Output_layer/add_grad/tuple/group_depsNoOp-^Loss/gradients/Output_layer/add_grad/Reshape/^Loss/gradients/Output_layer/add_grad/Reshape_1
Ґ
=Loss/gradients/Output_layer/add_grad/tuple/control_dependencyIdentity,Loss/gradients/Output_layer/add_grad/Reshape6^Loss/gradients/Output_layer/add_grad/tuple/group_deps*
T0*?
_class5
31loc:@Loss/gradients/Output_layer/add_grad/Reshape*'
_output_shapes
:€€€€€€€€€
Ы
?Loss/gradients/Output_layer/add_grad/tuple/control_dependency_1Identity.Loss/gradients/Output_layer/add_grad/Reshape_16^Loss/gradients/Output_layer/add_grad/tuple/group_deps*
T0*A
_class7
53loc:@Loss/gradients/Output_layer/add_grad/Reshape_1*
_output_shapes
:
м
.Loss/gradients/Output_layer/MatMul_grad/MatMulMatMul=Loss/gradients/Output_layer/add_grad/tuple/control_dependencyOutput_layer/Variable/read*
T0*
transpose_b(*
transpose_a( *(
_output_shapes
:€€€€€€€€€А
д
0Loss/gradients/Output_layer/MatMul_grad/MatMul_1MatMulDropout_layer/dropout/mul=Loss/gradients/Output_layer/add_grad/tuple/control_dependency*
T0*
transpose_b( *
transpose_a(*
_output_shapes
:	А
§
8Loss/gradients/Output_layer/MatMul_grad/tuple/group_depsNoOp/^Loss/gradients/Output_layer/MatMul_grad/MatMul1^Loss/gradients/Output_layer/MatMul_grad/MatMul_1
≠
@Loss/gradients/Output_layer/MatMul_grad/tuple/control_dependencyIdentity.Loss/gradients/Output_layer/MatMul_grad/MatMul9^Loss/gradients/Output_layer/MatMul_grad/tuple/group_deps*
T0*A
_class7
53loc:@Loss/gradients/Output_layer/MatMul_grad/MatMul*(
_output_shapes
:€€€€€€€€€А
™
BLoss/gradients/Output_layer/MatMul_grad/tuple/control_dependency_1Identity0Loss/gradients/Output_layer/MatMul_grad/MatMul_19^Loss/gradients/Output_layer/MatMul_grad/tuple/group_deps*
T0*C
_class9
75loc:@Loss/gradients/Output_layer/MatMul_grad/MatMul_1*
_output_shapes
:	А
Х
3Loss/gradients/Dropout_layer/dropout/mul_grad/ShapeShapeDropout_layer/dropout/div*
T0*
out_type0*#
_output_shapes
:€€€€€€€€€
Щ
5Loss/gradients/Dropout_layer/dropout/mul_grad/Shape_1ShapeDropout_layer/dropout/Floor*
T0*
out_type0*#
_output_shapes
:€€€€€€€€€
Е
CLoss/gradients/Dropout_layer/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs3Loss/gradients/Dropout_layer/dropout/mul_grad/Shape5Loss/gradients/Dropout_layer/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Ї
1Loss/gradients/Dropout_layer/dropout/mul_grad/MulMul@Loss/gradients/Output_layer/MatMul_grad/tuple/control_dependencyDropout_layer/dropout/Floor*
T0*
_output_shapes
:
р
1Loss/gradients/Dropout_layer/dropout/mul_grad/SumSum1Loss/gradients/Dropout_layer/dropout/mul_grad/MulCLoss/gradients/Dropout_layer/dropout/mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
ў
5Loss/gradients/Dropout_layer/dropout/mul_grad/ReshapeReshape1Loss/gradients/Dropout_layer/dropout/mul_grad/Sum3Loss/gradients/Dropout_layer/dropout/mul_grad/Shape*
T0*
Tshape0*
_output_shapes
:
Ї
3Loss/gradients/Dropout_layer/dropout/mul_grad/Mul_1MulDropout_layer/dropout/div@Loss/gradients/Output_layer/MatMul_grad/tuple/control_dependency*
T0*
_output_shapes
:
ц
3Loss/gradients/Dropout_layer/dropout/mul_grad/Sum_1Sum3Loss/gradients/Dropout_layer/dropout/mul_grad/Mul_1ELoss/gradients/Dropout_layer/dropout/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
я
7Loss/gradients/Dropout_layer/dropout/mul_grad/Reshape_1Reshape3Loss/gradients/Dropout_layer/dropout/mul_grad/Sum_15Loss/gradients/Dropout_layer/dropout/mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
Є
>Loss/gradients/Dropout_layer/dropout/mul_grad/tuple/group_depsNoOp6^Loss/gradients/Dropout_layer/dropout/mul_grad/Reshape8^Loss/gradients/Dropout_layer/dropout/mul_grad/Reshape_1
Ј
FLoss/gradients/Dropout_layer/dropout/mul_grad/tuple/control_dependencyIdentity5Loss/gradients/Dropout_layer/dropout/mul_grad/Reshape?^Loss/gradients/Dropout_layer/dropout/mul_grad/tuple/group_deps*
T0*H
_class>
<:loc:@Loss/gradients/Dropout_layer/dropout/mul_grad/Reshape*
_output_shapes
:
љ
HLoss/gradients/Dropout_layer/dropout/mul_grad/tuple/control_dependency_1Identity7Loss/gradients/Dropout_layer/dropout/mul_grad/Reshape_1?^Loss/gradients/Dropout_layer/dropout/mul_grad/tuple/group_deps*
T0*J
_class@
><loc:@Loss/gradients/Dropout_layer/dropout/mul_grad/Reshape_1*
_output_shapes
:
О
3Loss/gradients/Dropout_layer/dropout/div_grad/ShapeShapeDropout_layer/strided_slice*
T0*
out_type0*
_output_shapes
:
У
5Loss/gradients/Dropout_layer/dropout/div_grad/Shape_1ShapeInput_Layer/keep_prob*
T0*
out_type0*#
_output_shapes
:€€€€€€€€€
Е
CLoss/gradients/Dropout_layer/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs3Loss/gradients/Dropout_layer/dropout/div_grad/Shape5Loss/gradients/Dropout_layer/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
¬
5Loss/gradients/Dropout_layer/dropout/div_grad/RealDivRealDivFLoss/gradients/Dropout_layer/dropout/mul_grad/tuple/control_dependencyInput_Layer/keep_prob*
T0*
_output_shapes
:
ф
1Loss/gradients/Dropout_layer/dropout/div_grad/SumSum5Loss/gradients/Dropout_layer/dropout/div_grad/RealDivCLoss/gradients/Dropout_layer/dropout/div_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
й
5Loss/gradients/Dropout_layer/dropout/div_grad/ReshapeReshape1Loss/gradients/Dropout_layer/dropout/div_grad/Sum3Loss/gradients/Dropout_layer/dropout/div_grad/Shape*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€А
И
1Loss/gradients/Dropout_layer/dropout/div_grad/NegNegDropout_layer/strided_slice*
T0*(
_output_shapes
:€€€€€€€€€А
ѓ
7Loss/gradients/Dropout_layer/dropout/div_grad/RealDiv_1RealDiv1Loss/gradients/Dropout_layer/dropout/div_grad/NegInput_Layer/keep_prob*
T0*
_output_shapes
:
µ
7Loss/gradients/Dropout_layer/dropout/div_grad/RealDiv_2RealDiv7Loss/gradients/Dropout_layer/dropout/div_grad/RealDiv_1Input_Layer/keep_prob*
T0*
_output_shapes
:
№
1Loss/gradients/Dropout_layer/dropout/div_grad/mulMulFLoss/gradients/Dropout_layer/dropout/mul_grad/tuple/control_dependency7Loss/gradients/Dropout_layer/dropout/div_grad/RealDiv_2*
T0*
_output_shapes
:
ф
3Loss/gradients/Dropout_layer/dropout/div_grad/Sum_1Sum1Loss/gradients/Dropout_layer/dropout/div_grad/mulELoss/gradients/Dropout_layer/dropout/div_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
я
7Loss/gradients/Dropout_layer/dropout/div_grad/Reshape_1Reshape3Loss/gradients/Dropout_layer/dropout/div_grad/Sum_15Loss/gradients/Dropout_layer/dropout/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
Є
>Loss/gradients/Dropout_layer/dropout/div_grad/tuple/group_depsNoOp6^Loss/gradients/Dropout_layer/dropout/div_grad/Reshape8^Loss/gradients/Dropout_layer/dropout/div_grad/Reshape_1
«
FLoss/gradients/Dropout_layer/dropout/div_grad/tuple/control_dependencyIdentity5Loss/gradients/Dropout_layer/dropout/div_grad/Reshape?^Loss/gradients/Dropout_layer/dropout/div_grad/tuple/group_deps*
T0*H
_class>
<:loc:@Loss/gradients/Dropout_layer/dropout/div_grad/Reshape*(
_output_shapes
:€€€€€€€€€А
љ
HLoss/gradients/Dropout_layer/dropout/div_grad/tuple/control_dependency_1Identity7Loss/gradients/Dropout_layer/dropout/div_grad/Reshape_1?^Loss/gradients/Dropout_layer/dropout/div_grad/tuple/group_deps*
T0*J
_class@
><loc:@Loss/gradients/Dropout_layer/dropout/div_grad/Reshape_1*
_output_shapes
:
И
5Loss/gradients/Dropout_layer/strided_slice_grad/ShapeShapeRNN_layer/transpose*
T0*
out_type0*
_output_shapes
:
и
@Loss/gradients/Dropout_layer/strided_slice_grad/StridedSliceGradStridedSliceGrad5Loss/gradients/Dropout_layer/strided_slice_grad/Shape!Dropout_layer/strided_slice/stack#Dropout_layer/strided_slice/stack_1#Dropout_layer/strided_slice/stack_2FLoss/gradients/Dropout_layer/dropout/div_grad/tuple/control_dependency*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *,
_output_shapes
:d€€€€€€€€€А
Н
9Loss/gradients/RNN_layer/transpose_grad/InvertPermutationInvertPermutationRNN_layer/transpose/perm*
T0*
_output_shapes
:
€
1Loss/gradients/RNN_layer/transpose_grad/transpose	Transpose@Loss/gradients/Dropout_layer/strided_slice_grad/StridedSliceGrad9Loss/gradients/RNN_layer/transpose_grad/InvertPermutation*
T0*
Tperm0*,
_output_shapes
:€€€€€€€€€dА
С
?Loss/gradients/RNN_layer/rnn/transpose_1_grad/InvertPermutationInvertPermutationRNN_layer/rnn/concat_2*
T0*
_output_shapes
:
ь
7Loss/gradients/RNN_layer/rnn/transpose_1_grad/transpose	Transpose1Loss/gradients/RNN_layer/transpose_grad/transpose?Loss/gradients/RNN_layer/rnn/transpose_1_grad/InvertPermutation*
T0*
Tperm0*,
_output_shapes
:d€€€€€€€€€А
Ь
hLoss/gradients/RNN_layer/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3RNN_layer/rnn/TensorArrayRNN_layer/rnn/while/Exit_2*
sourceLoss/gradients*,
_class"
 loc:@RNN_layer/rnn/TensorArray*
_output_shapes

:: 
∆
dLoss/gradients/RNN_layer/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flowIdentityRNN_layer/rnn/while/Exit_2i^Loss/gradients/RNN_layer/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*,
_class"
 loc:@RNN_layer/rnn/TensorArray*
_output_shapes
: 
÷
nLoss/gradients/RNN_layer/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3hLoss/gradients/RNN_layer/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3$RNN_layer/rnn/TensorArrayStack/range7Loss/gradients/RNN_layer/rnn/transpose_1_grad/transposedLoss/gradients/RNN_layer/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flow*
T0*
_output_shapes
: 
w
Loss/gradients/zeros_like_1	ZerosLikeRNN_layer/rnn/while/Exit_3*
T0*(
_output_shapes
:€€€€€€€€€А
w
Loss/gradients/zeros_like_2	ZerosLikeRNN_layer/rnn/while/Exit_4*
T0*(
_output_shapes
:€€€€€€€€€А
w
Loss/gradients/zeros_like_3	ZerosLikeRNN_layer/rnn/while/Exit_5*
T0*(
_output_shapes
:€€€€€€€€€А
w
Loss/gradients/zeros_like_4	ZerosLikeRNN_layer/rnn/while/Exit_6*
T0*(
_output_shapes
:€€€€€€€€€А
њ
5Loss/gradients/RNN_layer/rnn/while/Exit_2_grad/b_exitEnternLoss/gradients/RNN_layer/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3*
T0*
parallel_iterations *@

frame_name20Loss/gradients/RNN_layer/rnn/while/while_context*
is_constant( *
_output_shapes
: 
ю
5Loss/gradients/RNN_layer/rnn/while/Exit_3_grad/b_exitEnterLoss/gradients/zeros_like_1*
T0*
parallel_iterations *@

frame_name20Loss/gradients/RNN_layer/rnn/while/while_context*
is_constant( *(
_output_shapes
:€€€€€€€€€А
ю
5Loss/gradients/RNN_layer/rnn/while/Exit_4_grad/b_exitEnterLoss/gradients/zeros_like_2*
T0*
parallel_iterations *@

frame_name20Loss/gradients/RNN_layer/rnn/while/while_context*
is_constant( *(
_output_shapes
:€€€€€€€€€А
ю
5Loss/gradients/RNN_layer/rnn/while/Exit_5_grad/b_exitEnterLoss/gradients/zeros_like_3*
T0*
parallel_iterations *@

frame_name20Loss/gradients/RNN_layer/rnn/while/while_context*
is_constant( *(
_output_shapes
:€€€€€€€€€А
ю
5Loss/gradients/RNN_layer/rnn/while/Exit_6_grad/b_exitEnterLoss/gradients/zeros_like_4*
T0*
parallel_iterations *@

frame_name20Loss/gradients/RNN_layer/rnn/while/while_context*
is_constant( *(
_output_shapes
:€€€€€€€€€А
з
9Loss/gradients/RNN_layer/rnn/while/Switch_2_grad/b_switchMerge5Loss/gradients/RNN_layer/rnn/while/Exit_2_grad/b_exit@Loss/gradients/RNN_layer/rnn/while/Switch_2_grad_1/NextIteration*
T0*
N*
_output_shapes
: : 
щ
9Loss/gradients/RNN_layer/rnn/while/Switch_3_grad/b_switchMerge5Loss/gradients/RNN_layer/rnn/while/Exit_3_grad/b_exit@Loss/gradients/RNN_layer/rnn/while/Switch_3_grad_1/NextIteration*
T0*
N**
_output_shapes
:€€€€€€€€€А: 
щ
9Loss/gradients/RNN_layer/rnn/while/Switch_4_grad/b_switchMerge5Loss/gradients/RNN_layer/rnn/while/Exit_4_grad/b_exit@Loss/gradients/RNN_layer/rnn/while/Switch_4_grad_1/NextIteration*
T0*
N**
_output_shapes
:€€€€€€€€€А: 
щ
9Loss/gradients/RNN_layer/rnn/while/Switch_5_grad/b_switchMerge5Loss/gradients/RNN_layer/rnn/while/Exit_5_grad/b_exit@Loss/gradients/RNN_layer/rnn/while/Switch_5_grad_1/NextIteration*
T0*
N**
_output_shapes
:€€€€€€€€€А: 
щ
9Loss/gradients/RNN_layer/rnn/while/Switch_6_grad/b_switchMerge5Loss/gradients/RNN_layer/rnn/while/Exit_6_grad/b_exit@Loss/gradients/RNN_layer/rnn/while/Switch_6_grad_1/NextIteration*
T0*
N**
_output_shapes
:€€€€€€€€€А: 
Ж
6Loss/gradients/RNN_layer/rnn/while/Merge_2_grad/SwitchSwitch9Loss/gradients/RNN_layer/rnn/while/Switch_2_grad/b_switchLoss/gradients/b_count_2*
T0*L
_classB
@>loc:@Loss/gradients/RNN_layer/rnn/while/Switch_2_grad/b_switch*
_output_shapes
: : 
Б
@Loss/gradients/RNN_layer/rnn/while/Merge_2_grad/tuple/group_depsNoOp7^Loss/gradients/RNN_layer/rnn/while/Merge_2_grad/Switch
Њ
HLoss/gradients/RNN_layer/rnn/while/Merge_2_grad/tuple/control_dependencyIdentity6Loss/gradients/RNN_layer/rnn/while/Merge_2_grad/SwitchA^Loss/gradients/RNN_layer/rnn/while/Merge_2_grad/tuple/group_deps*
T0*L
_classB
@>loc:@Loss/gradients/RNN_layer/rnn/while/Switch_2_grad/b_switch*
_output_shapes
: 
¬
JLoss/gradients/RNN_layer/rnn/while/Merge_2_grad/tuple/control_dependency_1Identity8Loss/gradients/RNN_layer/rnn/while/Merge_2_grad/Switch:1A^Loss/gradients/RNN_layer/rnn/while/Merge_2_grad/tuple/group_deps*
T0*L
_classB
@>loc:@Loss/gradients/RNN_layer/rnn/while/Switch_2_grad/b_switch*
_output_shapes
: 
™
6Loss/gradients/RNN_layer/rnn/while/Merge_3_grad/SwitchSwitch9Loss/gradients/RNN_layer/rnn/while/Switch_3_grad/b_switchLoss/gradients/b_count_2*
T0*L
_classB
@>loc:@Loss/gradients/RNN_layer/rnn/while/Switch_3_grad/b_switch*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А
Б
@Loss/gradients/RNN_layer/rnn/while/Merge_3_grad/tuple/group_depsNoOp7^Loss/gradients/RNN_layer/rnn/while/Merge_3_grad/Switch
–
HLoss/gradients/RNN_layer/rnn/while/Merge_3_grad/tuple/control_dependencyIdentity6Loss/gradients/RNN_layer/rnn/while/Merge_3_grad/SwitchA^Loss/gradients/RNN_layer/rnn/while/Merge_3_grad/tuple/group_deps*
T0*L
_classB
@>loc:@Loss/gradients/RNN_layer/rnn/while/Switch_3_grad/b_switch*(
_output_shapes
:€€€€€€€€€А
‘
JLoss/gradients/RNN_layer/rnn/while/Merge_3_grad/tuple/control_dependency_1Identity8Loss/gradients/RNN_layer/rnn/while/Merge_3_grad/Switch:1A^Loss/gradients/RNN_layer/rnn/while/Merge_3_grad/tuple/group_deps*
T0*L
_classB
@>loc:@Loss/gradients/RNN_layer/rnn/while/Switch_3_grad/b_switch*(
_output_shapes
:€€€€€€€€€А
™
6Loss/gradients/RNN_layer/rnn/while/Merge_4_grad/SwitchSwitch9Loss/gradients/RNN_layer/rnn/while/Switch_4_grad/b_switchLoss/gradients/b_count_2*
T0*L
_classB
@>loc:@Loss/gradients/RNN_layer/rnn/while/Switch_4_grad/b_switch*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А
Б
@Loss/gradients/RNN_layer/rnn/while/Merge_4_grad/tuple/group_depsNoOp7^Loss/gradients/RNN_layer/rnn/while/Merge_4_grad/Switch
–
HLoss/gradients/RNN_layer/rnn/while/Merge_4_grad/tuple/control_dependencyIdentity6Loss/gradients/RNN_layer/rnn/while/Merge_4_grad/SwitchA^Loss/gradients/RNN_layer/rnn/while/Merge_4_grad/tuple/group_deps*
T0*L
_classB
@>loc:@Loss/gradients/RNN_layer/rnn/while/Switch_4_grad/b_switch*(
_output_shapes
:€€€€€€€€€А
‘
JLoss/gradients/RNN_layer/rnn/while/Merge_4_grad/tuple/control_dependency_1Identity8Loss/gradients/RNN_layer/rnn/while/Merge_4_grad/Switch:1A^Loss/gradients/RNN_layer/rnn/while/Merge_4_grad/tuple/group_deps*
T0*L
_classB
@>loc:@Loss/gradients/RNN_layer/rnn/while/Switch_4_grad/b_switch*(
_output_shapes
:€€€€€€€€€А
™
6Loss/gradients/RNN_layer/rnn/while/Merge_5_grad/SwitchSwitch9Loss/gradients/RNN_layer/rnn/while/Switch_5_grad/b_switchLoss/gradients/b_count_2*
T0*L
_classB
@>loc:@Loss/gradients/RNN_layer/rnn/while/Switch_5_grad/b_switch*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А
Б
@Loss/gradients/RNN_layer/rnn/while/Merge_5_grad/tuple/group_depsNoOp7^Loss/gradients/RNN_layer/rnn/while/Merge_5_grad/Switch
–
HLoss/gradients/RNN_layer/rnn/while/Merge_5_grad/tuple/control_dependencyIdentity6Loss/gradients/RNN_layer/rnn/while/Merge_5_grad/SwitchA^Loss/gradients/RNN_layer/rnn/while/Merge_5_grad/tuple/group_deps*
T0*L
_classB
@>loc:@Loss/gradients/RNN_layer/rnn/while/Switch_5_grad/b_switch*(
_output_shapes
:€€€€€€€€€А
‘
JLoss/gradients/RNN_layer/rnn/while/Merge_5_grad/tuple/control_dependency_1Identity8Loss/gradients/RNN_layer/rnn/while/Merge_5_grad/Switch:1A^Loss/gradients/RNN_layer/rnn/while/Merge_5_grad/tuple/group_deps*
T0*L
_classB
@>loc:@Loss/gradients/RNN_layer/rnn/while/Switch_5_grad/b_switch*(
_output_shapes
:€€€€€€€€€А
™
6Loss/gradients/RNN_layer/rnn/while/Merge_6_grad/SwitchSwitch9Loss/gradients/RNN_layer/rnn/while/Switch_6_grad/b_switchLoss/gradients/b_count_2*
T0*L
_classB
@>loc:@Loss/gradients/RNN_layer/rnn/while/Switch_6_grad/b_switch*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А
Б
@Loss/gradients/RNN_layer/rnn/while/Merge_6_grad/tuple/group_depsNoOp7^Loss/gradients/RNN_layer/rnn/while/Merge_6_grad/Switch
–
HLoss/gradients/RNN_layer/rnn/while/Merge_6_grad/tuple/control_dependencyIdentity6Loss/gradients/RNN_layer/rnn/while/Merge_6_grad/SwitchA^Loss/gradients/RNN_layer/rnn/while/Merge_6_grad/tuple/group_deps*
T0*L
_classB
@>loc:@Loss/gradients/RNN_layer/rnn/while/Switch_6_grad/b_switch*(
_output_shapes
:€€€€€€€€€А
‘
JLoss/gradients/RNN_layer/rnn/while/Merge_6_grad/tuple/control_dependency_1Identity8Loss/gradients/RNN_layer/rnn/while/Merge_6_grad/Switch:1A^Loss/gradients/RNN_layer/rnn/while/Merge_6_grad/tuple/group_deps*
T0*L
_classB
@>loc:@Loss/gradients/RNN_layer/rnn/while/Switch_6_grad/b_switch*(
_output_shapes
:€€€€€€€€€А
І
4Loss/gradients/RNN_layer/rnn/while/Enter_2_grad/ExitExitHLoss/gradients/RNN_layer/rnn/while/Merge_2_grad/tuple/control_dependency*
T0*
_output_shapes
: 
є
4Loss/gradients/RNN_layer/rnn/while/Enter_3_grad/ExitExitHLoss/gradients/RNN_layer/rnn/while/Merge_3_grad/tuple/control_dependency*
T0*(
_output_shapes
:€€€€€€€€€А
є
4Loss/gradients/RNN_layer/rnn/while/Enter_4_grad/ExitExitHLoss/gradients/RNN_layer/rnn/while/Merge_4_grad/tuple/control_dependency*
T0*(
_output_shapes
:€€€€€€€€€А
є
4Loss/gradients/RNN_layer/rnn/while/Enter_5_grad/ExitExitHLoss/gradients/RNN_layer/rnn/while/Merge_5_grad/tuple/control_dependency*
T0*(
_output_shapes
:€€€€€€€€€А
є
4Loss/gradients/RNN_layer/rnn/while/Enter_6_grad/ExitExitHLoss/gradients/RNN_layer/rnn/while/Merge_6_grad/tuple/control_dependency*
T0*(
_output_shapes
:€€€€€€€€€А
’
mLoss/gradients/RNN_layer/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3sLoss/gradients/RNN_layer/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterJLoss/gradients/RNN_layer/rnn/while/Merge_2_grad/tuple/control_dependency_1*
sourceLoss/gradients*V
_classL
JHloc:@RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2*
_output_shapes

:: 
Д
sLoss/gradients/RNN_layer/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEnterRNN_layer/rnn/TensorArray*
T0*
parallel_iterations *@

frame_name20Loss/gradients/RNN_layer/rnn/while/while_context*
is_constant(*V
_classL
JHloc:@RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2*
_output_shapes
:
™
iLoss/gradients/RNN_layer/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flowIdentityJLoss/gradients/RNN_layer/rnn/while/Merge_2_grad/tuple/control_dependency_1n^Loss/gradients/RNN_layer/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*V
_classL
JHloc:@RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2*
_output_shapes
: 
н
]Loss/gradients/RNN_layer/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3TensorArrayReadV3mLoss/gradients/RNN_layer/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3hLoss/gradients/RNN_layer/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2iLoss/gradients/RNN_layer/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flow*
dtype0*(
_output_shapes
:€€€€€€€€€А
б
cLoss/gradients/RNN_layer/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/ConstConst*
valueB :
€€€€€€€€€*
dtype0*1
_class'
%#loc:@RNN_layer/rnn/while/Identity_1*
_output_shapes
: 
≈
cLoss/gradients/RNN_layer/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_accStackV2cLoss/gradients/RNN_layer/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Const*
	elem_type0*

stack_name *1
_class'
%#loc:@RNN_layer/rnn/while/Identity_1*
_output_shapes
:
„
cLoss/gradients/RNN_layer/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/EnterEntercLoss/gradients/RNN_layer/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc*
T0*
parallel_iterations *1

frame_name#!RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
∆
iLoss/gradients/RNN_layer/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2StackPushV2cLoss/gradients/RNN_layer/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/EnterRNN_layer/rnn/while/Identity_1^Loss/gradients/Add*
T0*
swap_memory( *
_output_shapes
: 
§
hLoss/gradients/RNN_layer/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2
StackPopV2nLoss/gradients/RNN_layer/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/Enter^Loss/gradients/Sub*
	elem_type0*
_output_shapes
: 
с
nLoss/gradients/RNN_layer/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/EnterEntercLoss/gradients/RNN_layer/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc*
T0*
parallel_iterations *@

frame_name20Loss/gradients/RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
С"
dLoss/gradients/RNN_layer/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_syncControlTriggeri^Loss/gradients/RNN_layer/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2y^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2{^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2_1w^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/StackPopV2m^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2y^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2{^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2_1g^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/StackPopV2i^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/StackPopV2y^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2{^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2_1g^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/StackPopV2i^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/StackPopV2w^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2y^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2_1e^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/StackPopV2g^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1/StackPopV2k^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/StackPopV2m^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/StackPopV2_1y^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2{^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2_1w^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/StackPopV2m^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2y^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2{^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2_1g^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/StackPopV2i^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/StackPopV2y^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2{^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2_1g^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/StackPopV2i^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/StackPopV2w^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2y^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2_1e^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/StackPopV2g^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul_1/StackPopV2k^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/StackPopV2m^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/StackPopV2_1
С
\Loss/gradients/RNN_layer/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_depsNoOpK^Loss/gradients/RNN_layer/rnn/while/Merge_2_grad/tuple/control_dependency_1^^Loss/gradients/RNN_layer/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3
”
dLoss/gradients/RNN_layer/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependencyIdentity]Loss/gradients/RNN_layer/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3]^Loss/gradients/RNN_layer/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_deps*
T0*p
_classf
dbloc:@Loss/gradients/RNN_layer/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3*(
_output_shapes
:€€€€€€€€€А
М
fLoss/gradients/RNN_layer/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency_1IdentityJLoss/gradients/RNN_layer/rnn/while/Merge_2_grad/tuple/control_dependency_1]^Loss/gradients/RNN_layer/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_deps*
T0*L
_classB
@>loc:@Loss/gradients/RNN_layer/rnn/while/Switch_2_grad/b_switch*
_output_shapes
: 
Ђ
ZLoss/gradients/RNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros_grad/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
ѓ
XLoss/gradients/RNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros_grad/SumSum4Loss/gradients/RNN_layer/rnn/while/Enter_3_grad/ExitZLoss/gradients/RNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros_grad/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
≠
\Loss/gradients/RNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros_1_grad/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
≥
ZLoss/gradients/RNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros_1_grad/SumSum4Loss/gradients/RNN_layer/rnn/while/Enter_4_grad/Exit\Loss/gradients/RNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros_1_grad/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
≠
\Loss/gradients/RNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros_grad/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
≥
ZLoss/gradients/RNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros_grad/SumSum4Loss/gradients/RNN_layer/rnn/while/Enter_5_grad/Exit\Loss/gradients/RNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros_grad/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
ѓ
^Loss/gradients/RNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros_1_grad/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
Ј
\Loss/gradients/RNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros_1_grad/SumSum4Loss/gradients/RNN_layer/rnn/while/Enter_6_grad/Exit^Loss/gradients/RNN_layer/rnn/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros_1_grad/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
„
Loss/gradients/AddNAddNJLoss/gradients/RNN_layer/rnn/while/Merge_6_grad/tuple/control_dependency_1dLoss/gradients/RNN_layer/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency*
T0*
N*L
_classB
@>loc:@Loss/gradients/RNN_layer/rnn/while/Switch_6_grad/b_switch*(
_output_shapes
:€€€€€€€€€А
б
]Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/ShapeShapeDRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Tanh_1*
T0*
out_type0*
_output_shapes
:
ж
_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Shape_1ShapeGRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_2*
T0*
out_type0*
_output_shapes
:
є
mLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsxLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2zLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
∞
sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/ConstConst*
valueB :
€€€€€€€€€*
dtype0*p
_classf
dbloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Shape*
_output_shapes
: 
§
sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_accStackV2sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Const*
	elem_type0*

stack_name *p
_classf
dbloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Shape*
_output_shapes
:
ч
sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/EnterEntersLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_acc*
T0*
parallel_iterations *1

frame_name#!RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
©
yLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPushV2StackPushV2sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Enter]Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Shape^Loss/gradients/Add*
T0*
swap_memory( *
_output_shapes
:
»
xLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2
StackPopV2~Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2/Enter^Loss/gradients/Sub*
	elem_type0*
_output_shapes
:
С
~Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2/EnterEntersLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_acc*
T0*
parallel_iterations *@

frame_name20Loss/gradients/RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
і
uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Const_1Const*
valueB :
€€€€€€€€€*
dtype0*r
_classh
fdloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Shape_1*
_output_shapes
: 
™
uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_acc_1StackV2uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Const_1*
	elem_type0*

stack_name *r
_classh
fdloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Shape_1*
_output_shapes
:
ы
uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Enter_1EnteruLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_acc_1*
T0*
parallel_iterations *1

frame_name#!RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
ѓ
{Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Enter_1_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Shape_1^Loss/gradients/Add*
T0*
swap_memory( *
_output_shapes
:
Ќ
zLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2АLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2_1/Enter^Loss/gradients/Sub*
	elem_type0*
_output_shapes
:
Ц
АLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnteruLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_acc_1*
T0*
parallel_iterations *@

frame_name20Loss/gradients/RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
Т
[Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/MulMulLoss/gradients/AddNfLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/StackPopV2*
T0*(
_output_shapes
:€€€€€€€€€А
И
aLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/ConstConst*
valueB :
€€€€€€€€€*
dtype0*Z
_classP
NLloc:@RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_2*
_output_shapes
: 
к
aLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/f_accStackV2aLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/Const*
	elem_type0*

stack_name *Z
_classP
NLloc:@RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_2*
_output_shapes
:
”
aLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/EnterEnteraLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/f_acc*
T0*
parallel_iterations *1

frame_name#!RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
э
gLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/StackPushV2StackPushV2aLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/EnterGRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_2^Loss/gradients/Add*
T0*
swap_memory( *(
_output_shapes
:€€€€€€€€€А
≤
fLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/StackPopV2
StackPopV2lLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/StackPopV2/Enter^Loss/gradients/Sub*
	elem_type0*(
_output_shapes
:€€€€€€€€€А
н
lLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/StackPopV2/EnterEnteraLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/f_acc*
T0*
parallel_iterations *@

frame_name20Loss/gradients/RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
о
[Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/SumSum[Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/MulmLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
В
_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/ReshapeReshape[Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/SumxLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€А
Ц
]Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1MulhLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/StackPopV2Loss/gradients/AddN*
T0*(
_output_shapes
:€€€€€€€€€А
З
cLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/ConstConst*
valueB :
€€€€€€€€€*
dtype0*W
_classM
KIloc:@RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Tanh_1*
_output_shapes
: 
л
cLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/f_accStackV2cLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/Const*
	elem_type0*

stack_name *W
_classM
KIloc:@RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Tanh_1*
_output_shapes
:
„
cLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/EnterEntercLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/f_acc*
T0*
parallel_iterations *1

frame_name#!RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
ю
iLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/StackPushV2StackPushV2cLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/EnterDRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Tanh_1^Loss/gradients/Add*
T0*
swap_memory( *(
_output_shapes
:€€€€€€€€€А
ґ
hLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/StackPopV2
StackPopV2nLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/StackPopV2/Enter^Loss/gradients/Sub*
	elem_type0*(
_output_shapes
:€€€€€€€€€А
с
nLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/StackPopV2/EnterEntercLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/f_acc*
T0*
parallel_iterations *@

frame_name20Loss/gradients/RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
ф
]Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Sum_1Sum]Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1oLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
И
aLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Reshape_1Reshape]Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Sum_1zLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€А
ґ
hLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/tuple/group_depsNoOp`^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Reshapeb^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Reshape_1
п
pLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/tuple/control_dependencyIdentity_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Reshapei^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/tuple/group_deps*
T0*r
_classh
fdloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Reshape*(
_output_shapes
:€€€€€€€€€А
х
rLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/tuple/control_dependency_1IdentityaLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Reshape_1i^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/tuple/group_deps*
T0*t
_classj
hfloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Reshape_1*(
_output_shapes
:€€€€€€€€€А
ь
aLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Tanh_1_grad/TanhGradTanhGradhLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/StackPopV2pLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/tuple/control_dependency*
T0*(
_output_shapes
:€€€€€€€€€А
Е
gLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_2_grad/SigmoidGradSigmoidGradfLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/StackPopV2rLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/tuple/control_dependency_1*
T0*(
_output_shapes
:€€€€€€€€€А
Џ
@Loss/gradients/RNN_layer/rnn/while/Switch_2_grad_1/NextIterationNextIterationfLoss/gradients/RNN_layer/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency_1*
T0*
_output_shapes
: 
÷
Loss/gradients/AddN_1AddNJLoss/gradients/RNN_layer/rnn/while/Merge_5_grad/tuple/control_dependency_1aLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Tanh_1_grad/TanhGrad*
T0*
N*L
_classB
@>loc:@Loss/gradients/RNN_layer/rnn/while/Switch_5_grad/b_switch*(
_output_shapes
:€€€€€€€€€А
ё
]Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/ShapeShapeARNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul*
T0*
out_type0*
_output_shapes
:
в
_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/Shape_1ShapeCRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1*
T0*
out_type0*
_output_shapes
:
є
mLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgsBroadcastGradientArgsxLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2zLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
∞
sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/ConstConst*
valueB :
€€€€€€€€€*
dtype0*p
_classf
dbloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/Shape*
_output_shapes
: 
§
sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_accStackV2sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Const*
	elem_type0*

stack_name *p
_classf
dbloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/Shape*
_output_shapes
:
ч
sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/EnterEntersLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_acc*
T0*
parallel_iterations *1

frame_name#!RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
©
yLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Enter]Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/Shape^Loss/gradients/Add*
T0*
swap_memory( *
_output_shapes
:
»
xLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2~Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2/Enter^Loss/gradients/Sub*
	elem_type0*
_output_shapes
:
С
~Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2/EnterEntersLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_acc*
T0*
parallel_iterations *@

frame_name20Loss/gradients/RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
і
uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Const_1Const*
valueB :
€€€€€€€€€*
dtype0*r
_classh
fdloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/Shape_1*
_output_shapes
: 
™
uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_acc_1StackV2uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Const_1*
	elem_type0*

stack_name *r
_classh
fdloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/Shape_1*
_output_shapes
:
ы
uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Enter_1EnteruLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_acc_1*
T0*
parallel_iterations *1

frame_name#!RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
ѓ
{Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Enter_1_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/Shape_1^Loss/gradients/Add*
T0*
swap_memory( *
_output_shapes
:
Ќ
zLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2АLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2_1/Enter^Loss/gradients/Sub*
	elem_type0*
_output_shapes
:
Ц
АLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnteruLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_acc_1*
T0*
parallel_iterations *@

frame_name20Loss/gradients/RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
®
[Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/SumSumLoss/gradients/AddN_1mLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
В
_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/ReshapeReshape[Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/SumxLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€А
ђ
]Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/Sum_1SumLoss/gradients/AddN_1oLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
И
aLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/Reshape_1Reshape]Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/Sum_1zLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€А
ґ
hLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/tuple/group_depsNoOp`^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/Reshapeb^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/Reshape_1
п
pLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/tuple/control_dependencyIdentity_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/Reshapei^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/tuple/group_deps*
T0*r
_classh
fdloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/Reshape*(
_output_shapes
:€€€€€€€€€А
х
rLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/tuple/control_dependency_1IdentityaLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/Reshape_1i^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/tuple/group_deps*
T0*t
_classj
hfloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/Reshape_1*(
_output_shapes
:€€€€€€€€€А
є
[Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/ShapeShapeRNN_layer/rnn/while/Identity_5*
T0*
out_type0*
_output_shapes
:
в
]Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Shape_1ShapeERNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid*
T0*
out_type0*
_output_shapes
:
≥
kLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsvLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2xLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
ђ
qLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/ConstConst*
valueB :
€€€€€€€€€*
dtype0*n
_classd
b`loc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Shape*
_output_shapes
: 
Ю
qLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_accStackV2qLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Const*
	elem_type0*

stack_name *n
_classd
b`loc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Shape*
_output_shapes
:
у
qLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/EnterEnterqLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_acc*
T0*
parallel_iterations *1

frame_name#!RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
£
wLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPushV2StackPushV2qLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Enter[Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Shape^Loss/gradients/Add*
T0*
swap_memory( *
_output_shapes
:
ƒ
vLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2
StackPopV2|Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2/Enter^Loss/gradients/Sub*
	elem_type0*
_output_shapes
:
Н
|Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2/EnterEnterqLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_acc*
T0*
parallel_iterations *@

frame_name20Loss/gradients/RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
∞
sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Const_1Const*
valueB :
€€€€€€€€€*
dtype0*p
_classf
dbloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Shape_1*
_output_shapes
: 
§
sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_acc_1StackV2sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Const_1*
	elem_type0*

stack_name *p
_classf
dbloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Shape_1*
_output_shapes
:
ч
sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Enter_1EntersLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_acc_1*
T0*
parallel_iterations *1

frame_name#!RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
©
yLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Enter_1]Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Shape_1^Loss/gradients/Add*
T0*
swap_memory( *
_output_shapes
:
»
xLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2~Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2_1/Enter^Loss/gradients/Sub*
	elem_type0*
_output_shapes
:
С
~Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2_1/EnterEntersLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_acc_1*
T0*
parallel_iterations *@

frame_name20Loss/gradients/RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
л
YLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/MulMulpLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/tuple/control_dependencydLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/StackPopV2*
T0*(
_output_shapes
:€€€€€€€€€А
Д
_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/ConstConst*
valueB :
€€€€€€€€€*
dtype0*X
_classN
LJloc:@RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid*
_output_shapes
: 
д
_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/f_accStackV2_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/Const*
	elem_type0*

stack_name *X
_classN
LJloc:@RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid*
_output_shapes
:
ѕ
_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/EnterEnter_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/f_acc*
T0*
parallel_iterations *1

frame_name#!RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
ч
eLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/StackPushV2StackPushV2_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/EnterERNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid^Loss/gradients/Add*
T0*
swap_memory( *(
_output_shapes
:€€€€€€€€€А
Ѓ
dLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/StackPopV2
StackPopV2jLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/StackPopV2/Enter^Loss/gradients/Sub*
	elem_type0*(
_output_shapes
:€€€€€€€€€А
й
jLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/StackPopV2/EnterEnter_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/f_acc*
T0*
parallel_iterations *@

frame_name20Loss/gradients/RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
и
YLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/SumSumYLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/MulkLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
ь
]Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/ReshapeReshapeYLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/SumvLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€А
п
[Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul_1MulfLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul_1/StackPopV2pLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/tuple/control_dependency*
T0*(
_output_shapes
:€€€€€€€€€А
я
aLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul_1/ConstConst*
valueB :
€€€€€€€€€*
dtype0*1
_class'
%#loc:@RNN_layer/rnn/while/Identity_5*
_output_shapes
: 
Ѕ
aLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul_1/f_accStackV2aLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul_1/Const*
	elem_type0*

stack_name *1
_class'
%#loc:@RNN_layer/rnn/while/Identity_5*
_output_shapes
:
”
aLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul_1/EnterEnteraLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul_1/f_acc*
T0*
parallel_iterations *1

frame_name#!RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
‘
gLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul_1/StackPushV2StackPushV2aLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul_1/EnterRNN_layer/rnn/while/Identity_5^Loss/gradients/Add*
T0*
swap_memory( *(
_output_shapes
:€€€€€€€€€А
≤
fLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul_1/StackPopV2
StackPopV2lLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul_1/StackPopV2/Enter^Loss/gradients/Sub*
	elem_type0*(
_output_shapes
:€€€€€€€€€А
н
lLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul_1/StackPopV2/EnterEnteraLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul_1/f_acc*
T0*
parallel_iterations *@

frame_name20Loss/gradients/RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
о
[Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Sum_1Sum[Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul_1mLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
В
_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Reshape_1Reshape[Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Sum_1xLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€А
∞
fLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/tuple/group_depsNoOp^^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Reshape`^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Reshape_1
з
nLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/tuple/control_dependencyIdentity]Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Reshapeg^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/tuple/group_deps*
T0*p
_classf
dbloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Reshape*(
_output_shapes
:€€€€€€€€€А
н
pLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/tuple/control_dependency_1Identity_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Reshape_1g^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/tuple/group_deps*
T0*r
_classh
fdloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Reshape_1*(
_output_shapes
:€€€€€€€€€А
д
]Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/ShapeShapeGRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_1*
T0*
out_type0*
_output_shapes
:
б
_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Shape_1ShapeBRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Tanh*
T0*
out_type0*
_output_shapes
:
є
mLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsxLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2zLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
∞
sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/ConstConst*
valueB :
€€€€€€€€€*
dtype0*p
_classf
dbloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Shape*
_output_shapes
: 
§
sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_accStackV2sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Const*
	elem_type0*

stack_name *p
_classf
dbloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Shape*
_output_shapes
:
ч
sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/EnterEntersLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_acc*
T0*
parallel_iterations *1

frame_name#!RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
©
yLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Enter]Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Shape^Loss/gradients/Add*
T0*
swap_memory( *
_output_shapes
:
»
xLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2~Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2/Enter^Loss/gradients/Sub*
	elem_type0*
_output_shapes
:
С
~Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2/EnterEntersLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_acc*
T0*
parallel_iterations *@

frame_name20Loss/gradients/RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
і
uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Const_1Const*
valueB :
€€€€€€€€€*
dtype0*r
_classh
fdloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Shape_1*
_output_shapes
: 
™
uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_acc_1StackV2uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Const_1*
	elem_type0*

stack_name *r
_classh
fdloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Shape_1*
_output_shapes
:
ы
uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Enter_1EnteruLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_acc_1*
T0*
parallel_iterations *1

frame_name#!RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
ѓ
{Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Enter_1_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Shape_1^Loss/gradients/Add*
T0*
swap_memory( *
_output_shapes
:
Ќ
zLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2АLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2_1/Enter^Loss/gradients/Sub*
	elem_type0*
_output_shapes
:
Ц
АLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnteruLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_acc_1*
T0*
parallel_iterations *@

frame_name20Loss/gradients/RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
с
[Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/MulMulrLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/tuple/control_dependency_1fLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/StackPopV2*
T0*(
_output_shapes
:€€€€€€€€€А
Г
aLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/ConstConst*
valueB :
€€€€€€€€€*
dtype0*U
_classK
IGloc:@RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Tanh*
_output_shapes
: 
е
aLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/f_accStackV2aLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/Const*
	elem_type0*

stack_name *U
_classK
IGloc:@RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Tanh*
_output_shapes
:
”
aLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/EnterEnteraLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/f_acc*
T0*
parallel_iterations *1

frame_name#!RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
ш
gLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/StackPushV2StackPushV2aLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/EnterBRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Tanh^Loss/gradients/Add*
T0*
swap_memory( *(
_output_shapes
:€€€€€€€€€А
≤
fLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/StackPopV2
StackPopV2lLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/StackPopV2/Enter^Loss/gradients/Sub*
	elem_type0*(
_output_shapes
:€€€€€€€€€А
н
lLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/StackPopV2/EnterEnteraLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/f_acc*
T0*
parallel_iterations *@

frame_name20Loss/gradients/RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
о
[Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/SumSum[Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/MulmLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
В
_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/ReshapeReshape[Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/SumxLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€А
х
]Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1MulhLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/StackPopV2rLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/tuple/control_dependency_1*
T0*(
_output_shapes
:€€€€€€€€€А
К
cLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/ConstConst*
valueB :
€€€€€€€€€*
dtype0*Z
_classP
NLloc:@RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_1*
_output_shapes
: 
о
cLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/f_accStackV2cLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/Const*
	elem_type0*

stack_name *Z
_classP
NLloc:@RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_1*
_output_shapes
:
„
cLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/EnterEntercLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/f_acc*
T0*
parallel_iterations *1

frame_name#!RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
Б
iLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/StackPushV2StackPushV2cLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/EnterGRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_1^Loss/gradients/Add*
T0*
swap_memory( *(
_output_shapes
:€€€€€€€€€А
ґ
hLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/StackPopV2
StackPopV2nLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/StackPopV2/Enter^Loss/gradients/Sub*
	elem_type0*(
_output_shapes
:€€€€€€€€€А
с
nLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/StackPopV2/EnterEntercLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/f_acc*
T0*
parallel_iterations *@

frame_name20Loss/gradients/RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
ф
]Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Sum_1Sum]Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1oLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
И
aLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Reshape_1Reshape]Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Sum_1zLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€А
ґ
hLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/tuple/group_depsNoOp`^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Reshapeb^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Reshape_1
п
pLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/tuple/control_dependencyIdentity_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Reshapei^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/tuple/group_deps*
T0*r
_classh
fdloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Reshape*(
_output_shapes
:€€€€€€€€€А
х
rLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/tuple/control_dependency_1IdentityaLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Reshape_1i^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/tuple/group_deps*
T0*t
_classj
hfloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Reshape_1*(
_output_shapes
:€€€€€€€€€А
€
eLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_grad/SigmoidGradSigmoidGraddLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/StackPopV2pLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/tuple/control_dependency_1*
T0*(
_output_shapes
:€€€€€€€€€А
Е
gLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_1_grad/SigmoidGradSigmoidGradhLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/StackPopV2pLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/tuple/control_dependency*
T0*(
_output_shapes
:€€€€€€€€€А
ъ
_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Tanh_grad/TanhGradTanhGradfLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/StackPopV2rLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/tuple/control_dependency_1*
T0*(
_output_shapes
:€€€€€€€€€А
ф
@Loss/gradients/RNN_layer/rnn/while/Switch_5_grad_1/NextIterationNextIterationnLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/tuple/control_dependency*
T0*(
_output_shapes
:€€€€€€€€€А
а
[Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/ShapeShapeERNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/split:2*
T0*
out_type0*
_output_shapes
:
µ
]Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/Shape_1Const^Loss/gradients/Sub*
valueB *
dtype0*
_output_shapes
: 
Ш
kLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgsBroadcastGradientArgsvLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/StackPopV2]Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
ђ
qLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/ConstConst*
valueB :
€€€€€€€€€*
dtype0*n
_classd
b`loc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/Shape*
_output_shapes
: 
Ю
qLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/f_accStackV2qLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/Const*
	elem_type0*

stack_name *n
_classd
b`loc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/Shape*
_output_shapes
:
у
qLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/EnterEnterqLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/f_acc*
T0*
parallel_iterations *1

frame_name#!RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
£
wLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/StackPushV2StackPushV2qLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/Enter[Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/Shape^Loss/gradients/Add*
T0*
swap_memory( *
_output_shapes
:
ƒ
vLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/StackPopV2
StackPopV2|Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/StackPopV2/Enter^Loss/gradients/Sub*
	elem_type0*
_output_shapes
:
Н
|Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/StackPopV2/EnterEnterqLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/f_acc*
T0*
parallel_iterations *@

frame_name20Loss/gradients/RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
ф
YLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/SumSumeLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_grad/SigmoidGradkLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
ь
]Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/ReshapeReshapeYLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/SumvLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€А
ш
[Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/Sum_1SumeLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_grad/SigmoidGradmLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
’
_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/Reshape_1Reshape[Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/Sum_1]Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
∞
fLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/tuple/group_depsNoOp^^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/Reshape`^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/Reshape_1
з
nLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/tuple/control_dependencyIdentity]Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/Reshapeg^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/tuple/group_deps*
T0*p
_classf
dbloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/Reshape*(
_output_shapes
:€€€€€€€€€А
џ
pLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/tuple/control_dependency_1Identity_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/Reshape_1g^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/tuple/group_deps*
T0*r
_classh
fdloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/Reshape_1*
_output_shapes
: 
ї
^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/split_grad/concatConcatV2gLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_1_grad/SigmoidGrad_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Tanh_grad/TanhGradnLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/tuple/control_dependencygLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_2_grad/SigmoidGraddLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/split_grad/concat/Const*
T0*
N*

Tidx0*(
_output_shapes
:€€€€€€€€€А
ї
dLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/split_grad/concat/ConstConst^Loss/gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
С
eLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd_grad/BiasAddGradBiasAddGrad^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/split_grad/concat*
T0*
data_formatNHWC*
_output_shapes	
:А
ї
jLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd_grad/tuple/group_depsNoOpf^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd_grad/BiasAddGrad_^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/split_grad/concat
с
rLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd_grad/tuple/control_dependencyIdentity^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/split_grad/concatk^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*q
_classg
ecloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/split_grad/concat*(
_output_shapes
:€€€€€€€€€А
ф
tLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1IdentityeLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd_grad/BiasAddGradk^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*x
_classn
ljloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:А
Э
_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMulMatMulrLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd_grad/tuple/control_dependencyeLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul/Enter*
T0*
transpose_b(*
transpose_a( *(
_output_shapes
:€€€€€€€€€А
ј
eLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul/EnterEnter5rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/read*
T0*
parallel_iterations *@

frame_name20Loss/gradients/RNN_layer/rnn/while/while_context*
is_constant(* 
_output_shapes
:
АА
Ю
aLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1MatMullLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2rLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_b( *
transpose_a(* 
_output_shapes
:
АА
Л
gLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1/ConstConst*
valueB :
€€€€€€€€€*
dtype0*W
_classM
KIloc:@RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat*
_output_shapes
: 
у
gLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1/f_accStackV2gLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1/Const*
	elem_type0*

stack_name *W
_classM
KIloc:@RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat*
_output_shapes
:
я
gLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1/EnterEntergLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1/f_acc*
T0*
parallel_iterations *1

frame_name#!RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
Ж
mLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1/StackPushV2StackPushV2gLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1/EnterDRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat^Loss/gradients/Add*
T0*
swap_memory( *(
_output_shapes
:€€€€€€€€€А
Њ
lLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2
StackPopV2rLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2/Enter^Loss/gradients/Sub*
	elem_type0*(
_output_shapes
:€€€€€€€€€А
щ
rLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2/EnterEntergLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1/f_acc*
T0*
parallel_iterations *@

frame_name20Loss/gradients/RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
Ј
iLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/tuple/group_depsNoOp`^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMulb^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1
с
qLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/tuple/control_dependencyIdentity_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMulj^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*r
_classh
fdloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul*(
_output_shapes
:€€€€€€€€€А
п
sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1IdentityaLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1j^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*t
_classj
hfloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1* 
_output_shapes
:
АА
і
eLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd/Enter_grad/b_accConst*
valueBА*    *
dtype0*
_output_shapes	
:А
н
gLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_1EntereLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd/Enter_grad/b_acc*
T0*
parallel_iterations *@

frame_name20Loss/gradients/RNN_layer/rnn/while/while_context*
is_constant( *
_output_shapes	
:А
щ
gLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_2MergegLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_1mLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd/Enter_grad/NextIteration*
T0*
N*
_output_shapes
	:А: 
†
fLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd/Enter_grad/SwitchSwitchgLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_2Loss/gradients/b_count_2*
T0*"
_output_shapes
:А:А
р
cLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd/Enter_grad/AddAddhLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd/Enter_grad/Switch:1tLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1*
T0*
_output_shapes	
:А
Й
mLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd/Enter_grad/NextIterationNextIterationcLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd/Enter_grad/Add*
T0*
_output_shapes	
:А
э
gLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_3ExitfLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd/Enter_grad/Switch*
T0*
_output_shapes	
:А
µ
^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ConstConst^Loss/gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
і
]Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/RankConst^Loss/gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
»
\Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/modFloorMod^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/Const]Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/Rank*
T0*
_output_shapes
: 
б
^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeShapeCRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2*
T0*
out_type0*
_output_shapes
:
З
_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeNShapeNjLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/StackPopV2lLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/StackPopV2_1*
T0*
out_type0*
N* 
_output_shapes
::
И
eLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/ConstConst*
valueB :
€€€€€€€€€*
dtype0*V
_classL
JHloc:@RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2*
_output_shapes
: 
о
eLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/f_accStackV2eLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/Const*
	elem_type0*

stack_name *V
_classL
JHloc:@RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2*
_output_shapes
:
џ
eLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/EnterEntereLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/f_acc*
T0*
parallel_iterations *1

frame_name#!RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
Б
kLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/StackPushV2StackPushV2eLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/EnterCRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2^Loss/gradients/Add*
T0*
swap_memory( *(
_output_shapes
:€€€€€€€€€А
Ї
jLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/StackPopV2
StackPopV2pLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/StackPopV2/Enter^Loss/gradients/Sub*
	elem_type0*(
_output_shapes
:€€€€€€€€€А
х
pLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/StackPopV2/EnterEntereLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/f_acc*
T0*
parallel_iterations *@

frame_name20Loss/gradients/RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
е
gLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/Const_1Const*
valueB :
€€€€€€€€€*
dtype0*1
_class'
%#loc:@RNN_layer/rnn/while/Identity_6*
_output_shapes
: 
Ќ
gLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/f_acc_1StackV2gLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/Const_1*
	elem_type0*

stack_name *1
_class'
%#loc:@RNN_layer/rnn/while/Identity_6*
_output_shapes
:
я
gLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/Enter_1EntergLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/f_acc_1*
T0*
parallel_iterations *1

frame_name#!RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
а
mLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/StackPushV2_1StackPushV2gLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/Enter_1RNN_layer/rnn/while/Identity_6^Loss/gradients/Add*
T0*
swap_memory( *(
_output_shapes
:€€€€€€€€€А
Њ
lLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/StackPopV2_1
StackPopV2rLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/StackPopV2_1/Enter^Loss/gradients/Sub*
	elem_type0*(
_output_shapes
:€€€€€€€€€А
щ
rLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/StackPopV2_1/EnterEntergLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/f_acc_1*
T0*
parallel_iterations *@

frame_name20Loss/gradients/RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
¬
eLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ConcatOffsetConcatOffset\Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/mod_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeNaLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN:1*
N* 
_output_shapes
::
к
^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/SliceSliceqLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/tuple/control_dependencyeLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ConcatOffset_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN*
Index0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
р
`Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/Slice_1SliceqLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/tuple/control_dependencygLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ConcatOffset:1aLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN:1*
Index0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
µ
iLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/tuple/group_depsNoOp_^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/Slicea^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/Slice_1
п
qLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/tuple/control_dependencyIdentity^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/Slicej^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*q
_classg
ecloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/Slice*(
_output_shapes
:€€€€€€€€€А
х
sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/tuple/control_dependency_1Identity`Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/Slice_1j^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*s
_classi
geloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/Slice_1*(
_output_shapes
:€€€€€€€€€А
љ
dLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul/Enter_grad/b_accConst*
valueB
АА*    *
dtype0* 
_output_shapes
:
АА
р
fLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul/Enter_grad/b_acc_1EnterdLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul/Enter_grad/b_acc*
T0*
parallel_iterations *@

frame_name20Loss/gradients/RNN_layer/rnn/while/while_context*
is_constant( * 
_output_shapes
:
АА
ы
fLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul/Enter_grad/b_acc_2MergefLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul/Enter_grad/b_acc_1lLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul/Enter_grad/NextIteration*
T0*
N*"
_output_shapes
:
АА: 
®
eLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul/Enter_grad/SwitchSwitchfLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul/Enter_grad/b_acc_2Loss/gradients/b_count_2*
T0*,
_output_shapes
:
АА:
АА
т
bLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul/Enter_grad/AddAddgLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul/Enter_grad/Switch:1sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1*
T0* 
_output_shapes
:
АА
М
lLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul/Enter_grad/NextIterationNextIterationbLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul/Enter_grad/Add*
T0* 
_output_shapes
:
АА
А
fLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul/Enter_grad/b_acc_3ExiteLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul/Enter_grad/Switch*
T0* 
_output_shapes
:
АА
ж
Loss/gradients/AddN_2AddNJLoss/gradients/RNN_layer/rnn/while/Merge_4_grad/tuple/control_dependency_1qLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/tuple/control_dependency*
T0*
N*L
_classB
@>loc:@Loss/gradients/RNN_layer/rnn/while/Switch_4_grad/b_switch*(
_output_shapes
:€€€€€€€€€А
б
]Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/ShapeShapeDRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_1*
T0*
out_type0*
_output_shapes
:
ж
_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Shape_1ShapeGRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_2*
T0*
out_type0*
_output_shapes
:
є
mLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsxLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2zLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
∞
sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/ConstConst*
valueB :
€€€€€€€€€*
dtype0*p
_classf
dbloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Shape*
_output_shapes
: 
§
sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_accStackV2sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Const*
	elem_type0*

stack_name *p
_classf
dbloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Shape*
_output_shapes
:
ч
sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/EnterEntersLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_acc*
T0*
parallel_iterations *1

frame_name#!RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
©
yLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPushV2StackPushV2sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Enter]Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Shape^Loss/gradients/Add*
T0*
swap_memory( *
_output_shapes
:
»
xLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2
StackPopV2~Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2/Enter^Loss/gradients/Sub*
	elem_type0*
_output_shapes
:
С
~Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2/EnterEntersLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_acc*
T0*
parallel_iterations *@

frame_name20Loss/gradients/RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
і
uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Const_1Const*
valueB :
€€€€€€€€€*
dtype0*r
_classh
fdloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Shape_1*
_output_shapes
: 
™
uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_acc_1StackV2uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Const_1*
	elem_type0*

stack_name *r
_classh
fdloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Shape_1*
_output_shapes
:
ы
uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Enter_1EnteruLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_acc_1*
T0*
parallel_iterations *1

frame_name#!RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
ѓ
{Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Enter_1_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Shape_1^Loss/gradients/Add*
T0*
swap_memory( *
_output_shapes
:
Ќ
zLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2АLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2_1/Enter^Loss/gradients/Sub*
	elem_type0*
_output_shapes
:
Ц
АLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnteruLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_acc_1*
T0*
parallel_iterations *@

frame_name20Loss/gradients/RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
Ф
[Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/MulMulLoss/gradients/AddN_2fLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/StackPopV2*
T0*(
_output_shapes
:€€€€€€€€€А
И
aLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/ConstConst*
valueB :
€€€€€€€€€*
dtype0*Z
_classP
NLloc:@RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_2*
_output_shapes
: 
к
aLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/f_accStackV2aLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/Const*
	elem_type0*

stack_name *Z
_classP
NLloc:@RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_2*
_output_shapes
:
”
aLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/EnterEnteraLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/f_acc*
T0*
parallel_iterations *1

frame_name#!RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
э
gLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/StackPushV2StackPushV2aLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/EnterGRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_2^Loss/gradients/Add*
T0*
swap_memory( *(
_output_shapes
:€€€€€€€€€А
≤
fLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/StackPopV2
StackPopV2lLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/StackPopV2/Enter^Loss/gradients/Sub*
	elem_type0*(
_output_shapes
:€€€€€€€€€А
н
lLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/StackPopV2/EnterEnteraLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/f_acc*
T0*
parallel_iterations *@

frame_name20Loss/gradients/RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
о
[Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/SumSum[Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/MulmLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
В
_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/ReshapeReshape[Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/SumxLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€А
Ш
]Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1MulhLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/StackPopV2Loss/gradients/AddN_2*
T0*(
_output_shapes
:€€€€€€€€€А
З
cLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/ConstConst*
valueB :
€€€€€€€€€*
dtype0*W
_classM
KIloc:@RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_1*
_output_shapes
: 
л
cLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/f_accStackV2cLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/Const*
	elem_type0*

stack_name *W
_classM
KIloc:@RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_1*
_output_shapes
:
„
cLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/EnterEntercLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/f_acc*
T0*
parallel_iterations *1

frame_name#!RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
ю
iLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/StackPushV2StackPushV2cLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/EnterDRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_1^Loss/gradients/Add*
T0*
swap_memory( *(
_output_shapes
:€€€€€€€€€А
ґ
hLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/StackPopV2
StackPopV2nLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/StackPopV2/Enter^Loss/gradients/Sub*
	elem_type0*(
_output_shapes
:€€€€€€€€€А
с
nLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/StackPopV2/EnterEntercLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/f_acc*
T0*
parallel_iterations *@

frame_name20Loss/gradients/RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
ф
]Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Sum_1Sum]Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1oLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
И
aLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Reshape_1Reshape]Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Sum_1zLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€А
ґ
hLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/tuple/group_depsNoOp`^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Reshapeb^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Reshape_1
п
pLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/tuple/control_dependencyIdentity_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Reshapei^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/tuple/group_deps*
T0*r
_classh
fdloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Reshape*(
_output_shapes
:€€€€€€€€€А
х
rLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/tuple/control_dependency_1IdentityaLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Reshape_1i^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/tuple/group_deps*
T0*t
_classj
hfloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Reshape_1*(
_output_shapes
:€€€€€€€€€А
ь
aLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_1_grad/TanhGradTanhGradhLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/StackPopV2pLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/tuple/control_dependency*
T0*(
_output_shapes
:€€€€€€€€€А
Е
gLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_2_grad/SigmoidGradSigmoidGradfLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/StackPopV2rLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/tuple/control_dependency_1*
T0*(
_output_shapes
:€€€€€€€€€А
щ
@Loss/gradients/RNN_layer/rnn/while/Switch_6_grad_1/NextIterationNextIterationsLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/tuple/control_dependency_1*
T0*(
_output_shapes
:€€€€€€€€€А
÷
Loss/gradients/AddN_3AddNJLoss/gradients/RNN_layer/rnn/while/Merge_3_grad/tuple/control_dependency_1aLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_1_grad/TanhGrad*
T0*
N*L
_classB
@>loc:@Loss/gradients/RNN_layer/rnn/while/Switch_3_grad/b_switch*(
_output_shapes
:€€€€€€€€€А
ё
]Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/ShapeShapeARNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul*
T0*
out_type0*
_output_shapes
:
в
_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/Shape_1ShapeCRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1*
T0*
out_type0*
_output_shapes
:
є
mLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgsBroadcastGradientArgsxLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2zLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
∞
sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/ConstConst*
valueB :
€€€€€€€€€*
dtype0*p
_classf
dbloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/Shape*
_output_shapes
: 
§
sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_accStackV2sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Const*
	elem_type0*

stack_name *p
_classf
dbloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/Shape*
_output_shapes
:
ч
sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/EnterEntersLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_acc*
T0*
parallel_iterations *1

frame_name#!RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
©
yLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Enter]Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/Shape^Loss/gradients/Add*
T0*
swap_memory( *
_output_shapes
:
»
xLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2~Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2/Enter^Loss/gradients/Sub*
	elem_type0*
_output_shapes
:
С
~Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2/EnterEntersLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_acc*
T0*
parallel_iterations *@

frame_name20Loss/gradients/RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
і
uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Const_1Const*
valueB :
€€€€€€€€€*
dtype0*r
_classh
fdloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/Shape_1*
_output_shapes
: 
™
uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_acc_1StackV2uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Const_1*
	elem_type0*

stack_name *r
_classh
fdloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/Shape_1*
_output_shapes
:
ы
uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Enter_1EnteruLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_acc_1*
T0*
parallel_iterations *1

frame_name#!RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
ѓ
{Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Enter_1_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/Shape_1^Loss/gradients/Add*
T0*
swap_memory( *
_output_shapes
:
Ќ
zLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2АLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2_1/Enter^Loss/gradients/Sub*
	elem_type0*
_output_shapes
:
Ц
АLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnteruLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_acc_1*
T0*
parallel_iterations *@

frame_name20Loss/gradients/RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
®
[Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/SumSumLoss/gradients/AddN_3mLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
В
_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/ReshapeReshape[Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/SumxLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€А
ђ
]Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/Sum_1SumLoss/gradients/AddN_3oLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
И
aLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/Reshape_1Reshape]Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/Sum_1zLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€А
ґ
hLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/tuple/group_depsNoOp`^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/Reshapeb^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/Reshape_1
п
pLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/tuple/control_dependencyIdentity_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/Reshapei^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/tuple/group_deps*
T0*r
_classh
fdloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/Reshape*(
_output_shapes
:€€€€€€€€€А
х
rLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/tuple/control_dependency_1IdentityaLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/Reshape_1i^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/tuple/group_deps*
T0*t
_classj
hfloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/Reshape_1*(
_output_shapes
:€€€€€€€€€А
є
[Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/ShapeShapeRNN_layer/rnn/while/Identity_3*
T0*
out_type0*
_output_shapes
:
в
]Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Shape_1ShapeERNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid*
T0*
out_type0*
_output_shapes
:
≥
kLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsvLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2xLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
ђ
qLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/ConstConst*
valueB :
€€€€€€€€€*
dtype0*n
_classd
b`loc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Shape*
_output_shapes
: 
Ю
qLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_accStackV2qLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Const*
	elem_type0*

stack_name *n
_classd
b`loc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Shape*
_output_shapes
:
у
qLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/EnterEnterqLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_acc*
T0*
parallel_iterations *1

frame_name#!RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
£
wLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPushV2StackPushV2qLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Enter[Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Shape^Loss/gradients/Add*
T0*
swap_memory( *
_output_shapes
:
ƒ
vLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2
StackPopV2|Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2/Enter^Loss/gradients/Sub*
	elem_type0*
_output_shapes
:
Н
|Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2/EnterEnterqLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_acc*
T0*
parallel_iterations *@

frame_name20Loss/gradients/RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
∞
sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Const_1Const*
valueB :
€€€€€€€€€*
dtype0*p
_classf
dbloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Shape_1*
_output_shapes
: 
§
sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_acc_1StackV2sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Const_1*
	elem_type0*

stack_name *p
_classf
dbloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Shape_1*
_output_shapes
:
ч
sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Enter_1EntersLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_acc_1*
T0*
parallel_iterations *1

frame_name#!RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
©
yLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Enter_1]Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Shape_1^Loss/gradients/Add*
T0*
swap_memory( *
_output_shapes
:
»
xLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2~Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2_1/Enter^Loss/gradients/Sub*
	elem_type0*
_output_shapes
:
С
~Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2_1/EnterEntersLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_acc_1*
T0*
parallel_iterations *@

frame_name20Loss/gradients/RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
л
YLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/MulMulpLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/tuple/control_dependencydLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/StackPopV2*
T0*(
_output_shapes
:€€€€€€€€€А
Д
_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/ConstConst*
valueB :
€€€€€€€€€*
dtype0*X
_classN
LJloc:@RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid*
_output_shapes
: 
д
_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/f_accStackV2_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/Const*
	elem_type0*

stack_name *X
_classN
LJloc:@RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid*
_output_shapes
:
ѕ
_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/EnterEnter_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/f_acc*
T0*
parallel_iterations *1

frame_name#!RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
ч
eLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/StackPushV2StackPushV2_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/EnterERNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid^Loss/gradients/Add*
T0*
swap_memory( *(
_output_shapes
:€€€€€€€€€А
Ѓ
dLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/StackPopV2
StackPopV2jLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/StackPopV2/Enter^Loss/gradients/Sub*
	elem_type0*(
_output_shapes
:€€€€€€€€€А
й
jLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/StackPopV2/EnterEnter_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/f_acc*
T0*
parallel_iterations *@

frame_name20Loss/gradients/RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
и
YLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/SumSumYLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/MulkLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
ь
]Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/ReshapeReshapeYLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/SumvLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€А
п
[Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1MulfLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1/StackPopV2pLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/tuple/control_dependency*
T0*(
_output_shapes
:€€€€€€€€€А
я
aLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1/ConstConst*
valueB :
€€€€€€€€€*
dtype0*1
_class'
%#loc:@RNN_layer/rnn/while/Identity_3*
_output_shapes
: 
Ѕ
aLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1/f_accStackV2aLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1/Const*
	elem_type0*

stack_name *1
_class'
%#loc:@RNN_layer/rnn/while/Identity_3*
_output_shapes
:
”
aLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1/EnterEnteraLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1/f_acc*
T0*
parallel_iterations *1

frame_name#!RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
‘
gLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1/StackPushV2StackPushV2aLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1/EnterRNN_layer/rnn/while/Identity_3^Loss/gradients/Add*
T0*
swap_memory( *(
_output_shapes
:€€€€€€€€€А
≤
fLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1/StackPopV2
StackPopV2lLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1/StackPopV2/Enter^Loss/gradients/Sub*
	elem_type0*(
_output_shapes
:€€€€€€€€€А
н
lLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1/StackPopV2/EnterEnteraLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1/f_acc*
T0*
parallel_iterations *@

frame_name20Loss/gradients/RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
о
[Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Sum_1Sum[Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1mLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
В
_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Reshape_1Reshape[Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Sum_1xLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€А
∞
fLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/tuple/group_depsNoOp^^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Reshape`^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Reshape_1
з
nLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/tuple/control_dependencyIdentity]Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Reshapeg^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/tuple/group_deps*
T0*p
_classf
dbloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Reshape*(
_output_shapes
:€€€€€€€€€А
н
pLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/tuple/control_dependency_1Identity_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Reshape_1g^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/tuple/group_deps*
T0*r
_classh
fdloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Reshape_1*(
_output_shapes
:€€€€€€€€€А
д
]Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/ShapeShapeGRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_1*
T0*
out_type0*
_output_shapes
:
б
_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Shape_1ShapeBRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh*
T0*
out_type0*
_output_shapes
:
є
mLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsxLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2zLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
∞
sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/ConstConst*
valueB :
€€€€€€€€€*
dtype0*p
_classf
dbloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Shape*
_output_shapes
: 
§
sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_accStackV2sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Const*
	elem_type0*

stack_name *p
_classf
dbloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Shape*
_output_shapes
:
ч
sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/EnterEntersLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_acc*
T0*
parallel_iterations *1

frame_name#!RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
©
yLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Enter]Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Shape^Loss/gradients/Add*
T0*
swap_memory( *
_output_shapes
:
»
xLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2~Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2/Enter^Loss/gradients/Sub*
	elem_type0*
_output_shapes
:
С
~Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2/EnterEntersLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_acc*
T0*
parallel_iterations *@

frame_name20Loss/gradients/RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
і
uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Const_1Const*
valueB :
€€€€€€€€€*
dtype0*r
_classh
fdloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Shape_1*
_output_shapes
: 
™
uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_acc_1StackV2uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Const_1*
	elem_type0*

stack_name *r
_classh
fdloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Shape_1*
_output_shapes
:
ы
uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Enter_1EnteruLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_acc_1*
T0*
parallel_iterations *1

frame_name#!RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
ѓ
{Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Enter_1_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Shape_1^Loss/gradients/Add*
T0*
swap_memory( *
_output_shapes
:
Ќ
zLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2АLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2_1/Enter^Loss/gradients/Sub*
	elem_type0*
_output_shapes
:
Ц
АLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnteruLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_acc_1*
T0*
parallel_iterations *@

frame_name20Loss/gradients/RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
с
[Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/MulMulrLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/tuple/control_dependency_1fLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/StackPopV2*
T0*(
_output_shapes
:€€€€€€€€€А
Г
aLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/ConstConst*
valueB :
€€€€€€€€€*
dtype0*U
_classK
IGloc:@RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh*
_output_shapes
: 
е
aLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/f_accStackV2aLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/Const*
	elem_type0*

stack_name *U
_classK
IGloc:@RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh*
_output_shapes
:
”
aLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/EnterEnteraLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/f_acc*
T0*
parallel_iterations *1

frame_name#!RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
ш
gLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/StackPushV2StackPushV2aLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/EnterBRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh^Loss/gradients/Add*
T0*
swap_memory( *(
_output_shapes
:€€€€€€€€€А
≤
fLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/StackPopV2
StackPopV2lLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/StackPopV2/Enter^Loss/gradients/Sub*
	elem_type0*(
_output_shapes
:€€€€€€€€€А
н
lLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/StackPopV2/EnterEnteraLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/f_acc*
T0*
parallel_iterations *@

frame_name20Loss/gradients/RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
о
[Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/SumSum[Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/MulmLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
В
_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/ReshapeReshape[Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/SumxLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€А
х
]Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1MulhLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/StackPopV2rLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/tuple/control_dependency_1*
T0*(
_output_shapes
:€€€€€€€€€А
К
cLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/ConstConst*
valueB :
€€€€€€€€€*
dtype0*Z
_classP
NLloc:@RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_1*
_output_shapes
: 
о
cLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/f_accStackV2cLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/Const*
	elem_type0*

stack_name *Z
_classP
NLloc:@RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_1*
_output_shapes
:
„
cLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/EnterEntercLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/f_acc*
T0*
parallel_iterations *1

frame_name#!RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
Б
iLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/StackPushV2StackPushV2cLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/EnterGRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_1^Loss/gradients/Add*
T0*
swap_memory( *(
_output_shapes
:€€€€€€€€€А
ґ
hLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/StackPopV2
StackPopV2nLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/StackPopV2/Enter^Loss/gradients/Sub*
	elem_type0*(
_output_shapes
:€€€€€€€€€А
с
nLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/StackPopV2/EnterEntercLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/f_acc*
T0*
parallel_iterations *@

frame_name20Loss/gradients/RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
ф
]Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Sum_1Sum]Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1oLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
И
aLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Reshape_1Reshape]Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Sum_1zLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€А
ґ
hLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/tuple/group_depsNoOp`^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Reshapeb^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Reshape_1
п
pLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/tuple/control_dependencyIdentity_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Reshapei^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/tuple/group_deps*
T0*r
_classh
fdloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Reshape*(
_output_shapes
:€€€€€€€€€А
х
rLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/tuple/control_dependency_1IdentityaLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Reshape_1i^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/tuple/group_deps*
T0*t
_classj
hfloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Reshape_1*(
_output_shapes
:€€€€€€€€€А
€
eLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_grad/SigmoidGradSigmoidGraddLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/StackPopV2pLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/tuple/control_dependency_1*
T0*(
_output_shapes
:€€€€€€€€€А
Е
gLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_1_grad/SigmoidGradSigmoidGradhLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/StackPopV2pLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/tuple/control_dependency*
T0*(
_output_shapes
:€€€€€€€€€А
ъ
_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_grad/TanhGradTanhGradfLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/StackPopV2rLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/tuple/control_dependency_1*
T0*(
_output_shapes
:€€€€€€€€€А
ф
@Loss/gradients/RNN_layer/rnn/while/Switch_3_grad_1/NextIterationNextIterationnLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/tuple/control_dependency*
T0*(
_output_shapes
:€€€€€€€€€А
а
[Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/ShapeShapeERNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split:2*
T0*
out_type0*
_output_shapes
:
µ
]Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Shape_1Const^Loss/gradients/Sub*
valueB *
dtype0*
_output_shapes
: 
Ш
kLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgsBroadcastGradientArgsvLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/StackPopV2]Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
ђ
qLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/ConstConst*
valueB :
€€€€€€€€€*
dtype0*n
_classd
b`loc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Shape*
_output_shapes
: 
Ю
qLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/f_accStackV2qLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/Const*
	elem_type0*

stack_name *n
_classd
b`loc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Shape*
_output_shapes
:
у
qLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/EnterEnterqLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/f_acc*
T0*
parallel_iterations *1

frame_name#!RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
£
wLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/StackPushV2StackPushV2qLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/Enter[Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Shape^Loss/gradients/Add*
T0*
swap_memory( *
_output_shapes
:
ƒ
vLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/StackPopV2
StackPopV2|Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/StackPopV2/Enter^Loss/gradients/Sub*
	elem_type0*
_output_shapes
:
Н
|Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/StackPopV2/EnterEnterqLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/f_acc*
T0*
parallel_iterations *@

frame_name20Loss/gradients/RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
ф
YLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/SumSumeLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_grad/SigmoidGradkLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
ь
]Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/ReshapeReshapeYLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/SumvLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€А
ш
[Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Sum_1SumeLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_grad/SigmoidGradmLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
’
_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Reshape_1Reshape[Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Sum_1]Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
∞
fLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/tuple/group_depsNoOp^^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Reshape`^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Reshape_1
з
nLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/tuple/control_dependencyIdentity]Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Reshapeg^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/tuple/group_deps*
T0*p
_classf
dbloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Reshape*(
_output_shapes
:€€€€€€€€€А
џ
pLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/tuple/control_dependency_1Identity_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Reshape_1g^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/tuple/group_deps*
T0*r
_classh
fdloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Reshape_1*
_output_shapes
: 
ї
^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_grad/concatConcatV2gLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_1_grad/SigmoidGrad_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_grad/TanhGradnLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/tuple/control_dependencygLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_2_grad/SigmoidGraddLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_grad/concat/Const*
T0*
N*

Tidx0*(
_output_shapes
:€€€€€€€€€А
ї
dLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_grad/concat/ConstConst^Loss/gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
С
eLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_grad/BiasAddGradBiasAddGrad^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_grad/concat*
T0*
data_formatNHWC*
_output_shapes	
:А
ї
jLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_grad/tuple/group_depsNoOpf^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_grad/BiasAddGrad_^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_grad/concat
с
rLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_grad/tuple/control_dependencyIdentity^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_grad/concatk^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*q
_classg
ecloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_grad/concat*(
_output_shapes
:€€€€€€€€€А
ф
tLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1IdentityeLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_grad/BiasAddGradk^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*x
_classn
ljloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:А
Э
_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMulMatMulrLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_grad/tuple/control_dependencyeLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul/Enter*
T0*
transpose_b(*
transpose_a( *(
_output_shapes
:€€€€€€€€€д
ј
eLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul/EnterEnter5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/read*
T0*
parallel_iterations *@

frame_name20Loss/gradients/RNN_layer/rnn/while/while_context*
is_constant(* 
_output_shapes
:
дА
Ю
aLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1MatMullLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2rLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_b( *
transpose_a(* 
_output_shapes
:
дА
Л
gLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/ConstConst*
valueB :
€€€€€€€€€*
dtype0*W
_classM
KIloc:@RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat*
_output_shapes
: 
у
gLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/f_accStackV2gLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/Const*
	elem_type0*

stack_name *W
_classM
KIloc:@RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat*
_output_shapes
:
я
gLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/EnterEntergLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/f_acc*
T0*
parallel_iterations *1

frame_name#!RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
Ж
mLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/StackPushV2StackPushV2gLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/EnterDRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat^Loss/gradients/Add*
T0*
swap_memory( *(
_output_shapes
:€€€€€€€€€д
Њ
lLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2
StackPopV2rLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2/Enter^Loss/gradients/Sub*
	elem_type0*(
_output_shapes
:€€€€€€€€€д
щ
rLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2/EnterEntergLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/f_acc*
T0*
parallel_iterations *@

frame_name20Loss/gradients/RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
Ј
iLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/tuple/group_depsNoOp`^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMulb^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1
с
qLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/tuple/control_dependencyIdentity_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMulj^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*r
_classh
fdloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul*(
_output_shapes
:€€€€€€€€€д
п
sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1IdentityaLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1j^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*t
_classj
hfloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1* 
_output_shapes
:
дА
і
eLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/b_accConst*
valueBА*    *
dtype0*
_output_shapes	
:А
н
gLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_1EntereLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/b_acc*
T0*
parallel_iterations *@

frame_name20Loss/gradients/RNN_layer/rnn/while/while_context*
is_constant( *
_output_shapes	
:А
щ
gLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_2MergegLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_1mLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/NextIteration*
T0*
N*
_output_shapes
	:А: 
†
fLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/SwitchSwitchgLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_2Loss/gradients/b_count_2*
T0*"
_output_shapes
:А:А
р
cLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/AddAddhLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/Switch:1tLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1*
T0*
_output_shapes	
:А
Й
mLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/NextIterationNextIterationcLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/Add*
T0*
_output_shapes	
:А
э
gLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_3ExitfLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/Switch*
T0*
_output_shapes	
:А
µ
^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ConstConst^Loss/gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
і
]Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/RankConst^Loss/gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
»
\Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/modFloorMod^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/Const]Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/Rank*
T0*
_output_shapes
: 
√
^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeShape%RNN_layer/rnn/while/TensorArrayReadV3*
T0*
out_type0*
_output_shapes
:
З
_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeNShapeNjLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/StackPopV2lLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/StackPopV2_1*
T0*
out_type0*
N* 
_output_shapes
::
к
eLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/ConstConst*
valueB :
€€€€€€€€€*
dtype0*8
_class.
,*loc:@RNN_layer/rnn/while/TensorArrayReadV3*
_output_shapes
: 
–
eLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/f_accStackV2eLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/Const*
	elem_type0*

stack_name *8
_class.
,*loc:@RNN_layer/rnn/while/TensorArrayReadV3*
_output_shapes
:
џ
eLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/EnterEntereLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/f_acc*
T0*
parallel_iterations *1

frame_name#!RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
в
kLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/StackPushV2StackPushV2eLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/Enter%RNN_layer/rnn/while/TensorArrayReadV3^Loss/gradients/Add*
T0*
swap_memory( *'
_output_shapes
:€€€€€€€€€d
є
jLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/StackPopV2
StackPopV2pLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/StackPopV2/Enter^Loss/gradients/Sub*
	elem_type0*'
_output_shapes
:€€€€€€€€€d
х
pLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/StackPopV2/EnterEntereLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/f_acc*
T0*
parallel_iterations *@

frame_name20Loss/gradients/RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
е
gLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/Const_1Const*
valueB :
€€€€€€€€€*
dtype0*1
_class'
%#loc:@RNN_layer/rnn/while/Identity_4*
_output_shapes
: 
Ќ
gLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/f_acc_1StackV2gLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/Const_1*
	elem_type0*

stack_name *1
_class'
%#loc:@RNN_layer/rnn/while/Identity_4*
_output_shapes
:
я
gLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/Enter_1EntergLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/f_acc_1*
T0*
parallel_iterations *1

frame_name#!RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
а
mLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/StackPushV2_1StackPushV2gLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/Enter_1RNN_layer/rnn/while/Identity_4^Loss/gradients/Add*
T0*
swap_memory( *(
_output_shapes
:€€€€€€€€€А
Њ
lLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/StackPopV2_1
StackPopV2rLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/StackPopV2_1/Enter^Loss/gradients/Sub*
	elem_type0*(
_output_shapes
:€€€€€€€€€А
щ
rLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/StackPopV2_1/EnterEntergLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/f_acc_1*
T0*
parallel_iterations *@

frame_name20Loss/gradients/RNN_layer/rnn/while/while_context*
is_constant(*
_output_shapes
:
¬
eLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ConcatOffsetConcatOffset\Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/mod_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeNaLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN:1*
N* 
_output_shapes
::
к
^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/SliceSliceqLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/tuple/control_dependencyeLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ConcatOffset_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN*
Index0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
р
`Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/Slice_1SliceqLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/tuple/control_dependencygLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ConcatOffset:1aLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN:1*
Index0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
µ
iLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/tuple/group_depsNoOp_^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/Slicea^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/Slice_1
о
qLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/tuple/control_dependencyIdentity^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/Slicej^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*q
_classg
ecloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/Slice*'
_output_shapes
:€€€€€€€€€d
х
sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/tuple/control_dependency_1Identity`Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/Slice_1j^Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*s
_classi
geloc:@Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/Slice_1*(
_output_shapes
:€€€€€€€€€А
љ
dLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/b_accConst*
valueB
дА*    *
dtype0* 
_output_shapes
:
дА
р
fLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/b_acc_1EnterdLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/b_acc*
T0*
parallel_iterations *@

frame_name20Loss/gradients/RNN_layer/rnn/while/while_context*
is_constant( * 
_output_shapes
:
дА
ы
fLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/b_acc_2MergefLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/b_acc_1lLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/NextIteration*
T0*
N*"
_output_shapes
:
дА: 
®
eLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/SwitchSwitchfLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/b_acc_2Loss/gradients/b_count_2*
T0*,
_output_shapes
:
дА:
дА
т
bLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/AddAddgLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/Switch:1sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1*
T0* 
_output_shapes
:
дА
М
lLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/NextIterationNextIterationbLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/Add*
T0* 
_output_shapes
:
дА
А
fLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/b_acc_3ExiteLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/Switch*
T0* 
_output_shapes
:
дА
«
[Loss/gradients/RNN_layer/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3aLoss/gradients/RNN_layer/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/EntercLoss/gradients/RNN_layer/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1^Loss/gradients/Sub*
sourceLoss/gradients*>
_class4
20loc:@RNN_layer/rnn/while/TensorArrayReadV3/Enter*
_output_shapes

:: 
№
aLoss/gradients/RNN_layer/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEnterRNN_layer/rnn/TensorArray_1*
T0*
parallel_iterations *@

frame_name20Loss/gradients/RNN_layer/rnn/while/while_context*
is_constant(*>
_class4
20loc:@RNN_layer/rnn/while/TensorArrayReadV3/Enter*
_output_shapes
:
З
cLoss/gradients/RNN_layer/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1EnterHRNN_layer/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*
parallel_iterations *@

frame_name20Loss/gradients/RNN_layer/rnn/while/while_context*
is_constant(*>
_class4
20loc:@RNN_layer/rnn/while/TensorArrayReadV3/Enter*
_output_shapes
: 
З
WLoss/gradients/RNN_layer/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flowIdentitycLoss/gradients/RNN_layer/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1\^Loss/gradients/RNN_layer/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*>
_class4
20loc:@RNN_layer/rnn/while/TensorArrayReadV3/Enter*
_output_shapes
: 
І
]Loss/gradients/RNN_layer/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3[Loss/gradients/RNN_layer/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3hLoss/gradients/RNN_layer/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2qLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/tuple/control_dependencyWLoss/gradients/RNN_layer/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flow*
T0*
_output_shapes
: 
М
GLoss/gradients/RNN_layer/rnn/while/TensorArrayReadV3/Enter_1_grad/b_accConst*
valueB
 *    *
dtype0*
_output_shapes
: 
ђ
ILoss/gradients/RNN_layer/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_1EnterGLoss/gradients/RNN_layer/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc*
T0*
parallel_iterations *@

frame_name20Loss/gradients/RNN_layer/rnn/while/while_context*
is_constant( *
_output_shapes
: 
Ъ
ILoss/gradients/RNN_layer/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_2MergeILoss/gradients/RNN_layer/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_1OLoss/gradients/RNN_layer/rnn/while/TensorArrayReadV3/Enter_1_grad/NextIteration*
T0*
N*
_output_shapes
: : 
Џ
HLoss/gradients/RNN_layer/rnn/while/TensorArrayReadV3/Enter_1_grad/SwitchSwitchILoss/gradients/RNN_layer/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_2Loss/gradients/b_count_2*
T0*
_output_shapes
: : 
Ш
ELoss/gradients/RNN_layer/rnn/while/TensorArrayReadV3/Enter_1_grad/AddAddJLoss/gradients/RNN_layer/rnn/while/TensorArrayReadV3/Enter_1_grad/Switch:1]Loss/gradients/RNN_layer/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
»
OLoss/gradients/RNN_layer/rnn/while/TensorArrayReadV3/Enter_1_grad/NextIterationNextIterationELoss/gradients/RNN_layer/rnn/while/TensorArrayReadV3/Enter_1_grad/Add*
T0*
_output_shapes
: 
Љ
ILoss/gradients/RNN_layer/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3ExitHLoss/gradients/RNN_layer/rnn/while/TensorArrayReadV3/Enter_1_grad/Switch*
T0*
_output_shapes
: 
щ
@Loss/gradients/RNN_layer/rnn/while/Switch_4_grad_1/NextIterationNextIterationsLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/tuple/control_dependency_1*
T0*(
_output_shapes
:€€€€€€€€€А
е
~Loss/gradients/RNN_layer/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3RNN_layer/rnn/TensorArray_1ILoss/gradients/RNN_layer/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3*
sourceLoss/gradients*.
_class$
" loc:@RNN_layer/rnn/TensorArray_1*
_output_shapes

:: 
£
zLoss/gradients/RNN_layer/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flowIdentityILoss/gradients/RNN_layer/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3^Loss/gradients/RNN_layer/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*.
_class$
" loc:@RNN_layer/rnn/TensorArray_1*
_output_shapes
: 
Е
pLoss/gradients/RNN_layer/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3TensorArrayGatherV3~Loss/gradients/RNN_layer/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3&RNN_layer/rnn/TensorArrayUnstack/rangezLoss/gradients/RNN_layer/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flow*
element_shape:*
dtype0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d
і
mLoss/gradients/RNN_layer/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_depsNoOpq^Loss/gradients/RNN_layer/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3J^Loss/gradients/RNN_layer/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3
Я
uLoss/gradients/RNN_layer/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependencyIdentitypLoss/gradients/RNN_layer/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3n^Loss/gradients/RNN_layer/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_deps*
T0*Г
_classy
wuloc:@Loss/gradients/RNN_layer/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3*+
_output_shapes
:d€€€€€€€€€d
љ
wLoss/gradients/RNN_layer/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependency_1IdentityILoss/gradients/RNN_layer/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3n^Loss/gradients/RNN_layer/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_deps*
T0*\
_classR
PNloc:@Loss/gradients/RNN_layer/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3*
_output_shapes
: 
Н
=Loss/gradients/RNN_layer/rnn/transpose_grad/InvertPermutationInvertPermutationRNN_layer/rnn/concat*
T0*
_output_shapes
:
ї
5Loss/gradients/RNN_layer/rnn/transpose_grad/transpose	TransposeuLoss/gradients/RNN_layer/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependency=Loss/gradients/RNN_layer/rnn/transpose_grad/InvertPermutation*
T0*
Tperm0*+
_output_shapes
:€€€€€€€€€dd
ј
:Loss/gradients/Embedding_layer/embedding_lookup_grad/ShapeConst*%
valueB	"÷Т      d       *
dtype0	*+
_class!
loc:@Embedding_layer/Variable*
_output_shapes
:
б
<Loss/gradients/Embedding_layer/embedding_lookup_grad/ToInt32Cast:Loss/gradients/Embedding_layer/embedding_lookup_grad/Shape*

DstT0*

SrcT0	*+
_class!
loc:@Embedding_layer/Variable*
_output_shapes
:
З
9Loss/gradients/Embedding_layer/embedding_lookup_grad/SizeSizeInput_Layer/input_x*
T0*
out_type0*
_output_shapes
: 
Е
CLoss/gradients/Embedding_layer/embedding_lookup_grad/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
ю
?Loss/gradients/Embedding_layer/embedding_lookup_grad/ExpandDims
ExpandDims9Loss/gradients/Embedding_layer/embedding_lookup_grad/SizeCLoss/gradients/Embedding_layer/embedding_lookup_grad/ExpandDims/dim*
T0*

Tdim0*
_output_shapes
:
Т
HLoss/gradients/Embedding_layer/embedding_lookup_grad/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
Ф
JLoss/gradients/Embedding_layer/embedding_lookup_grad/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
Ф
JLoss/gradients/Embedding_layer/embedding_lookup_grad/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
И
BLoss/gradients/Embedding_layer/embedding_lookup_grad/strided_sliceStridedSlice<Loss/gradients/Embedding_layer/embedding_lookup_grad/ToInt32HLoss/gradients/Embedding_layer/embedding_lookup_grad/strided_slice/stackJLoss/gradients/Embedding_layer/embedding_lookup_grad/strided_slice/stack_1JLoss/gradients/Embedding_layer/embedding_lookup_grad/strided_slice/stack_2*
Index0*
end_mask*
shrink_axis_mask *
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
:
В
@Loss/gradients/Embedding_layer/embedding_lookup_grad/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
»
;Loss/gradients/Embedding_layer/embedding_lookup_grad/concatConcatV2?Loss/gradients/Embedding_layer/embedding_lookup_grad/ExpandDimsBLoss/gradients/Embedding_layer/embedding_lookup_grad/strided_slice@Loss/gradients/Embedding_layer/embedding_lookup_grad/concat/axis*
T0*
N*

Tidx0*
_output_shapes
:
ы
<Loss/gradients/Embedding_layer/embedding_lookup_grad/ReshapeReshape5Loss/gradients/RNN_layer/rnn/transpose_grad/transpose;Loss/gradients/Embedding_layer/embedding_lookup_grad/concat*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€d
џ
>Loss/gradients/Embedding_layer/embedding_lookup_grad/Reshape_1ReshapeInput_Layer/input_x?Loss/gradients/Embedding_layer/embedding_lookup_grad/ExpandDims*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
Р
Loss/beta1_power/initial_valueConst*
valueB
 *fff?*
dtype0*+
_class!
loc:@Embedding_layer/Variable*
_output_shapes
: 
°
Loss/beta1_power
VariableV2*
dtype0*
shared_name *
shape: *
	container *+
_class!
loc:@Embedding_layer/Variable*
_output_shapes
: 
 
Loss/beta1_power/AssignAssignLoss/beta1_powerLoss/beta1_power/initial_value*
T0*
use_locking(*
validate_shape(*+
_class!
loc:@Embedding_layer/Variable*
_output_shapes
: 
Б
Loss/beta1_power/readIdentityLoss/beta1_power*
T0*+
_class!
loc:@Embedding_layer/Variable*
_output_shapes
: 
Р
Loss/beta2_power/initial_valueConst*
valueB
 *wЊ?*
dtype0*+
_class!
loc:@Embedding_layer/Variable*
_output_shapes
: 
°
Loss/beta2_power
VariableV2*
dtype0*
shared_name *
shape: *
	container *+
_class!
loc:@Embedding_layer/Variable*
_output_shapes
: 
 
Loss/beta2_power/AssignAssignLoss/beta2_powerLoss/beta2_power/initial_value*
T0*
use_locking(*
validate_shape(*+
_class!
loc:@Embedding_layer/Variable*
_output_shapes
: 
Б
Loss/beta2_power/readIdentityLoss/beta2_power*
T0*+
_class!
loc:@Embedding_layer/Variable*
_output_shapes
: 
љ
?Embedding_layer/Variable/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"÷Т  d   *
dtype0*+
_class!
loc:@Embedding_layer/Variable*
_output_shapes
:
І
5Embedding_layer/Variable/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*+
_class!
loc:@Embedding_layer/Variable*
_output_shapes
: 
Щ
/Embedding_layer/Variable/Adam/Initializer/zerosFill?Embedding_layer/Variable/Adam/Initializer/zeros/shape_as_tensor5Embedding_layer/Variable/Adam/Initializer/zeros/Const*
T0*

index_type0*+
_class!
loc:@Embedding_layer/Variable* 
_output_shapes
:
÷•d
¬
Embedding_layer/Variable/Adam
VariableV2*
dtype0*
shared_name *
shape:
÷•d*
	container *+
_class!
loc:@Embedding_layer/Variable* 
_output_shapes
:
÷•d
€
$Embedding_layer/Variable/Adam/AssignAssignEmbedding_layer/Variable/Adam/Embedding_layer/Variable/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*+
_class!
loc:@Embedding_layer/Variable* 
_output_shapes
:
÷•d
•
"Embedding_layer/Variable/Adam/readIdentityEmbedding_layer/Variable/Adam*
T0*+
_class!
loc:@Embedding_layer/Variable* 
_output_shapes
:
÷•d
њ
AEmbedding_layer/Variable/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"÷Т  d   *
dtype0*+
_class!
loc:@Embedding_layer/Variable*
_output_shapes
:
©
7Embedding_layer/Variable/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*+
_class!
loc:@Embedding_layer/Variable*
_output_shapes
: 
Я
1Embedding_layer/Variable/Adam_1/Initializer/zerosFillAEmbedding_layer/Variable/Adam_1/Initializer/zeros/shape_as_tensor7Embedding_layer/Variable/Adam_1/Initializer/zeros/Const*
T0*

index_type0*+
_class!
loc:@Embedding_layer/Variable* 
_output_shapes
:
÷•d
ƒ
Embedding_layer/Variable/Adam_1
VariableV2*
dtype0*
shared_name *
shape:
÷•d*
	container *+
_class!
loc:@Embedding_layer/Variable* 
_output_shapes
:
÷•d
Е
&Embedding_layer/Variable/Adam_1/AssignAssignEmbedding_layer/Variable/Adam_11Embedding_layer/Variable/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*+
_class!
loc:@Embedding_layer/Variable* 
_output_shapes
:
÷•d
©
$Embedding_layer/Variable/Adam_1/readIdentityEmbedding_layer/Variable/Adam_1*
T0*+
_class!
loc:@Embedding_layer/Variable* 
_output_shapes
:
÷•d
н
Wrnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"д      *
dtype0*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
_output_shapes
:
„
Mrnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
_output_shapes
: 
щ
Grnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/Initializer/zerosFillWrnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/Initializer/zeros/shape_as_tensorMrnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel* 
_output_shapes
:
дА
т
5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam
VariableV2*
dtype0*
shared_name *
shape:
дА*
	container *C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel* 
_output_shapes
:
дА
я
<rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/AssignAssign5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/AdamGrnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel* 
_output_shapes
:
дА
н
:rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/readIdentity5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam*
T0*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel* 
_output_shapes
:
дА
п
Yrnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"д      *
dtype0*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
_output_shapes
:
ў
Ornn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
_output_shapes
: 
€
Irnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/Initializer/zerosFillYrnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/Initializer/zeros/shape_as_tensorOrnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel* 
_output_shapes
:
дА
ф
7rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1
VariableV2*
dtype0*
shared_name *
shape:
дА*
	container *C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel* 
_output_shapes
:
дА
е
>rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/AssignAssign7rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1Irnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel* 
_output_shapes
:
дА
с
<rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/readIdentity7rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1*
T0*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel* 
_output_shapes
:
дА
„
Ernn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam/Initializer/zerosConst*
valueBА*    *
dtype0*A
_class7
53loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
_output_shapes	
:А
д
3rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam
VariableV2*
dtype0*
shared_name *
shape:А*
	container *A
_class7
53loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
_output_shapes	
:А
“
:rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam/AssignAssign3rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/AdamErnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*A
_class7
53loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
_output_shapes	
:А
в
8rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam/readIdentity3rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam*
T0*A
_class7
53loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
_output_shapes	
:А
ў
Grnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1/Initializer/zerosConst*
valueBА*    *
dtype0*A
_class7
53loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
_output_shapes	
:А
ж
5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1
VariableV2*
dtype0*
shared_name *
shape:А*
	container *A
_class7
53loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
_output_shapes	
:А
Ў
<rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1/AssignAssign5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1Grnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*A
_class7
53loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
_output_shapes	
:А
ж
:rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1/readIdentity5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1*
T0*A
_class7
53loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
_output_shapes	
:А
н
Wrnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"      *
dtype0*C
_class9
75loc:@rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel*
_output_shapes
:
„
Mrnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*C
_class9
75loc:@rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel*
_output_shapes
: 
щ
Grnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam/Initializer/zerosFillWrnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam/Initializer/zeros/shape_as_tensorMrnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*C
_class9
75loc:@rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel* 
_output_shapes
:
АА
т
5rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam
VariableV2*
dtype0*
shared_name *
shape:
АА*
	container *C
_class9
75loc:@rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel* 
_output_shapes
:
АА
я
<rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam/AssignAssign5rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/AdamGrnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*C
_class9
75loc:@rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel* 
_output_shapes
:
АА
н
:rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam/readIdentity5rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam*
T0*C
_class9
75loc:@rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel* 
_output_shapes
:
АА
п
Yrnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"      *
dtype0*C
_class9
75loc:@rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel*
_output_shapes
:
ў
Ornn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*C
_class9
75loc:@rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel*
_output_shapes
: 
€
Irnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1/Initializer/zerosFillYrnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1/Initializer/zeros/shape_as_tensorOrnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*C
_class9
75loc:@rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel* 
_output_shapes
:
АА
ф
7rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1
VariableV2*
dtype0*
shared_name *
shape:
АА*
	container *C
_class9
75loc:@rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel* 
_output_shapes
:
АА
е
>rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1/AssignAssign7rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1Irnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*C
_class9
75loc:@rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel* 
_output_shapes
:
АА
с
<rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1/readIdentity7rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1*
T0*C
_class9
75loc:@rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel* 
_output_shapes
:
АА
„
Ernn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam/Initializer/zerosConst*
valueBА*    *
dtype0*A
_class7
53loc:@rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
_output_shapes	
:А
д
3rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam
VariableV2*
dtype0*
shared_name *
shape:А*
	container *A
_class7
53loc:@rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
_output_shapes	
:А
“
:rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam/AssignAssign3rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/AdamErnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*A
_class7
53loc:@rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
_output_shapes	
:А
в
8rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam/readIdentity3rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam*
T0*A
_class7
53loc:@rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
_output_shapes	
:А
ў
Grnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1/Initializer/zerosConst*
valueBА*    *
dtype0*A
_class7
53loc:@rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
_output_shapes	
:А
ж
5rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1
VariableV2*
dtype0*
shared_name *
shape:А*
	container *A
_class7
53loc:@rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
_output_shapes	
:А
Ў
<rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1/AssignAssign5rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1Grnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*A
_class7
53loc:@rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
_output_shapes	
:А
ж
:rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1/readIdentity5rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1*
T0*A
_class7
53loc:@rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
_output_shapes	
:А
≠
,Output_layer/Variable/Adam/Initializer/zerosConst*
valueB	А*    *
dtype0*(
_class
loc:@Output_layer/Variable*
_output_shapes
:	А
Ї
Output_layer/Variable/Adam
VariableV2*
dtype0*
shared_name *
shape:	А*
	container *(
_class
loc:@Output_layer/Variable*
_output_shapes
:	А
т
!Output_layer/Variable/Adam/AssignAssignOutput_layer/Variable/Adam,Output_layer/Variable/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*(
_class
loc:@Output_layer/Variable*
_output_shapes
:	А
Ы
Output_layer/Variable/Adam/readIdentityOutput_layer/Variable/Adam*
T0*(
_class
loc:@Output_layer/Variable*
_output_shapes
:	А
ѓ
.Output_layer/Variable/Adam_1/Initializer/zerosConst*
valueB	А*    *
dtype0*(
_class
loc:@Output_layer/Variable*
_output_shapes
:	А
Љ
Output_layer/Variable/Adam_1
VariableV2*
dtype0*
shared_name *
shape:	А*
	container *(
_class
loc:@Output_layer/Variable*
_output_shapes
:	А
ш
#Output_layer/Variable/Adam_1/AssignAssignOutput_layer/Variable/Adam_1.Output_layer/Variable/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*(
_class
loc:@Output_layer/Variable*
_output_shapes
:	А
Я
!Output_layer/Variable/Adam_1/readIdentityOutput_layer/Variable/Adam_1*
T0*(
_class
loc:@Output_layer/Variable*
_output_shapes
:	А
І
.Output_layer/Variable_1/Adam/Initializer/zerosConst*
valueB*    *
dtype0**
_class 
loc:@Output_layer/Variable_1*
_output_shapes
:
і
Output_layer/Variable_1/Adam
VariableV2*
dtype0*
shared_name *
shape:*
	container **
_class 
loc:@Output_layer/Variable_1*
_output_shapes
:
х
#Output_layer/Variable_1/Adam/AssignAssignOutput_layer/Variable_1/Adam.Output_layer/Variable_1/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(**
_class 
loc:@Output_layer/Variable_1*
_output_shapes
:
Ь
!Output_layer/Variable_1/Adam/readIdentityOutput_layer/Variable_1/Adam*
T0**
_class 
loc:@Output_layer/Variable_1*
_output_shapes
:
©
0Output_layer/Variable_1/Adam_1/Initializer/zerosConst*
valueB*    *
dtype0**
_class 
loc:@Output_layer/Variable_1*
_output_shapes
:
ґ
Output_layer/Variable_1/Adam_1
VariableV2*
dtype0*
shared_name *
shape:*
	container **
_class 
loc:@Output_layer/Variable_1*
_output_shapes
:
ы
%Output_layer/Variable_1/Adam_1/AssignAssignOutput_layer/Variable_1/Adam_10Output_layer/Variable_1/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(**
_class 
loc:@Output_layer/Variable_1*
_output_shapes
:
†
#Output_layer/Variable_1/Adam_1/readIdentityOutput_layer/Variable_1/Adam_1*
T0**
_class 
loc:@Output_layer/Variable_1*
_output_shapes
:
\
Loss/Adam/learning_rateConst*
valueB
 *oГ:*
dtype0*
_output_shapes
: 
T
Loss/Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
T
Loss/Adam/beta2Const*
valueB
 *wЊ?*
dtype0*
_output_shapes
: 
V
Loss/Adam/epsilonConst*
valueB
 *wћ+2*
dtype0*
_output_shapes
: 
у
0Loss/Adam/update_Embedding_layer/Variable/UniqueUnique>Loss/gradients/Embedding_layer/embedding_lookup_grad/Reshape_1*
T0*
out_idx0*+
_class!
loc:@Embedding_layer/Variable*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
ћ
/Loss/Adam/update_Embedding_layer/Variable/ShapeShape0Loss/Adam/update_Embedding_layer/Variable/Unique*
T0*
out_type0*+
_class!
loc:@Embedding_layer/Variable*
_output_shapes
:
і
=Loss/Adam/update_Embedding_layer/Variable/strided_slice/stackConst*
valueB: *
dtype0*+
_class!
loc:@Embedding_layer/Variable*
_output_shapes
:
ґ
?Loss/Adam/update_Embedding_layer/Variable/strided_slice/stack_1Const*
valueB:*
dtype0*+
_class!
loc:@Embedding_layer/Variable*
_output_shapes
:
ґ
?Loss/Adam/update_Embedding_layer/Variable/strided_slice/stack_2Const*
valueB:*
dtype0*+
_class!
loc:@Embedding_layer/Variable*
_output_shapes
:
ш
7Loss/Adam/update_Embedding_layer/Variable/strided_sliceStridedSlice/Loss/Adam/update_Embedding_layer/Variable/Shape=Loss/Adam/update_Embedding_layer/Variable/strided_slice/stack?Loss/Adam/update_Embedding_layer/Variable/strided_slice/stack_1?Loss/Adam/update_Embedding_layer/Variable/strided_slice/stack_2*
Index0*
end_mask *+
_class!
loc:@Embedding_layer/Variable*
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 
А
<Loss/Adam/update_Embedding_layer/Variable/UnsortedSegmentSumUnsortedSegmentSum<Loss/gradients/Embedding_layer/embedding_lookup_grad/Reshape2Loss/Adam/update_Embedding_layer/Variable/Unique:17Loss/Adam/update_Embedding_layer/Variable/strided_slice*
T0*
Tindices0*
Tnumsegments0*+
_class!
loc:@Embedding_layer/Variable*'
_output_shapes
:€€€€€€€€€d
°
/Loss/Adam/update_Embedding_layer/Variable/sub/xConst*
valueB
 *  А?*
dtype0*+
_class!
loc:@Embedding_layer/Variable*
_output_shapes
: 
 
-Loss/Adam/update_Embedding_layer/Variable/subSub/Loss/Adam/update_Embedding_layer/Variable/sub/xLoss/beta2_power/read*
T0*+
_class!
loc:@Embedding_layer/Variable*
_output_shapes
: 
≥
.Loss/Adam/update_Embedding_layer/Variable/SqrtSqrt-Loss/Adam/update_Embedding_layer/Variable/sub*
T0*+
_class!
loc:@Embedding_layer/Variable*
_output_shapes
: 
Ћ
-Loss/Adam/update_Embedding_layer/Variable/mulMulLoss/Adam/learning_rate.Loss/Adam/update_Embedding_layer/Variable/Sqrt*
T0*+
_class!
loc:@Embedding_layer/Variable*
_output_shapes
: 
£
1Loss/Adam/update_Embedding_layer/Variable/sub_1/xConst*
valueB
 *  А?*
dtype0*+
_class!
loc:@Embedding_layer/Variable*
_output_shapes
: 
ќ
/Loss/Adam/update_Embedding_layer/Variable/sub_1Sub1Loss/Adam/update_Embedding_layer/Variable/sub_1/xLoss/beta1_power/read*
T0*+
_class!
loc:@Embedding_layer/Variable*
_output_shapes
: 
к
1Loss/Adam/update_Embedding_layer/Variable/truedivRealDiv-Loss/Adam/update_Embedding_layer/Variable/mul/Loss/Adam/update_Embedding_layer/Variable/sub_1*
T0*+
_class!
loc:@Embedding_layer/Variable*
_output_shapes
: 
£
1Loss/Adam/update_Embedding_layer/Variable/sub_2/xConst*
valueB
 *  А?*
dtype0*+
_class!
loc:@Embedding_layer/Variable*
_output_shapes
: 
»
/Loss/Adam/update_Embedding_layer/Variable/sub_2Sub1Loss/Adam/update_Embedding_layer/Variable/sub_2/xLoss/Adam/beta1*
T0*+
_class!
loc:@Embedding_layer/Variable*
_output_shapes
: 
Д
/Loss/Adam/update_Embedding_layer/Variable/mul_1Mul<Loss/Adam/update_Embedding_layer/Variable/UnsortedSegmentSum/Loss/Adam/update_Embedding_layer/Variable/sub_2*
T0*+
_class!
loc:@Embedding_layer/Variable*'
_output_shapes
:€€€€€€€€€d
√
/Loss/Adam/update_Embedding_layer/Variable/mul_2Mul"Embedding_layer/Variable/Adam/readLoss/Adam/beta1*
T0*+
_class!
loc:@Embedding_layer/Variable* 
_output_shapes
:
÷•d
Л
0Loss/Adam/update_Embedding_layer/Variable/AssignAssignEmbedding_layer/Variable/Adam/Loss/Adam/update_Embedding_layer/Variable/mul_2*
T0*
use_locking( *
validate_shape(*+
_class!
loc:@Embedding_layer/Variable* 
_output_shapes
:
÷•d
т
4Loss/Adam/update_Embedding_layer/Variable/ScatterAdd
ScatterAddEmbedding_layer/Variable/Adam0Loss/Adam/update_Embedding_layer/Variable/Unique/Loss/Adam/update_Embedding_layer/Variable/mul_11^Loss/Adam/update_Embedding_layer/Variable/Assign*
T0*
use_locking( *
Tindices0*+
_class!
loc:@Embedding_layer/Variable* 
_output_shapes
:
÷•d
С
/Loss/Adam/update_Embedding_layer/Variable/mul_3Mul<Loss/Adam/update_Embedding_layer/Variable/UnsortedSegmentSum<Loss/Adam/update_Embedding_layer/Variable/UnsortedSegmentSum*
T0*+
_class!
loc:@Embedding_layer/Variable*'
_output_shapes
:€€€€€€€€€d
£
1Loss/Adam/update_Embedding_layer/Variable/sub_3/xConst*
valueB
 *  А?*
dtype0*+
_class!
loc:@Embedding_layer/Variable*
_output_shapes
: 
»
/Loss/Adam/update_Embedding_layer/Variable/sub_3Sub1Loss/Adam/update_Embedding_layer/Variable/sub_3/xLoss/Adam/beta2*
T0*+
_class!
loc:@Embedding_layer/Variable*
_output_shapes
: 
ч
/Loss/Adam/update_Embedding_layer/Variable/mul_4Mul/Loss/Adam/update_Embedding_layer/Variable/mul_3/Loss/Adam/update_Embedding_layer/Variable/sub_3*
T0*+
_class!
loc:@Embedding_layer/Variable*'
_output_shapes
:€€€€€€€€€d
≈
/Loss/Adam/update_Embedding_layer/Variable/mul_5Mul$Embedding_layer/Variable/Adam_1/readLoss/Adam/beta2*
T0*+
_class!
loc:@Embedding_layer/Variable* 
_output_shapes
:
÷•d
П
2Loss/Adam/update_Embedding_layer/Variable/Assign_1AssignEmbedding_layer/Variable/Adam_1/Loss/Adam/update_Embedding_layer/Variable/mul_5*
T0*
use_locking( *
validate_shape(*+
_class!
loc:@Embedding_layer/Variable* 
_output_shapes
:
÷•d
ш
6Loss/Adam/update_Embedding_layer/Variable/ScatterAdd_1
ScatterAddEmbedding_layer/Variable/Adam_10Loss/Adam/update_Embedding_layer/Variable/Unique/Loss/Adam/update_Embedding_layer/Variable/mul_43^Loss/Adam/update_Embedding_layer/Variable/Assign_1*
T0*
use_locking( *
Tindices0*+
_class!
loc:@Embedding_layer/Variable* 
_output_shapes
:
÷•d
»
0Loss/Adam/update_Embedding_layer/Variable/Sqrt_1Sqrt6Loss/Adam/update_Embedding_layer/Variable/ScatterAdd_1*
T0*+
_class!
loc:@Embedding_layer/Variable* 
_output_shapes
:
÷•d
ч
/Loss/Adam/update_Embedding_layer/Variable/mul_6Mul1Loss/Adam/update_Embedding_layer/Variable/truediv4Loss/Adam/update_Embedding_layer/Variable/ScatterAdd*
T0*+
_class!
loc:@Embedding_layer/Variable* 
_output_shapes
:
÷•d
—
-Loss/Adam/update_Embedding_layer/Variable/addAdd0Loss/Adam/update_Embedding_layer/Variable/Sqrt_1Loss/Adam/epsilon*
T0*+
_class!
loc:@Embedding_layer/Variable* 
_output_shapes
:
÷•d
ц
3Loss/Adam/update_Embedding_layer/Variable/truediv_1RealDiv/Loss/Adam/update_Embedding_layer/Variable/mul_6-Loss/Adam/update_Embedding_layer/Variable/add*
T0*+
_class!
loc:@Embedding_layer/Variable* 
_output_shapes
:
÷•d
ъ
3Loss/Adam/update_Embedding_layer/Variable/AssignSub	AssignSubEmbedding_layer/Variable3Loss/Adam/update_Embedding_layer/Variable/truediv_1*
T0*
use_locking( *+
_class!
loc:@Embedding_layer/Variable* 
_output_shapes
:
÷•d
П
4Loss/Adam/update_Embedding_layer/Variable/group_depsNoOp4^Loss/Adam/update_Embedding_layer/Variable/AssignSub5^Loss/Adam/update_Embedding_layer/Variable/ScatterAdd7^Loss/Adam/update_Embedding_layer/Variable/ScatterAdd_1*+
_class!
loc:@Embedding_layer/Variable
х
KLoss/Adam/update_rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/ApplyAdam	ApplyAdam0rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam7rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1Loss/beta1_power/readLoss/beta2_power/readLoss/Adam/learning_rateLoss/Adam/beta1Loss/Adam/beta2Loss/Adam/epsilonfLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/b_acc_3*
T0*
use_locking( *
use_nesterov( *C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel* 
_output_shapes
:
дА
з
ILoss/Adam/update_rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/ApplyAdam	ApplyAdam.rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias3rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1Loss/beta1_power/readLoss/beta2_power/readLoss/Adam/learning_rateLoss/Adam/beta1Loss/Adam/beta2Loss/Adam/epsilongLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_3*
T0*
use_locking( *
use_nesterov( *A
_class7
53loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
_output_shapes	
:А
х
KLoss/Adam/update_rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/ApplyAdam	ApplyAdam0rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel5rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam7rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1Loss/beta1_power/readLoss/beta2_power/readLoss/Adam/learning_rateLoss/Adam/beta1Loss/Adam/beta2Loss/Adam/epsilonfLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul/Enter_grad/b_acc_3*
T0*
use_locking( *
use_nesterov( *C
_class9
75loc:@rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel* 
_output_shapes
:
АА
з
ILoss/Adam/update_rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/ApplyAdam	ApplyAdam.rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias3rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam5rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1Loss/beta1_power/readLoss/beta2_power/readLoss/Adam/learning_rateLoss/Adam/beta1Loss/Adam/beta2Loss/Adam/epsilongLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_3*
T0*
use_locking( *
use_nesterov( *A
_class7
53loc:@rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
_output_shapes	
:А
…
0Loss/Adam/update_Output_layer/Variable/ApplyAdam	ApplyAdamOutput_layer/VariableOutput_layer/Variable/AdamOutput_layer/Variable/Adam_1Loss/beta1_power/readLoss/beta2_power/readLoss/Adam/learning_rateLoss/Adam/beta1Loss/Adam/beta2Loss/Adam/epsilonBLoss/gradients/Output_layer/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *(
_class
loc:@Output_layer/Variable*
_output_shapes
:	А
Ћ
2Loss/Adam/update_Output_layer/Variable_1/ApplyAdam	ApplyAdamOutput_layer/Variable_1Output_layer/Variable_1/AdamOutput_layer/Variable_1/Adam_1Loss/beta1_power/readLoss/beta2_power/readLoss/Adam/learning_rateLoss/Adam/beta1Loss/Adam/beta2Loss/Adam/epsilon?Loss/gradients/Output_layer/add_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( **
_class 
loc:@Output_layer/Variable_1*
_output_shapes
:
Ё
Loss/Adam/mulMulLoss/beta1_power/readLoss/Adam/beta15^Loss/Adam/update_Embedding_layer/Variable/group_deps1^Loss/Adam/update_Output_layer/Variable/ApplyAdam3^Loss/Adam/update_Output_layer/Variable_1/ApplyAdamJ^Loss/Adam/update_rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/ApplyAdamL^Loss/Adam/update_rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/ApplyAdamJ^Loss/Adam/update_rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/ApplyAdamL^Loss/Adam/update_rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/ApplyAdam*
T0*+
_class!
loc:@Embedding_layer/Variable*
_output_shapes
: 
≤
Loss/Adam/AssignAssignLoss/beta1_powerLoss/Adam/mul*
T0*
use_locking( *
validate_shape(*+
_class!
loc:@Embedding_layer/Variable*
_output_shapes
: 
я
Loss/Adam/mul_1MulLoss/beta2_power/readLoss/Adam/beta25^Loss/Adam/update_Embedding_layer/Variable/group_deps1^Loss/Adam/update_Output_layer/Variable/ApplyAdam3^Loss/Adam/update_Output_layer/Variable_1/ApplyAdamJ^Loss/Adam/update_rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/ApplyAdamL^Loss/Adam/update_rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/ApplyAdamJ^Loss/Adam/update_rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/ApplyAdamL^Loss/Adam/update_rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/ApplyAdam*
T0*+
_class!
loc:@Embedding_layer/Variable*
_output_shapes
: 
ґ
Loss/Adam/Assign_1AssignLoss/beta2_powerLoss/Adam/mul_1*
T0*
use_locking( *
validate_shape(*+
_class!
loc:@Embedding_layer/Variable*
_output_shapes
: 
М
	Loss/AdamNoOp^Loss/Adam/Assign^Loss/Adam/Assign_15^Loss/Adam/update_Embedding_layer/Variable/group_deps1^Loss/Adam/update_Output_layer/Variable/ApplyAdam3^Loss/Adam/update_Output_layer/Variable_1/ApplyAdamJ^Loss/Adam/update_rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/ApplyAdamL^Loss/Adam/update_rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/ApplyAdamJ^Loss/Adam/update_rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/ApplyAdamL^Loss/Adam/update_rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/ApplyAdam
]
Accuracy/scoreSoftmaxOutput_layer/add*
T0*'
_output_shapes
:€€€€€€€€€
`
Accuracy/predictions/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
Э
Accuracy/predictionsArgMaxOutput_layer/addAccuracy/predictions/dimension*
output_type0	*
T0*

Tidx0*#
_output_shapes
:€€€€€€€€€
[
Accuracy/ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
У
Accuracy/ArgMaxArgMaxOutput_layer/addAccuracy/ArgMax/dimension*
output_type0	*
T0*

Tidx0*#
_output_shapes
:€€€€€€€€€
]
Accuracy/ArgMax_1/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
Ъ
Accuracy/ArgMax_1ArgMaxInput_Layer/label_yAccuracy/ArgMax_1/dimension*
output_type0	*
T0*

Tidx0*#
_output_shapes
:€€€€€€€€€
i
Accuracy/EqualEqualAccuracy/ArgMaxAccuracy/ArgMax_1*
T0	*#
_output_shapes
:€€€€€€€€€
b
Accuracy/CastCastAccuracy/Equal*

DstT0*

SrcT0
*#
_output_shapes
:€€€€€€€€€
X
Accuracy/ConstConst*
valueB: *
dtype0*
_output_shapes
:
r
Accuracy/MeanMeanAccuracy/CastAccuracy/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
Д
save/SaveV2/tensor_namesConst*Ј
value≠B™BEmbedding_layer/VariableBEmbedding_layer/Variable/AdamBEmbedding_layer/Variable/Adam_1BLoss/beta1_powerBLoss/beta2_powerBOutput_layer/VariableBOutput_layer/Variable/AdamBOutput_layer/Variable/Adam_1BOutput_layer/Variable_1BOutput_layer/Variable_1/AdamBOutput_layer/Variable_1/Adam_1B.rnn/multi_rnn_cell/cell_0/basic_lstm_cell/biasB3rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/AdamB5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1B0rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernelB5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/AdamB7rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1B.rnn/multi_rnn_cell/cell_1/basic_lstm_cell/biasB3rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/AdamB5rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1B0rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernelB5rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/AdamB7rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1*
dtype0*
_output_shapes
:
С
save/SaveV2/shape_and_slicesConst*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Ґ
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesEmbedding_layer/VariableEmbedding_layer/Variable/AdamEmbedding_layer/Variable/Adam_1Loss/beta1_powerLoss/beta2_powerOutput_layer/VariableOutput_layer/Variable/AdamOutput_layer/Variable/Adam_1Output_layer/Variable_1Output_layer/Variable_1/AdamOutput_layer/Variable_1/Adam_1.rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias3rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_10rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam7rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1.rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias3rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam5rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_10rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel5rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam7rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1*%
dtypes
2
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
Ц
save/RestoreV2/tensor_namesConst"/device:CPU:0*Ј
value≠B™BEmbedding_layer/VariableBEmbedding_layer/Variable/AdamBEmbedding_layer/Variable/Adam_1BLoss/beta1_powerBLoss/beta2_powerBOutput_layer/VariableBOutput_layer/Variable/AdamBOutput_layer/Variable/Adam_1BOutput_layer/Variable_1BOutput_layer/Variable_1/AdamBOutput_layer/Variable_1/Adam_1B.rnn/multi_rnn_cell/cell_0/basic_lstm_cell/biasB3rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/AdamB5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1B0rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernelB5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/AdamB7rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1B.rnn/multi_rnn_cell/cell_1/basic_lstm_cell/biasB3rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/AdamB5rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1B0rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernelB5rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/AdamB7rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1*
dtype0*
_output_shapes
:
£
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Н
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*%
dtypes
2*p
_output_shapes^
\:::::::::::::::::::::::
ј
save/AssignAssignEmbedding_layer/Variablesave/RestoreV2*
T0*
use_locking(*
validate_shape(*+
_class!
loc:@Embedding_layer/Variable* 
_output_shapes
:
÷•d
…
save/Assign_1AssignEmbedding_layer/Variable/Adamsave/RestoreV2:1*
T0*
use_locking(*
validate_shape(*+
_class!
loc:@Embedding_layer/Variable* 
_output_shapes
:
÷•d
Ћ
save/Assign_2AssignEmbedding_layer/Variable/Adam_1save/RestoreV2:2*
T0*
use_locking(*
validate_shape(*+
_class!
loc:@Embedding_layer/Variable* 
_output_shapes
:
÷•d
≤
save/Assign_3AssignLoss/beta1_powersave/RestoreV2:3*
T0*
use_locking(*
validate_shape(*+
_class!
loc:@Embedding_layer/Variable*
_output_shapes
: 
≤
save/Assign_4AssignLoss/beta2_powersave/RestoreV2:4*
T0*
use_locking(*
validate_shape(*+
_class!
loc:@Embedding_layer/Variable*
_output_shapes
: 
љ
save/Assign_5AssignOutput_layer/Variablesave/RestoreV2:5*
T0*
use_locking(*
validate_shape(*(
_class
loc:@Output_layer/Variable*
_output_shapes
:	А
¬
save/Assign_6AssignOutput_layer/Variable/Adamsave/RestoreV2:6*
T0*
use_locking(*
validate_shape(*(
_class
loc:@Output_layer/Variable*
_output_shapes
:	А
ƒ
save/Assign_7AssignOutput_layer/Variable/Adam_1save/RestoreV2:7*
T0*
use_locking(*
validate_shape(*(
_class
loc:@Output_layer/Variable*
_output_shapes
:	А
Љ
save/Assign_8AssignOutput_layer/Variable_1save/RestoreV2:8*
T0*
use_locking(*
validate_shape(**
_class 
loc:@Output_layer/Variable_1*
_output_shapes
:
Ѕ
save/Assign_9AssignOutput_layer/Variable_1/Adamsave/RestoreV2:9*
T0*
use_locking(*
validate_shape(**
_class 
loc:@Output_layer/Variable_1*
_output_shapes
:
≈
save/Assign_10AssignOutput_layer/Variable_1/Adam_1save/RestoreV2:10*
T0*
use_locking(*
validate_shape(**
_class 
loc:@Output_layer/Variable_1*
_output_shapes
:
н
save/Assign_11Assign.rnn/multi_rnn_cell/cell_0/basic_lstm_cell/biassave/RestoreV2:11*
T0*
use_locking(*
validate_shape(*A
_class7
53loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
_output_shapes	
:А
т
save/Assign_12Assign3rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adamsave/RestoreV2:12*
T0*
use_locking(*
validate_shape(*A
_class7
53loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
_output_shapes	
:А
ф
save/Assign_13Assign5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1save/RestoreV2:13*
T0*
use_locking(*
validate_shape(*A
_class7
53loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
_output_shapes	
:А
ц
save/Assign_14Assign0rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernelsave/RestoreV2:14*
T0*
use_locking(*
validate_shape(*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel* 
_output_shapes
:
дА
ы
save/Assign_15Assign5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adamsave/RestoreV2:15*
T0*
use_locking(*
validate_shape(*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel* 
_output_shapes
:
дА
э
save/Assign_16Assign7rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1save/RestoreV2:16*
T0*
use_locking(*
validate_shape(*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel* 
_output_shapes
:
дА
н
save/Assign_17Assign.rnn/multi_rnn_cell/cell_1/basic_lstm_cell/biassave/RestoreV2:17*
T0*
use_locking(*
validate_shape(*A
_class7
53loc:@rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
_output_shapes	
:А
т
save/Assign_18Assign3rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adamsave/RestoreV2:18*
T0*
use_locking(*
validate_shape(*A
_class7
53loc:@rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
_output_shapes	
:А
ф
save/Assign_19Assign5rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1save/RestoreV2:19*
T0*
use_locking(*
validate_shape(*A
_class7
53loc:@rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
_output_shapes	
:А
ц
save/Assign_20Assign0rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernelsave/RestoreV2:20*
T0*
use_locking(*
validate_shape(*C
_class9
75loc:@rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel* 
_output_shapes
:
АА
ы
save/Assign_21Assign5rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adamsave/RestoreV2:21*
T0*
use_locking(*
validate_shape(*C
_class9
75loc:@rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel* 
_output_shapes
:
АА
э
save/Assign_22Assign7rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1save/RestoreV2:22*
T0*
use_locking(*
validate_shape(*C
_class9
75loc:@rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel* 
_output_shapes
:
АА
У
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
ж
initNoOp%^Embedding_layer/Variable/Adam/Assign'^Embedding_layer/Variable/Adam_1/Assign ^Embedding_layer/Variable/Assign^Loss/beta1_power/Assign^Loss/beta2_power/Assign"^Output_layer/Variable/Adam/Assign$^Output_layer/Variable/Adam_1/Assign^Output_layer/Variable/Assign$^Output_layer/Variable_1/Adam/Assign&^Output_layer/Variable_1/Adam_1/Assign^Output_layer/Variable_1/Assign;^rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam/Assign=^rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1/Assign6^rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Assign=^rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/Assign?^rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/Assign8^rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Assign;^rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam/Assign=^rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1/Assign6^rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Assign=^rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam/Assign?^rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1/Assign8^rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Assign
R
save_1/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
Ж
save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_5a4d219b8ddf4097a76b773920bec40e/part*
dtype0*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
N*
	separator *
_output_shapes
: 
S
save_1/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
m
save_1/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
Ф
save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards"/device:CPU:0*
_output_shapes
: 
Х
save_1/SaveV2/tensor_namesConst"/device:CPU:0*Ј
value≠B™BEmbedding_layer/VariableBEmbedding_layer/Variable/AdamBEmbedding_layer/Variable/Adam_1BLoss/beta1_powerBLoss/beta2_powerBOutput_layer/VariableBOutput_layer/Variable/AdamBOutput_layer/Variable/Adam_1BOutput_layer/Variable_1BOutput_layer/Variable_1/AdamBOutput_layer/Variable_1/Adam_1B.rnn/multi_rnn_cell/cell_0/basic_lstm_cell/biasB3rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/AdamB5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1B0rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernelB5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/AdamB7rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1B.rnn/multi_rnn_cell/cell_1/basic_lstm_cell/biasB3rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/AdamB5rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1B0rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernelB5rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/AdamB7rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1*
dtype0*
_output_shapes
:
Ґ
save_1/SaveV2/shape_and_slicesConst"/device:CPU:0*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
√
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesEmbedding_layer/VariableEmbedding_layer/Variable/AdamEmbedding_layer/Variable/Adam_1Loss/beta1_powerLoss/beta2_powerOutput_layer/VariableOutput_layer/Variable/AdamOutput_layer/Variable/Adam_1Output_layer/Variable_1Output_layer/Variable_1/AdamOutput_layer/Variable_1/Adam_1.rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias3rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_10rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam7rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1.rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias3rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam5rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_10rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel5rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam7rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1"/device:CPU:0*%
dtypes
2
®
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2"/device:CPU:0*
T0*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: 
≤
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency"/device:CPU:0*

axis *
T0*
N*
_output_shapes
:
Т
save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const"/device:CPU:0*
delete_old_dirs(
С
save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
Ш
save_1/RestoreV2/tensor_namesConst"/device:CPU:0*Ј
value≠B™BEmbedding_layer/VariableBEmbedding_layer/Variable/AdamBEmbedding_layer/Variable/Adam_1BLoss/beta1_powerBLoss/beta2_powerBOutput_layer/VariableBOutput_layer/Variable/AdamBOutput_layer/Variable/Adam_1BOutput_layer/Variable_1BOutput_layer/Variable_1/AdamBOutput_layer/Variable_1/Adam_1B.rnn/multi_rnn_cell/cell_0/basic_lstm_cell/biasB3rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/AdamB5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1B0rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernelB5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/AdamB7rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1B.rnn/multi_rnn_cell/cell_1/basic_lstm_cell/biasB3rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/AdamB5rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1B0rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernelB5rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/AdamB7rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1*
dtype0*
_output_shapes
:
•
!save_1/RestoreV2/shape_and_slicesConst"/device:CPU:0*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Х
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices"/device:CPU:0*%
dtypes
2*p
_output_shapes^
\:::::::::::::::::::::::
ƒ
save_1/AssignAssignEmbedding_layer/Variablesave_1/RestoreV2*
T0*
use_locking(*
validate_shape(*+
_class!
loc:@Embedding_layer/Variable* 
_output_shapes
:
÷•d
Ќ
save_1/Assign_1AssignEmbedding_layer/Variable/Adamsave_1/RestoreV2:1*
T0*
use_locking(*
validate_shape(*+
_class!
loc:@Embedding_layer/Variable* 
_output_shapes
:
÷•d
ѕ
save_1/Assign_2AssignEmbedding_layer/Variable/Adam_1save_1/RestoreV2:2*
T0*
use_locking(*
validate_shape(*+
_class!
loc:@Embedding_layer/Variable* 
_output_shapes
:
÷•d
ґ
save_1/Assign_3AssignLoss/beta1_powersave_1/RestoreV2:3*
T0*
use_locking(*
validate_shape(*+
_class!
loc:@Embedding_layer/Variable*
_output_shapes
: 
ґ
save_1/Assign_4AssignLoss/beta2_powersave_1/RestoreV2:4*
T0*
use_locking(*
validate_shape(*+
_class!
loc:@Embedding_layer/Variable*
_output_shapes
: 
Ѕ
save_1/Assign_5AssignOutput_layer/Variablesave_1/RestoreV2:5*
T0*
use_locking(*
validate_shape(*(
_class
loc:@Output_layer/Variable*
_output_shapes
:	А
∆
save_1/Assign_6AssignOutput_layer/Variable/Adamsave_1/RestoreV2:6*
T0*
use_locking(*
validate_shape(*(
_class
loc:@Output_layer/Variable*
_output_shapes
:	А
»
save_1/Assign_7AssignOutput_layer/Variable/Adam_1save_1/RestoreV2:7*
T0*
use_locking(*
validate_shape(*(
_class
loc:@Output_layer/Variable*
_output_shapes
:	А
ј
save_1/Assign_8AssignOutput_layer/Variable_1save_1/RestoreV2:8*
T0*
use_locking(*
validate_shape(**
_class 
loc:@Output_layer/Variable_1*
_output_shapes
:
≈
save_1/Assign_9AssignOutput_layer/Variable_1/Adamsave_1/RestoreV2:9*
T0*
use_locking(*
validate_shape(**
_class 
loc:@Output_layer/Variable_1*
_output_shapes
:
…
save_1/Assign_10AssignOutput_layer/Variable_1/Adam_1save_1/RestoreV2:10*
T0*
use_locking(*
validate_shape(**
_class 
loc:@Output_layer/Variable_1*
_output_shapes
:
с
save_1/Assign_11Assign.rnn/multi_rnn_cell/cell_0/basic_lstm_cell/biassave_1/RestoreV2:11*
T0*
use_locking(*
validate_shape(*A
_class7
53loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
_output_shapes	
:А
ц
save_1/Assign_12Assign3rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adamsave_1/RestoreV2:12*
T0*
use_locking(*
validate_shape(*A
_class7
53loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
_output_shapes	
:А
ш
save_1/Assign_13Assign5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1save_1/RestoreV2:13*
T0*
use_locking(*
validate_shape(*A
_class7
53loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
_output_shapes	
:А
ъ
save_1/Assign_14Assign0rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernelsave_1/RestoreV2:14*
T0*
use_locking(*
validate_shape(*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel* 
_output_shapes
:
дА
€
save_1/Assign_15Assign5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adamsave_1/RestoreV2:15*
T0*
use_locking(*
validate_shape(*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel* 
_output_shapes
:
дА
Б
save_1/Assign_16Assign7rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1save_1/RestoreV2:16*
T0*
use_locking(*
validate_shape(*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel* 
_output_shapes
:
дА
с
save_1/Assign_17Assign.rnn/multi_rnn_cell/cell_1/basic_lstm_cell/biassave_1/RestoreV2:17*
T0*
use_locking(*
validate_shape(*A
_class7
53loc:@rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
_output_shapes	
:А
ц
save_1/Assign_18Assign3rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adamsave_1/RestoreV2:18*
T0*
use_locking(*
validate_shape(*A
_class7
53loc:@rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
_output_shapes	
:А
ш
save_1/Assign_19Assign5rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1save_1/RestoreV2:19*
T0*
use_locking(*
validate_shape(*A
_class7
53loc:@rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
_output_shapes	
:А
ъ
save_1/Assign_20Assign0rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernelsave_1/RestoreV2:20*
T0*
use_locking(*
validate_shape(*C
_class9
75loc:@rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel* 
_output_shapes
:
АА
€
save_1/Assign_21Assign5rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adamsave_1/RestoreV2:21*
T0*
use_locking(*
validate_shape(*C
_class9
75loc:@rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel* 
_output_shapes
:
АА
Б
save_1/Assign_22Assign7rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1save_1/RestoreV2:22*
T0*
use_locking(*
validate_shape(*C
_class9
75loc:@rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel* 
_output_shapes
:
АА
≈
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_2^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9
1
save_1/restore_allNoOp^save_1/restore_shard"B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"ћ

trainable_variablesі
±


Embedding_layer/Variable:0Embedding_layer/Variable/AssignEmbedding_layer/Variable/read:02Embedding_layer/random_normal:0
х
2rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel:07rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Assign7rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/read:02Mrnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform:0
д
0rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias:05rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Assign5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/read:02Brnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Initializer/zeros:0
х
2rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel:07rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Assign7rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/read:02Mrnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Initializer/random_uniform:0
д
0rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias:05rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Assign5rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/read:02Brnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Initializer/zeros:0
s
Output_layer/Variable:0Output_layer/Variable/AssignOutput_layer/Variable/read:02Output_layer/random_normal:0
{
Output_layer/Variable_1:0Output_layer/Variable_1/AssignOutput_layer/Variable_1/read:02Output_layer/random_normal_1:0"ш#
	variablesк#з#

Embedding_layer/Variable:0Embedding_layer/Variable/AssignEmbedding_layer/Variable/read:02Embedding_layer/random_normal:0
х
2rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel:07rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Assign7rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/read:02Mrnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform:0
д
0rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias:05rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Assign5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/read:02Brnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Initializer/zeros:0
х
2rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel:07rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Assign7rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/read:02Mrnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Initializer/random_uniform:0
д
0rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias:05rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Assign5rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/read:02Brnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Initializer/zeros:0
s
Output_layer/Variable:0Output_layer/Variable/AssignOutput_layer/Variable/read:02Output_layer/random_normal:0
{
Output_layer/Variable_1:0Output_layer/Variable_1/AssignOutput_layer/Variable_1/read:02Output_layer/random_normal_1:0
h
Loss/beta1_power:0Loss/beta1_power/AssignLoss/beta1_power/read:02 Loss/beta1_power/initial_value:0
h
Loss/beta2_power:0Loss/beta2_power/AssignLoss/beta2_power/read:02 Loss/beta2_power/initial_value:0
†
Embedding_layer/Variable/Adam:0$Embedding_layer/Variable/Adam/Assign$Embedding_layer/Variable/Adam/read:021Embedding_layer/Variable/Adam/Initializer/zeros:0
®
!Embedding_layer/Variable/Adam_1:0&Embedding_layer/Variable/Adam_1/Assign&Embedding_layer/Variable/Adam_1/read:023Embedding_layer/Variable/Adam_1/Initializer/zeros:0
А
7rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam:0<rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/Assign<rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/read:02Irnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/Initializer/zeros:0
И
9rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1:0>rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/Assign>rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/read:02Krnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/Initializer/zeros:0
ш
5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam:0:rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam/Assign:rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam/read:02Grnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam/Initializer/zeros:0
А
7rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1:0<rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1/Assign<rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1/read:02Irnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1/Initializer/zeros:0
А
7rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam:0<rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam/Assign<rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam/read:02Irnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam/Initializer/zeros:0
И
9rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1:0>rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1/Assign>rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1/read:02Krnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1/Initializer/zeros:0
ш
5rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam:0:rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam/Assign:rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam/read:02Grnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam/Initializer/zeros:0
А
7rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1:0<rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1/Assign<rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1/read:02Irnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1/Initializer/zeros:0
Ф
Output_layer/Variable/Adam:0!Output_layer/Variable/Adam/Assign!Output_layer/Variable/Adam/read:02.Output_layer/Variable/Adam/Initializer/zeros:0
Ь
Output_layer/Variable/Adam_1:0#Output_layer/Variable/Adam_1/Assign#Output_layer/Variable/Adam_1/read:020Output_layer/Variable/Adam_1/Initializer/zeros:0
Ь
Output_layer/Variable_1/Adam:0#Output_layer/Variable_1/Adam/Assign#Output_layer/Variable_1/Adam/read:020Output_layer/Variable_1/Adam/Initializer/zeros:0
§
 Output_layer/Variable_1/Adam_1:0%Output_layer/Variable_1/Adam_1/Assign%Output_layer/Variable_1/Adam_1/read:022Output_layer/Variable_1/Adam_1/Initializer/zeros:0"щр
while_contextжрвр
ёр
!RNN_layer/rnn/while/while_context *RNN_layer/rnn/while/LoopCond:02RNN_layer/rnn/while/Merge:0:RNN_layer/rnn/while/Identity:0BRNN_layer/rnn/while/Exit:0BRNN_layer/rnn/while/Exit_1:0BRNN_layer/rnn/while/Exit_2:0BRNN_layer/rnn/while/Exit_3:0BRNN_layer/rnn/while/Exit_4:0BRNN_layer/rnn/while/Exit_5:0BRNN_layer/rnn/while/Exit_6:0BLoss/gradients/f_count_2:0J÷л
Loss/gradients/Add/y:0
Loss/gradients/Add:0
Loss/gradients/Merge:0
Loss/gradients/Merge:1
Loss/gradients/NextIteration:0
eLoss/gradients/RNN_layer/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Enter:0
kLoss/gradients/RNN_layer/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2:0
eLoss/gradients/RNN_layer/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc:0
uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Enter:0
wLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Enter_1:0
{Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPushV2:0
}Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPushV2_1:0
uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_acc:0
wLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_acc_1:0
_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/Shape:0
aLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/Shape_1:0
sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/Enter:0
yLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/StackPushV2:0
sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/f_acc:0
]Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Shape:0
iLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/Enter:0
oLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/StackPushV2:0
iLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/f_acc:0
uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Enter:0
wLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Enter_1:0
{Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPushV2:0
}Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPushV2_1:0
uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_acc:0
wLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_acc_1:0
cLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/Enter:0
iLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/StackPushV2:0
cLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/f_acc:0
eLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/Enter:0
kLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/StackPushV2:0
eLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/f_acc:0
_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Shape:0
aLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Shape_1:0
uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Enter:0
wLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Enter_1:0
{Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPushV2:0
}Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPushV2_1:0
uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_acc:0
wLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_acc_1:0
cLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/Enter:0
iLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/StackPushV2:0
cLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/f_acc:0
eLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/Enter:0
kLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/StackPushV2:0
eLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/f_acc:0
_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Shape:0
aLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Shape_1:0
sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Enter:0
uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Enter_1:0
yLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPushV2:0
{Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPushV2_1:0
sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_acc:0
uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_acc_1:0
aLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/Enter:0
gLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/StackPushV2:0
aLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/f_acc:0
cLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1/Enter:0
iLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1/StackPushV2:0
cLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1/f_acc:0
]Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Shape:0
_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Shape_1:0
`Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/Shape:0
gLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/Enter:0
iLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/Enter_1:0
mLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/StackPushV2:0
oLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/StackPushV2_1:0
gLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/f_acc:0
iLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/f_acc_1:0
uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Enter:0
wLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Enter_1:0
{Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPushV2:0
}Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPushV2_1:0
uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_acc:0
wLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_acc_1:0
_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/Shape:0
aLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/Shape_1:0
sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/Enter:0
yLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/StackPushV2:0
sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/f_acc:0
]Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/Shape:0
iLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1/Enter:0
oLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1/StackPushV2:0
iLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1/f_acc:0
uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Enter:0
wLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Enter_1:0
{Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPushV2:0
}Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPushV2_1:0
uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_acc:0
wLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_acc_1:0
cLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/Enter:0
iLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/StackPushV2:0
cLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/f_acc:0
eLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/Enter:0
kLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/StackPushV2:0
eLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/f_acc:0
_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Shape:0
aLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Shape_1:0
uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Enter:0
wLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Enter_1:0
{Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPushV2:0
}Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPushV2_1:0
uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_acc:0
wLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_acc_1:0
cLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/Enter:0
iLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/StackPushV2:0
cLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/f_acc:0
eLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/Enter:0
kLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/StackPushV2:0
eLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/f_acc:0
_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Shape:0
aLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Shape_1:0
sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Enter:0
uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Enter_1:0
yLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPushV2:0
{Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPushV2_1:0
sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_acc:0
uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_acc_1:0
aLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/Enter:0
gLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/StackPushV2:0
aLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/f_acc:0
cLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul_1/Enter:0
iLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul_1/StackPushV2:0
cLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul_1/f_acc:0
]Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Shape:0
_Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Shape_1:0
`Loss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/Shape:0
gLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/Enter:0
iLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/Enter_1:0
mLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/StackPushV2:0
oLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/StackPushV2_1:0
gLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/f_acc:0
iLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/f_acc_1:0
Loss/gradients/Switch:0
Loss/gradients/Switch:1
Loss/gradients/f_count:0
Loss/gradients/f_count_1:0
Loss/gradients/f_count_2:0
RNN_layer/rnn/Minimum:0
RNN_layer/rnn/TensorArray:0
JRNN_layer/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
RNN_layer/rnn/TensorArray_1:0
RNN_layer/rnn/strided_slice_1:0
RNN_layer/rnn/while/Enter:0
RNN_layer/rnn/while/Enter_1:0
RNN_layer/rnn/while/Enter_2:0
RNN_layer/rnn/while/Enter_3:0
RNN_layer/rnn/while/Enter_4:0
RNN_layer/rnn/while/Enter_5:0
RNN_layer/rnn/while/Enter_6:0
RNN_layer/rnn/while/Exit:0
RNN_layer/rnn/while/Exit_1:0
RNN_layer/rnn/while/Exit_2:0
RNN_layer/rnn/while/Exit_3:0
RNN_layer/rnn/while/Exit_4:0
RNN_layer/rnn/while/Exit_5:0
RNN_layer/rnn/while/Exit_6:0
RNN_layer/rnn/while/Identity:0
 RNN_layer/rnn/while/Identity_1:0
 RNN_layer/rnn/while/Identity_2:0
 RNN_layer/rnn/while/Identity_3:0
 RNN_layer/rnn/while/Identity_4:0
 RNN_layer/rnn/while/Identity_5:0
 RNN_layer/rnn/while/Identity_6:0
 RNN_layer/rnn/while/Less/Enter:0
RNN_layer/rnn/while/Less:0
"RNN_layer/rnn/while/Less_1/Enter:0
RNN_layer/rnn/while/Less_1:0
 RNN_layer/rnn/while/LogicalAnd:0
RNN_layer/rnn/while/LoopCond:0
RNN_layer/rnn/while/Merge:0
RNN_layer/rnn/while/Merge:1
RNN_layer/rnn/while/Merge_1:0
RNN_layer/rnn/while/Merge_1:1
RNN_layer/rnn/while/Merge_2:0
RNN_layer/rnn/while/Merge_2:1
RNN_layer/rnn/while/Merge_3:0
RNN_layer/rnn/while/Merge_3:1
RNN_layer/rnn/while/Merge_4:0
RNN_layer/rnn/while/Merge_4:1
RNN_layer/rnn/while/Merge_5:0
RNN_layer/rnn/while/Merge_5:1
RNN_layer/rnn/while/Merge_6:0
RNN_layer/rnn/while/Merge_6:1
#RNN_layer/rnn/while/NextIteration:0
%RNN_layer/rnn/while/NextIteration_1:0
%RNN_layer/rnn/while/NextIteration_2:0
%RNN_layer/rnn/while/NextIteration_3:0
%RNN_layer/rnn/while/NextIteration_4:0
%RNN_layer/rnn/while/NextIteration_5:0
%RNN_layer/rnn/while/NextIteration_6:0
RNN_layer/rnn/while/Switch:0
RNN_layer/rnn/while/Switch:1
RNN_layer/rnn/while/Switch_1:0
RNN_layer/rnn/while/Switch_1:1
RNN_layer/rnn/while/Switch_2:0
RNN_layer/rnn/while/Switch_2:1
RNN_layer/rnn/while/Switch_3:0
RNN_layer/rnn/while/Switch_3:1
RNN_layer/rnn/while/Switch_4:0
RNN_layer/rnn/while/Switch_4:1
RNN_layer/rnn/while/Switch_5:0
RNN_layer/rnn/while/Switch_5:1
RNN_layer/rnn/while/Switch_6:0
RNN_layer/rnn/while/Switch_6:1
-RNN_layer/rnn/while/TensorArrayReadV3/Enter:0
/RNN_layer/rnn/while/TensorArrayReadV3/Enter_1:0
'RNN_layer/rnn/while/TensorArrayReadV3:0
?RNN_layer/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0
9RNN_layer/rnn/while/TensorArrayWrite/TensorArrayWriteV3:0
RNN_layer/rnn/while/add/y:0
RNN_layer/rnn/while/add:0
RNN_layer/rnn/while/add_1/y:0
RNN_layer/rnn/while/add_1:0
CRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add:0
ERNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1:0
MRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter:0
GRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd:0
ERNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Const:0
GRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Const_1:0
GRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Const_2:0
LRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter:0
FRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul:0
CRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul:0
ERNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1:0
ERNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2:0
GRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid:0
IRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_1:0
IRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_2:0
DRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh:0
FRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_1:0
KRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat/axis:0
FRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat:0
ERNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split:0
ERNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split:1
ERNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split:2
ERNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split:3
CRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add:0
ERNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1:0
MRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd/Enter:0
GRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd:0
ERNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Const:0
GRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Const_1:0
GRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Const_2:0
LRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul/Enter:0
FRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul:0
CRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul:0
ERNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1:0
ERNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2:0
GRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid:0
IRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_1:0
IRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_2:0
DRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Tanh:0
FRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Tanh_1:0
KRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat/axis:0
FRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat:0
ERNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/split:0
ERNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/split:1
ERNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/split:2
ERNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/split:3
5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/read:0
7rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/read:0
5rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/read:0
7rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/read:0C
RNN_layer/rnn/strided_slice_1:0 RNN_layer/rnn/while/Less/Enter:0=
RNN_layer/rnn/Minimum:0"RNN_layer/rnn/while/Less_1/Enter:0N
RNN_layer/rnn/TensorArray_1:0-RNN_layer/rnn/while/TensorArrayReadV3/Enter:0}
JRNN_layer/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0/RNN_layer/rnn/while/TensorArrayReadV3/Enter_1:0З
7rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/read:0LRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter:0Ж
5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/read:0MRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter:0З
7rnn/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/read:0LRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul/Enter:0Ж
5rnn/multi_rnn_cell/cell_1/basic_lstm_cell/bias/read:0MRNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd/Enter:0^
RNN_layer/rnn/TensorArray:0?RNN_layer/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0ќ
eLoss/gradients/RNN_layer/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc:0eLoss/gradients/RNN_layer/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Enter:0о
uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_acc:0uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Enter:0т
wLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_acc_1:0wLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Enter_1:0 
cLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/f_acc:0cLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/Enter:0ќ
eLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/f_acc:0eLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/Enter:0о
uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_acc:0uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Enter:0т
wLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_acc_1:0wLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Enter_1:0к
sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_acc:0sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Enter:0о
uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_acc_1:0uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Enter_1:0∆
aLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/f_acc:0aLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/Enter:0 
cLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul_1/f_acc:0cLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul_1/Enter:0о
uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_acc:0uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Enter:0т
wLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_acc_1:0wLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Enter_1:0 
cLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/f_acc:0cLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/Enter:0ќ
eLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/f_acc:0eLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/Enter:0к
sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/f_acc:0sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/Enter:0÷
iLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1/f_acc:0iLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1/Enter:0“
gLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/f_acc:0gLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/Enter:0÷
iLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/f_acc_1:0iLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/Enter_1:0о
uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_acc:0uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Enter:0т
wLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_acc_1:0wLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Enter_1:0 
cLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/f_acc:0cLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/Enter:0ќ
eLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/f_acc:0eLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/Enter:0о
uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_acc:0uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Enter:0т
wLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_acc_1:0wLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Enter_1:0к
sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_acc:0sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Enter:0о
uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_acc_1:0uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Enter_1:0∆
aLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/f_acc:0aLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/Enter:0 
cLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1/f_acc:0cLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1/Enter:0о
uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_acc:0uLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Enter:0т
wLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_acc_1:0wLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Enter_1:0 
cLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/f_acc:0cLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/Enter:0ќ
eLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/f_acc:0eLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/Enter:0к
sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/f_acc:0sLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/Enter:0÷
iLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/f_acc:0iLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/Enter:0“
gLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/f_acc:0gLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/Enter:0÷
iLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/f_acc_1:0iLoss/gradients/RNN_layer/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/Enter_1:0RRNN_layer/rnn/while/Enter:0RRNN_layer/rnn/while/Enter_1:0RRNN_layer/rnn/while/Enter_2:0RRNN_layer/rnn/while/Enter_3:0RRNN_layer/rnn/while/Enter_4:0RRNN_layer/rnn/while/Enter_5:0RRNN_layer/rnn/while/Enter_6:0RLoss/gradients/f_count_1:0ZRNN_layer/rnn/strided_slice_1:0"
train_op

	Loss/Adam