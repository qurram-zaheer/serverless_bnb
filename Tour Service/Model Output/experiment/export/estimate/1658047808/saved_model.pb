??
?8?7
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
2	??
?
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
?
AsString

input"T

output"
Ttype:
2		
"
	precisionint?????????"

scientificbool( "
shortestbool( "
widthint?????????"
fillstring 
x
Assign
ref"T?

value"T

output_ref"T?"	
Ttype"
validate_shapebool("
use_lockingbool(?
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
?
	DecodeCSV
records
record_defaults2OUT_TYPE
output2OUT_TYPE"%
OUT_TYPE
list(type)(0:	
2	"
field_delimstring,"
use_quote_delimbool("
na_valuestring "
select_cols	list(int)
 
B
Equal
x"T
y"T
z
"
Ttype:
2	
?
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
p
GatherNd
params"Tparams
indices"Tindices
output"Tparams"
Tparamstype"
Tindicestype:
2	
?
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
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
?
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?
V
HistogramSummary
tag
values"T
summary"
Ttype0:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
#
	LogicalOr
x

y

z
?
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype?
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype?
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
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
delete_old_dirsbool(?
=
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
E
NotEqual
x"T
y"T
z
"
Ttype:
2	
?
?
OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisint?????????"	
Ttype"
TItype0	:
2	
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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	?
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype?
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
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
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
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
?
SparseFillEmptyRows
indices	
values"T
dense_shape	
default_value"T
output_indices	
output_values"T
empty_row_indicator

reverse_index_map	"	
Ttype
h
SparseReshape
input_indices	
input_shape	
	new_shape	
output_indices	
output_shape	
z
SparseSegmentMean	
data"T
indices"Tidx
segment_ids
output"T"
Ttype:
2"
Tidxtype0:
2	
?
SparseSegmentSum	
data"T
indices"Tidx
segment_ids
output"T"
Ttype:
2	"
Tidxtype0:
2	
?
SparseToDense
sparse_indices"Tindices
output_shape"Tindices
sparse_values"T
default_value"T

dense"T"
validate_indicesbool("	
Ttype"
Tindicestype:
2	
?
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
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
G
StringToHashBucketFast	
input

output	"
num_bucketsint(0
:
Sub
x"T
y"T
z"T"
Ttype:
2	
?
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
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
?
TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	?
P
Unique
x"T
y"T
idx"out_idx"	
Ttype"
out_idxtype0:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape?
9
VarIsInitializedOp
resource
is_initialized
?
s

VariableV2
ref"dtype?"
shapeshape"
dtypetype"
	containerstring "
shared_namestring ?
E
Where

input"T	
index	"%
Ttype0
:
2	

&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.14.02v1.14.0-rc1-22-gaf24dc91b58??

global_step/Initializer/zerosConst*
value	B	 R *
_output_shapes
: *
dtype0	*
_class
loc:@global_step
k
global_step
VariableV2*
shape: *
_output_shapes
: *
_class
loc:@global_step*
dtype0	
?
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
T0	*
_class
loc:@global_step*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
_class
loc:@global_step*
T0	*
_output_shapes
: 
f
PlaceholderPlaceholder*#
_output_shapes
:?????????*
shape:?????????*
dtype0
e
DecodeCSV/record_defaults_0Const*
valueB: *
_output_shapes
:*
dtype0
e
DecodeCSV/record_defaults_1Const*
dtype0*
_output_shapes
:*
valueB: 
e
DecodeCSV/record_defaults_2Const*
dtype0*
valueB: *
_output_shapes
:
e
DecodeCSV/record_defaults_3Const*
dtype0*
_output_shapes
:*
valueB: 
e
DecodeCSV/record_defaults_4Const*
valueB: *
dtype0*
_output_shapes
:
?
	DecodeCSV	DecodeCSVPlaceholderDecodeCSV/record_defaults_0DecodeCSV/record_defaults_1DecodeCSV/record_defaults_2DecodeCSV/record_defaults_3DecodeCSV/record_defaults_4*_
_output_shapesM
K:?????????:?????????:?????????:?????????:?????????*
OUT_TYPE	
2
S
ConstConst*
dtype0*
_output_shapes
:*
valueBBnokey
?
PlaceholderWithDefaultPlaceholderWithDefaultConst*
dtype0*#
_output_shapes
:?????????*
shape:?????????
Y
ExpandDims/dimConst*
_output_shapes
: *
valueB :
?????????*
dtype0
r

ExpandDims
ExpandDimsPlaceholderWithDefaultExpandDims/dim*
T0*'
_output_shapes
:?????????
?
vdnn/input_from_feature_columns/input_layer/col_0_embedding/embedding_weights/part_0/Initializer/truncated_normal/shapeConst*
_output_shapes
:*
valueB"      *f
_class\
ZXloc:@dnn/input_from_feature_columns/input_layer/col_0_embedding/embedding_weights/part_0*
dtype0
?
udnn/input_from_feature_columns/input_layer/col_0_embedding/embedding_weights/part_0/Initializer/truncated_normal/meanConst*
dtype0*f
_class\
ZXloc:@dnn/input_from_feature_columns/input_layer/col_0_embedding/embedding_weights/part_0*
valueB
 *    *
_output_shapes
: 
?
wdnn/input_from_feature_columns/input_layer/col_0_embedding/embedding_weights/part_0/Initializer/truncated_normal/stddevConst*
valueB
 *  ??*
_output_shapes
: *f
_class\
ZXloc:@dnn/input_from_feature_columns/input_layer/col_0_embedding/embedding_weights/part_0*
dtype0
?
?dnn/input_from_feature_columns/input_layer/col_0_embedding/embedding_weights/part_0/Initializer/truncated_normal/TruncatedNormalTruncatedNormalvdnn/input_from_feature_columns/input_layer/col_0_embedding/embedding_weights/part_0/Initializer/truncated_normal/shape*
seed2*
_output_shapes

:*
dtype0*

seed*
T0*f
_class\
ZXloc:@dnn/input_from_feature_columns/input_layer/col_0_embedding/embedding_weights/part_0
?
tdnn/input_from_feature_columns/input_layer/col_0_embedding/embedding_weights/part_0/Initializer/truncated_normal/mulMul?dnn/input_from_feature_columns/input_layer/col_0_embedding/embedding_weights/part_0/Initializer/truncated_normal/TruncatedNormalwdnn/input_from_feature_columns/input_layer/col_0_embedding/embedding_weights/part_0/Initializer/truncated_normal/stddev*
_output_shapes

:*f
_class\
ZXloc:@dnn/input_from_feature_columns/input_layer/col_0_embedding/embedding_weights/part_0*
T0
?
pdnn/input_from_feature_columns/input_layer/col_0_embedding/embedding_weights/part_0/Initializer/truncated_normalAddtdnn/input_from_feature_columns/input_layer/col_0_embedding/embedding_weights/part_0/Initializer/truncated_normal/muludnn/input_from_feature_columns/input_layer/col_0_embedding/embedding_weights/part_0/Initializer/truncated_normal/mean*
T0*
_output_shapes

:*f
_class\
ZXloc:@dnn/input_from_feature_columns/input_layer/col_0_embedding/embedding_weights/part_0
?
Sdnn/input_from_feature_columns/input_layer/col_0_embedding/embedding_weights/part_0VarHandleOp*d
shared_nameUSdnn/input_from_feature_columns/input_layer/col_0_embedding/embedding_weights/part_0*
_output_shapes
: *f
_class\
ZXloc:@dnn/input_from_feature_columns/input_layer/col_0_embedding/embedding_weights/part_0*
dtype0*
shape
:
?
tdnn/input_from_feature_columns/input_layer/col_0_embedding/embedding_weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpSdnn/input_from_feature_columns/input_layer/col_0_embedding/embedding_weights/part_0*
_output_shapes
: 
?
Zdnn/input_from_feature_columns/input_layer/col_0_embedding/embedding_weights/part_0/AssignAssignVariableOpSdnn/input_from_feature_columns/input_layer/col_0_embedding/embedding_weights/part_0pdnn/input_from_feature_columns/input_layer/col_0_embedding/embedding_weights/part_0/Initializer/truncated_normal*f
_class\
ZXloc:@dnn/input_from_feature_columns/input_layer/col_0_embedding/embedding_weights/part_0*
dtype0
?
gdnn/input_from_feature_columns/input_layer/col_0_embedding/embedding_weights/part_0/Read/ReadVariableOpReadVariableOpSdnn/input_from_feature_columns/input_layer/col_0_embedding/embedding_weights/part_0*f
_class\
ZXloc:@dnn/input_from_feature_columns/input_layer/col_0_embedding/embedding_weights/part_0*
_output_shapes

:*
dtype0
?
vdnn/input_from_feature_columns/input_layer/col_1_embedding/embedding_weights/part_0/Initializer/truncated_normal/shapeConst*f
_class\
ZXloc:@dnn/input_from_feature_columns/input_layer/col_1_embedding/embedding_weights/part_0*
valueB"      *
dtype0*
_output_shapes
:
?
udnn/input_from_feature_columns/input_layer/col_1_embedding/embedding_weights/part_0/Initializer/truncated_normal/meanConst*
_output_shapes
: *f
_class\
ZXloc:@dnn/input_from_feature_columns/input_layer/col_1_embedding/embedding_weights/part_0*
dtype0*
valueB
 *    
?
wdnn/input_from_feature_columns/input_layer/col_1_embedding/embedding_weights/part_0/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *f
_class\
ZXloc:@dnn/input_from_feature_columns/input_layer/col_1_embedding/embedding_weights/part_0*
valueB
 *  ??
?
?dnn/input_from_feature_columns/input_layer/col_1_embedding/embedding_weights/part_0/Initializer/truncated_normal/TruncatedNormalTruncatedNormalvdnn/input_from_feature_columns/input_layer/col_1_embedding/embedding_weights/part_0/Initializer/truncated_normal/shape*
T0*
seed2*
_output_shapes

:*

seed*f
_class\
ZXloc:@dnn/input_from_feature_columns/input_layer/col_1_embedding/embedding_weights/part_0*
dtype0
?
tdnn/input_from_feature_columns/input_layer/col_1_embedding/embedding_weights/part_0/Initializer/truncated_normal/mulMul?dnn/input_from_feature_columns/input_layer/col_1_embedding/embedding_weights/part_0/Initializer/truncated_normal/TruncatedNormalwdnn/input_from_feature_columns/input_layer/col_1_embedding/embedding_weights/part_0/Initializer/truncated_normal/stddev*f
_class\
ZXloc:@dnn/input_from_feature_columns/input_layer/col_1_embedding/embedding_weights/part_0*
T0*
_output_shapes

:
?
pdnn/input_from_feature_columns/input_layer/col_1_embedding/embedding_weights/part_0/Initializer/truncated_normalAddtdnn/input_from_feature_columns/input_layer/col_1_embedding/embedding_weights/part_0/Initializer/truncated_normal/muludnn/input_from_feature_columns/input_layer/col_1_embedding/embedding_weights/part_0/Initializer/truncated_normal/mean*f
_class\
ZXloc:@dnn/input_from_feature_columns/input_layer/col_1_embedding/embedding_weights/part_0*
T0*
_output_shapes

:
?
Sdnn/input_from_feature_columns/input_layer/col_1_embedding/embedding_weights/part_0VarHandleOp*
shape
:*f
_class\
ZXloc:@dnn/input_from_feature_columns/input_layer/col_1_embedding/embedding_weights/part_0*d
shared_nameUSdnn/input_from_feature_columns/input_layer/col_1_embedding/embedding_weights/part_0*
_output_shapes
: *
dtype0
?
tdnn/input_from_feature_columns/input_layer/col_1_embedding/embedding_weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpSdnn/input_from_feature_columns/input_layer/col_1_embedding/embedding_weights/part_0*
_output_shapes
: 
?
Zdnn/input_from_feature_columns/input_layer/col_1_embedding/embedding_weights/part_0/AssignAssignVariableOpSdnn/input_from_feature_columns/input_layer/col_1_embedding/embedding_weights/part_0pdnn/input_from_feature_columns/input_layer/col_1_embedding/embedding_weights/part_0/Initializer/truncated_normal*f
_class\
ZXloc:@dnn/input_from_feature_columns/input_layer/col_1_embedding/embedding_weights/part_0*
dtype0
?
gdnn/input_from_feature_columns/input_layer/col_1_embedding/embedding_weights/part_0/Read/ReadVariableOpReadVariableOpSdnn/input_from_feature_columns/input_layer/col_1_embedding/embedding_weights/part_0*f
_class\
ZXloc:@dnn/input_from_feature_columns/input_layer/col_1_embedding/embedding_weights/part_0*
dtype0*
_output_shapes

:
?
vdnn/input_from_feature_columns/input_layer/col_3_embedding/embedding_weights/part_0/Initializer/truncated_normal/shapeConst*f
_class\
ZXloc:@dnn/input_from_feature_columns/input_layer/col_3_embedding/embedding_weights/part_0*
valueB"      *
dtype0*
_output_shapes
:
?
udnn/input_from_feature_columns/input_layer/col_3_embedding/embedding_weights/part_0/Initializer/truncated_normal/meanConst*f
_class\
ZXloc:@dnn/input_from_feature_columns/input_layer/col_3_embedding/embedding_weights/part_0*
_output_shapes
: *
dtype0*
valueB
 *    
?
wdnn/input_from_feature_columns/input_layer/col_3_embedding/embedding_weights/part_0/Initializer/truncated_normal/stddevConst*f
_class\
ZXloc:@dnn/input_from_feature_columns/input_layer/col_3_embedding/embedding_weights/part_0*
dtype0*
_output_shapes
: *
valueB
 *  ??
?
?dnn/input_from_feature_columns/input_layer/col_3_embedding/embedding_weights/part_0/Initializer/truncated_normal/TruncatedNormalTruncatedNormalvdnn/input_from_feature_columns/input_layer/col_3_embedding/embedding_weights/part_0/Initializer/truncated_normal/shape*
seed2&*
_output_shapes

:*

seed*
T0*f
_class\
ZXloc:@dnn/input_from_feature_columns/input_layer/col_3_embedding/embedding_weights/part_0*
dtype0
?
tdnn/input_from_feature_columns/input_layer/col_3_embedding/embedding_weights/part_0/Initializer/truncated_normal/mulMul?dnn/input_from_feature_columns/input_layer/col_3_embedding/embedding_weights/part_0/Initializer/truncated_normal/TruncatedNormalwdnn/input_from_feature_columns/input_layer/col_3_embedding/embedding_weights/part_0/Initializer/truncated_normal/stddev*
T0*
_output_shapes

:*f
_class\
ZXloc:@dnn/input_from_feature_columns/input_layer/col_3_embedding/embedding_weights/part_0
?
pdnn/input_from_feature_columns/input_layer/col_3_embedding/embedding_weights/part_0/Initializer/truncated_normalAddtdnn/input_from_feature_columns/input_layer/col_3_embedding/embedding_weights/part_0/Initializer/truncated_normal/muludnn/input_from_feature_columns/input_layer/col_3_embedding/embedding_weights/part_0/Initializer/truncated_normal/mean*
T0*f
_class\
ZXloc:@dnn/input_from_feature_columns/input_layer/col_3_embedding/embedding_weights/part_0*
_output_shapes

:
?
Sdnn/input_from_feature_columns/input_layer/col_3_embedding/embedding_weights/part_0VarHandleOp*
_output_shapes
: *
shape
:*f
_class\
ZXloc:@dnn/input_from_feature_columns/input_layer/col_3_embedding/embedding_weights/part_0*
dtype0*d
shared_nameUSdnn/input_from_feature_columns/input_layer/col_3_embedding/embedding_weights/part_0
?
tdnn/input_from_feature_columns/input_layer/col_3_embedding/embedding_weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpSdnn/input_from_feature_columns/input_layer/col_3_embedding/embedding_weights/part_0*
_output_shapes
: 
?
Zdnn/input_from_feature_columns/input_layer/col_3_embedding/embedding_weights/part_0/AssignAssignVariableOpSdnn/input_from_feature_columns/input_layer/col_3_embedding/embedding_weights/part_0pdnn/input_from_feature_columns/input_layer/col_3_embedding/embedding_weights/part_0/Initializer/truncated_normal*
dtype0*f
_class\
ZXloc:@dnn/input_from_feature_columns/input_layer/col_3_embedding/embedding_weights/part_0
?
gdnn/input_from_feature_columns/input_layer/col_3_embedding/embedding_weights/part_0/Read/ReadVariableOpReadVariableOpSdnn/input_from_feature_columns/input_layer/col_3_embedding/embedding_weights/part_0*
dtype0*
_output_shapes

:*f
_class\
ZXloc:@dnn/input_from_feature_columns/input_layer/col_3_embedding/embedding_weights/part_0
?
vdnn/input_from_feature_columns/input_layer/col_4_embedding/embedding_weights/part_0/Initializer/truncated_normal/shapeConst*f
_class\
ZXloc:@dnn/input_from_feature_columns/input_layer/col_4_embedding/embedding_weights/part_0*
_output_shapes
:*
valueB"      *
dtype0
?
udnn/input_from_feature_columns/input_layer/col_4_embedding/embedding_weights/part_0/Initializer/truncated_normal/meanConst*
_output_shapes
: *
valueB
 *    *f
_class\
ZXloc:@dnn/input_from_feature_columns/input_layer/col_4_embedding/embedding_weights/part_0*
dtype0
?
wdnn/input_from_feature_columns/input_layer/col_4_embedding/embedding_weights/part_0/Initializer/truncated_normal/stddevConst*
_output_shapes
: *
valueB
 *  ??*f
_class\
ZXloc:@dnn/input_from_feature_columns/input_layer/col_4_embedding/embedding_weights/part_0*
dtype0
?
?dnn/input_from_feature_columns/input_layer/col_4_embedding/embedding_weights/part_0/Initializer/truncated_normal/TruncatedNormalTruncatedNormalvdnn/input_from_feature_columns/input_layer/col_4_embedding/embedding_weights/part_0/Initializer/truncated_normal/shape*
_output_shapes

:*

seed*
seed20*
T0*f
_class\
ZXloc:@dnn/input_from_feature_columns/input_layer/col_4_embedding/embedding_weights/part_0*
dtype0
?
tdnn/input_from_feature_columns/input_layer/col_4_embedding/embedding_weights/part_0/Initializer/truncated_normal/mulMul?dnn/input_from_feature_columns/input_layer/col_4_embedding/embedding_weights/part_0/Initializer/truncated_normal/TruncatedNormalwdnn/input_from_feature_columns/input_layer/col_4_embedding/embedding_weights/part_0/Initializer/truncated_normal/stddev*
T0*f
_class\
ZXloc:@dnn/input_from_feature_columns/input_layer/col_4_embedding/embedding_weights/part_0*
_output_shapes

:
?
pdnn/input_from_feature_columns/input_layer/col_4_embedding/embedding_weights/part_0/Initializer/truncated_normalAddtdnn/input_from_feature_columns/input_layer/col_4_embedding/embedding_weights/part_0/Initializer/truncated_normal/muludnn/input_from_feature_columns/input_layer/col_4_embedding/embedding_weights/part_0/Initializer/truncated_normal/mean*
_output_shapes

:*
T0*f
_class\
ZXloc:@dnn/input_from_feature_columns/input_layer/col_4_embedding/embedding_weights/part_0
?
Sdnn/input_from_feature_columns/input_layer/col_4_embedding/embedding_weights/part_0VarHandleOp*
_output_shapes
: *d
shared_nameUSdnn/input_from_feature_columns/input_layer/col_4_embedding/embedding_weights/part_0*
shape
:*f
_class\
ZXloc:@dnn/input_from_feature_columns/input_layer/col_4_embedding/embedding_weights/part_0*
dtype0
?
tdnn/input_from_feature_columns/input_layer/col_4_embedding/embedding_weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpSdnn/input_from_feature_columns/input_layer/col_4_embedding/embedding_weights/part_0*
_output_shapes
: 
?
Zdnn/input_from_feature_columns/input_layer/col_4_embedding/embedding_weights/part_0/AssignAssignVariableOpSdnn/input_from_feature_columns/input_layer/col_4_embedding/embedding_weights/part_0pdnn/input_from_feature_columns/input_layer/col_4_embedding/embedding_weights/part_0/Initializer/truncated_normal*
dtype0*f
_class\
ZXloc:@dnn/input_from_feature_columns/input_layer/col_4_embedding/embedding_weights/part_0
?
gdnn/input_from_feature_columns/input_layer/col_4_embedding/embedding_weights/part_0/Read/ReadVariableOpReadVariableOpSdnn/input_from_feature_columns/input_layer/col_4_embedding/embedding_weights/part_0*f
_class\
ZXloc:@dnn/input_from_feature_columns/input_layer/col_4_embedding/embedding_weights/part_0*
_output_shapes

:*
dtype0
?
Idnn/input_from_feature_columns/input_layer/col_0_embedding/ExpandDims/dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
Ednn/input_from_feature_columns/input_layer/col_0_embedding/ExpandDims
ExpandDims	DecodeCSVIdnn/input_from_feature_columns/input_layer/col_0_embedding/ExpandDims/dim*'
_output_shapes
:?????????*
T0
?
Ydnn/input_from_feature_columns/input_layer/col_0_embedding/to_sparse_input/ignore_value/xConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
Sdnn/input_from_feature_columns/input_layer/col_0_embedding/to_sparse_input/NotEqualNotEqualEdnn/input_from_feature_columns/input_layer/col_0_embedding/ExpandDimsYdnn/input_from_feature_columns/input_layer/col_0_embedding/to_sparse_input/ignore_value/x*
T0*'
_output_shapes
:?????????
?
Rdnn/input_from_feature_columns/input_layer/col_0_embedding/to_sparse_input/indicesWhereSdnn/input_from_feature_columns/input_layer/col_0_embedding/to_sparse_input/NotEqual*'
_output_shapes
:?????????
?
Qdnn/input_from_feature_columns/input_layer/col_0_embedding/to_sparse_input/valuesGatherNdEdnn/input_from_feature_columns/input_layer/col_0_embedding/ExpandDimsRdnn/input_from_feature_columns/input_layer/col_0_embedding/to_sparse_input/indices*
Tparams0*#
_output_shapes
:?????????*
Tindices0	
?
Vdnn/input_from_feature_columns/input_layer/col_0_embedding/to_sparse_input/dense_shapeShapeEdnn/input_from_feature_columns/input_layer/col_0_embedding/ExpandDims*
T0*
out_type0	*
_output_shapes
:
?
Adnn/input_from_feature_columns/input_layer/col_0_embedding/valuesCastQdnn/input_from_feature_columns/input_layer/col_0_embedding/to_sparse_input/values*#
_output_shapes
:?????????*

DstT0	*

SrcT0
?
Hdnn/input_from_feature_columns/input_layer/col_0_embedding/num_buckets/xConst*
dtype0*
value	B :*
_output_shapes
: 
?
Fdnn/input_from_feature_columns/input_layer/col_0_embedding/num_bucketsCastHdnn/input_from_feature_columns/input_layer/col_0_embedding/num_buckets/x*
_output_shapes
: *

SrcT0*

DstT0	
?
Adnn/input_from_feature_columns/input_layer/col_0_embedding/zero/xConst*
value	B : *
dtype0*
_output_shapes
: 
?
?dnn/input_from_feature_columns/input_layer/col_0_embedding/zeroCastAdnn/input_from_feature_columns/input_layer/col_0_embedding/zero/x*

DstT0	*

SrcT0*
_output_shapes
: 
?
?dnn/input_from_feature_columns/input_layer/col_0_embedding/LessLessAdnn/input_from_feature_columns/input_layer/col_0_embedding/values?dnn/input_from_feature_columns/input_layer/col_0_embedding/zero*
T0	*#
_output_shapes
:?????????
?
Gdnn/input_from_feature_columns/input_layer/col_0_embedding/GreaterEqualGreaterEqualAdnn/input_from_feature_columns/input_layer/col_0_embedding/valuesFdnn/input_from_feature_columns/input_layer/col_0_embedding/num_buckets*#
_output_shapes
:?????????*
T0	
?
Gdnn/input_from_feature_columns/input_layer/col_0_embedding/out_of_range	LogicalOr?dnn/input_from_feature_columns/input_layer/col_0_embedding/LessGdnn/input_from_feature_columns/input_layer/col_0_embedding/GreaterEqual*#
_output_shapes
:?????????
?
@dnn/input_from_feature_columns/input_layer/col_0_embedding/ShapeShapeAdnn/input_from_feature_columns/input_layer/col_0_embedding/values*
T0	*
_output_shapes
:
?
Adnn/input_from_feature_columns/input_layer/col_0_embedding/Cast/xConst*
dtype0*
value	B : *
_output_shapes
: 
?
?dnn/input_from_feature_columns/input_layer/col_0_embedding/CastCastAdnn/input_from_feature_columns/input_layer/col_0_embedding/Cast/x*

SrcT0*

DstT0	*
_output_shapes
: 
?
Idnn/input_from_feature_columns/input_layer/col_0_embedding/default_valuesFill@dnn/input_from_feature_columns/input_layer/col_0_embedding/Shape?dnn/input_from_feature_columns/input_layer/col_0_embedding/Cast*
T0	*#
_output_shapes
:?????????
?
Adnn/input_from_feature_columns/input_layer/col_0_embedding/SelectSelectGdnn/input_from_feature_columns/input_layer/col_0_embedding/out_of_rangeIdnn/input_from_feature_columns/input_layer/col_0_embedding/default_valuesAdnn/input_from_feature_columns/input_layer/col_0_embedding/values*
T0	*#
_output_shapes
:?????????
?
^dnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/Slice/beginConst*
dtype0*
valueB: *
_output_shapes
:
?
]dnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
?
Xdnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/SliceSliceVdnn/input_from_feature_columns/input_layer/col_0_embedding/to_sparse_input/dense_shape^dnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/Slice/begin]dnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/Slice/size*
Index0*
T0	*
_output_shapes
:
?
Xdnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
?
Wdnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/ProdProdXdnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/SliceXdnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/Const*
T0	*
_output_shapes
: 
?
cdnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
?
`dnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
value	B : *
dtype0
?
[dnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/GatherV2GatherV2Vdnn/input_from_feature_columns/input_layer/col_0_embedding/to_sparse_input/dense_shapecdnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/GatherV2/indices`dnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/GatherV2/axis*
Taxis0*
Tindices0*
_output_shapes
: *
Tparams0	
?
Ydnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/Cast/xPackWdnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/Prod[dnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/GatherV2*
N*
T0	*
_output_shapes
:
?
`dnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/SparseReshapeSparseReshapeRdnn/input_from_feature_columns/input_layer/col_0_embedding/to_sparse_input/indicesVdnn/input_from_feature_columns/input_layer/col_0_embedding/to_sparse_input/dense_shapeYdnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/Cast/x*-
_output_shapes
:?????????:
?
idnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/SparseReshape/IdentityIdentityAdnn/input_from_feature_columns/input_layer/col_0_embedding/Select*
T0	*#
_output_shapes
:?????????
?
adnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/GreaterEqual/yConst*
value	B	 R *
_output_shapes
: *
dtype0	
?
_dnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/GreaterEqualGreaterEqualidnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/SparseReshape/Identityadnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/GreaterEqual/y*#
_output_shapes
:?????????*
T0	
?
Xdnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/WhereWhere_dnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/GreaterEqual*'
_output_shapes
:?????????
?
`dnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
Zdnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/ReshapeReshapeXdnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/Where`dnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/Reshape/shape*#
_output_shapes
:?????????*
T0	
?
bdnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
]dnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/GatherV2_1GatherV2`dnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/SparseReshapeZdnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/Reshapebdnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/GatherV2_1/axis*'
_output_shapes
:?????????*
Tparams0	*
Tindices0	*
Taxis0
?
bdnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/GatherV2_2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
?
]dnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/GatherV2_2GatherV2idnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/SparseReshape/IdentityZdnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/Reshapebdnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/GatherV2_2/axis*
Taxis0*
Tindices0	*#
_output_shapes
:?????????*
Tparams0	
?
[dnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/IdentityIdentitybdnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/SparseReshape:1*
_output_shapes
:*
T0	
?
ldnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/SparseFillEmptyRows/ConstConst*
value	B	 R *
_output_shapes
: *
dtype0	
?
zdnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows]dnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/GatherV2_1]dnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/GatherV2_2[dnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/Identityldnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:?????????:?????????:?????????:?????????
?
~dnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
valueB"        *
_output_shapes
:
?
?dnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
?
?dnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
?
xdnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicezdnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows~dnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/embedding_lookup_sparse/strided_slice/stack?dnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1?dnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2*
end_mask*
Index0*
shrink_axis_mask*#
_output_shapes
:?????????*

begin_mask*
T0	
?
odnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/embedding_lookup_sparse/CastCastxdnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:?????????
?
qdnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/embedding_lookup_sparse/UniqueUnique|dnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:?????????:?????????*
T0	
?
{dnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/embedding_lookup_sparse/embedding_lookupResourceGatherSdnn/input_from_feature_columns/input_layer/col_0_embedding/embedding_weights/part_0qdnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/embedding_lookup_sparse/Unique*'
_output_shapes
:?????????*
Tindices0	*
dtype0*f
_class\
ZXloc:@dnn/input_from_feature_columns/input_layer/col_0_embedding/embedding_weights/part_0
?
?dnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentity{dnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/embedding_lookup_sparse/embedding_lookup*'
_output_shapes
:?????????*
T0*f
_class\
ZXloc:@dnn/input_from_feature_columns/input_layer/col_0_embedding/embedding_weights/part_0
?
?dnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1Identity?dnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity*
T0*'
_output_shapes
:?????????
?
jdnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/embedding_lookup_sparseSparseSegmentMean?dnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1sdnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/embedding_lookup_sparse/Unique:1odnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:?????????
?
bdnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/Reshape_1/shapeConst*
valueB"????   *
dtype0*
_output_shapes
:
?
\dnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/Reshape_1Reshape|dnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:2bdnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/Reshape_1/shape*
T0
*'
_output_shapes
:?????????
?
Xdnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/ShapeShapejdnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/embedding_lookup_sparse*
T0*
_output_shapes
:
?
fdnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:
?
hdnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
?
hdnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
?
`dnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/strided_sliceStridedSliceXdnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/Shapefdnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/strided_slice/stackhdnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/strided_slice/stack_1hdnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Zdnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/stack/0Const*
dtype0*
_output_shapes
: *
value	B :
?
Xdnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/stackPackZdnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/stack/0`dnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/strided_slice*
T0*
_output_shapes
:*
N
?
Wdnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/TileTile\dnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/Reshape_1Xdnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/stack*
T0
*0
_output_shapes
:??????????????????
?
]dnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/zeros_like	ZerosLikejdnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/embedding_lookup_sparse*'
_output_shapes
:?????????*
T0
?
Rdnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weightsSelectWdnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/Tile]dnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/zeros_likejdnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:?????????
?
Ydnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/Cast_1CastVdnn/input_from_feature_columns/input_layer/col_0_embedding/to_sparse_input/dense_shape*

SrcT0	*

DstT0*
_output_shapes
:
?
`dnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/Slice_1/beginConst*
valueB: *
_output_shapes
:*
dtype0
?
_dnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:
?
Zdnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/Slice_1SliceYdnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/Cast_1`dnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/Slice_1/begin_dnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/Slice_1/size*
T0*
_output_shapes
:*
Index0
?
Zdnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/Shape_1ShapeRdnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights*
T0*
_output_shapes
:
?
`dnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
?
_dnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/Slice_2/sizeConst*
valueB:
?????????*
dtype0*
_output_shapes
:
?
Zdnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/Slice_2SliceZdnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/Shape_1`dnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/Slice_2/begin_dnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/Slice_2/size*
Index0*
_output_shapes
:*
T0
?
^dnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
?
Ydnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/concatConcatV2Zdnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/Slice_1Zdnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/Slice_2^dnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/concat/axis*
N*
T0*
_output_shapes
:
?
\dnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/Reshape_2ReshapeRdnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weightsYdnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/concat*'
_output_shapes
:?????????*
T0
?
Bdnn/input_from_feature_columns/input_layer/col_0_embedding/Shape_1Shape\dnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/Reshape_2*
_output_shapes
:*
T0
?
Ndnn/input_from_feature_columns/input_layer/col_0_embedding/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
?
Pdnn/input_from_feature_columns/input_layer/col_0_embedding/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
?
Pdnn/input_from_feature_columns/input_layer/col_0_embedding/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
?
Hdnn/input_from_feature_columns/input_layer/col_0_embedding/strided_sliceStridedSliceBdnn/input_from_feature_columns/input_layer/col_0_embedding/Shape_1Ndnn/input_from_feature_columns/input_layer/col_0_embedding/strided_slice/stackPdnn/input_from_feature_columns/input_layer/col_0_embedding/strided_slice/stack_1Pdnn/input_from_feature_columns/input_layer/col_0_embedding/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
?
Jdnn/input_from_feature_columns/input_layer/col_0_embedding/Reshape/shape/1Const*
dtype0*
value	B :*
_output_shapes
: 
?
Hdnn/input_from_feature_columns/input_layer/col_0_embedding/Reshape/shapePackHdnn/input_from_feature_columns/input_layer/col_0_embedding/strided_sliceJdnn/input_from_feature_columns/input_layer/col_0_embedding/Reshape/shape/1*
_output_shapes
:*
N*
T0
?
Bdnn/input_from_feature_columns/input_layer/col_0_embedding/ReshapeReshape\dnn/input_from_feature_columns/input_layer/col_0_embedding/col_0_embedding_weights/Reshape_2Hdnn/input_from_feature_columns/input_layer/col_0_embedding/Reshape/shape*'
_output_shapes
:?????????*
T0
?
Idnn/input_from_feature_columns/input_layer/col_1_embedding/ExpandDims/dimConst*
dtype0*
valueB :
?????????*
_output_shapes
: 
?
Ednn/input_from_feature_columns/input_layer/col_1_embedding/ExpandDims
ExpandDimsDecodeCSV:1Idnn/input_from_feature_columns/input_layer/col_1_embedding/ExpandDims/dim*
T0*'
_output_shapes
:?????????
?
Ydnn/input_from_feature_columns/input_layer/col_1_embedding/to_sparse_input/ignore_value/xConst*
dtype0*
_output_shapes
: *
valueB :
?????????
?
Sdnn/input_from_feature_columns/input_layer/col_1_embedding/to_sparse_input/NotEqualNotEqualEdnn/input_from_feature_columns/input_layer/col_1_embedding/ExpandDimsYdnn/input_from_feature_columns/input_layer/col_1_embedding/to_sparse_input/ignore_value/x*'
_output_shapes
:?????????*
T0
?
Rdnn/input_from_feature_columns/input_layer/col_1_embedding/to_sparse_input/indicesWhereSdnn/input_from_feature_columns/input_layer/col_1_embedding/to_sparse_input/NotEqual*'
_output_shapes
:?????????
?
Qdnn/input_from_feature_columns/input_layer/col_1_embedding/to_sparse_input/valuesGatherNdEdnn/input_from_feature_columns/input_layer/col_1_embedding/ExpandDimsRdnn/input_from_feature_columns/input_layer/col_1_embedding/to_sparse_input/indices*
Tparams0*#
_output_shapes
:?????????*
Tindices0	
?
Vdnn/input_from_feature_columns/input_layer/col_1_embedding/to_sparse_input/dense_shapeShapeEdnn/input_from_feature_columns/input_layer/col_1_embedding/ExpandDims*
T0*
_output_shapes
:*
out_type0	
?
Adnn/input_from_feature_columns/input_layer/col_1_embedding/valuesCastQdnn/input_from_feature_columns/input_layer/col_1_embedding/to_sparse_input/values*#
_output_shapes
:?????????*

SrcT0*

DstT0	
?
Hdnn/input_from_feature_columns/input_layer/col_1_embedding/num_buckets/xConst*
value	B :*
_output_shapes
: *
dtype0
?
Fdnn/input_from_feature_columns/input_layer/col_1_embedding/num_bucketsCastHdnn/input_from_feature_columns/input_layer/col_1_embedding/num_buckets/x*
_output_shapes
: *

DstT0	*

SrcT0
?
Adnn/input_from_feature_columns/input_layer/col_1_embedding/zero/xConst*
dtype0*
value	B : *
_output_shapes
: 
?
?dnn/input_from_feature_columns/input_layer/col_1_embedding/zeroCastAdnn/input_from_feature_columns/input_layer/col_1_embedding/zero/x*

SrcT0*

DstT0	*
_output_shapes
: 
?
?dnn/input_from_feature_columns/input_layer/col_1_embedding/LessLessAdnn/input_from_feature_columns/input_layer/col_1_embedding/values?dnn/input_from_feature_columns/input_layer/col_1_embedding/zero*#
_output_shapes
:?????????*
T0	
?
Gdnn/input_from_feature_columns/input_layer/col_1_embedding/GreaterEqualGreaterEqualAdnn/input_from_feature_columns/input_layer/col_1_embedding/valuesFdnn/input_from_feature_columns/input_layer/col_1_embedding/num_buckets*#
_output_shapes
:?????????*
T0	
?
Gdnn/input_from_feature_columns/input_layer/col_1_embedding/out_of_range	LogicalOr?dnn/input_from_feature_columns/input_layer/col_1_embedding/LessGdnn/input_from_feature_columns/input_layer/col_1_embedding/GreaterEqual*#
_output_shapes
:?????????
?
@dnn/input_from_feature_columns/input_layer/col_1_embedding/ShapeShapeAdnn/input_from_feature_columns/input_layer/col_1_embedding/values*
_output_shapes
:*
T0	
?
Adnn/input_from_feature_columns/input_layer/col_1_embedding/Cast/xConst*
_output_shapes
: *
value	B : *
dtype0
?
?dnn/input_from_feature_columns/input_layer/col_1_embedding/CastCastAdnn/input_from_feature_columns/input_layer/col_1_embedding/Cast/x*
_output_shapes
: *

SrcT0*

DstT0	
?
Idnn/input_from_feature_columns/input_layer/col_1_embedding/default_valuesFill@dnn/input_from_feature_columns/input_layer/col_1_embedding/Shape?dnn/input_from_feature_columns/input_layer/col_1_embedding/Cast*
T0	*#
_output_shapes
:?????????
?
Adnn/input_from_feature_columns/input_layer/col_1_embedding/SelectSelectGdnn/input_from_feature_columns/input_layer/col_1_embedding/out_of_rangeIdnn/input_from_feature_columns/input_layer/col_1_embedding/default_valuesAdnn/input_from_feature_columns/input_layer/col_1_embedding/values*
T0	*#
_output_shapes
:?????????
?
^dnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/Slice/beginConst*
dtype0*
valueB: *
_output_shapes
:
?
]dnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:
?
Xdnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/SliceSliceVdnn/input_from_feature_columns/input_layer/col_1_embedding/to_sparse_input/dense_shape^dnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/Slice/begin]dnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/Slice/size*
_output_shapes
:*
Index0*
T0	
?
Xdnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
?
Wdnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/ProdProdXdnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/SliceXdnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/Const*
T0	*
_output_shapes
: 
?
cdnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/GatherV2/indicesConst*
dtype0*
_output_shapes
: *
value	B :
?
`dnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
value	B : *
dtype0
?
[dnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/GatherV2GatherV2Vdnn/input_from_feature_columns/input_layer/col_1_embedding/to_sparse_input/dense_shapecdnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/GatherV2/indices`dnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/GatherV2/axis*
Taxis0*
Tindices0*
_output_shapes
: *
Tparams0	
?
Ydnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/Cast/xPackWdnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/Prod[dnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/GatherV2*
_output_shapes
:*
N*
T0	
?
`dnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/SparseReshapeSparseReshapeRdnn/input_from_feature_columns/input_layer/col_1_embedding/to_sparse_input/indicesVdnn/input_from_feature_columns/input_layer/col_1_embedding/to_sparse_input/dense_shapeYdnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/Cast/x*-
_output_shapes
:?????????:
?
idnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/SparseReshape/IdentityIdentityAdnn/input_from_feature_columns/input_layer/col_1_embedding/Select*#
_output_shapes
:?????????*
T0	
?
adnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?
_dnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/GreaterEqualGreaterEqualidnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/SparseReshape/Identityadnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/GreaterEqual/y*
T0	*#
_output_shapes
:?????????
?
Xdnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/WhereWhere_dnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/GreaterEqual*'
_output_shapes
:?????????
?
`dnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
?????????
?
Zdnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/ReshapeReshapeXdnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/Where`dnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/Reshape/shape*#
_output_shapes
:?????????*
T0	
?
bdnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/GatherV2_1/axisConst*
value	B : *
_output_shapes
: *
dtype0
?
]dnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/GatherV2_1GatherV2`dnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/SparseReshapeZdnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/Reshapebdnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/GatherV2_1/axis*'
_output_shapes
:?????????*
Tindices0	*
Tparams0	*
Taxis0
?
bdnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
?
]dnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/GatherV2_2GatherV2idnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/SparseReshape/IdentityZdnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/Reshapebdnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/GatherV2_2/axis*
Tindices0	*
Taxis0*
Tparams0	*#
_output_shapes
:?????????
?
[dnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/IdentityIdentitybdnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/SparseReshape:1*
_output_shapes
:*
T0	
?
ldnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
value	B	 R *
dtype0	
?
zdnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows]dnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/GatherV2_1]dnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/GatherV2_2[dnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/Identityldnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/SparseFillEmptyRows/Const*T
_output_shapesB
@:?????????:?????????:?????????:?????????*
T0	
?
~dnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
?
?dnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
?
?dnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
?
xdnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicezdnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows~dnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/embedding_lookup_sparse/strided_slice/stack?dnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1?dnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2*#
_output_shapes
:?????????*
T0	*
end_mask*

begin_mask*
shrink_axis_mask*
Index0
?
odnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/embedding_lookup_sparse/CastCastxdnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/embedding_lookup_sparse/strided_slice*#
_output_shapes
:?????????*

SrcT0	*

DstT0
?
qdnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/embedding_lookup_sparse/UniqueUnique|dnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:?????????:?????????
?
{dnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/embedding_lookup_sparse/embedding_lookupResourceGatherSdnn/input_from_feature_columns/input_layer/col_1_embedding/embedding_weights/part_0qdnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/embedding_lookup_sparse/Unique*
dtype0*'
_output_shapes
:?????????*f
_class\
ZXloc:@dnn/input_from_feature_columns/input_layer/col_1_embedding/embedding_weights/part_0*
Tindices0	
?
?dnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentity{dnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/embedding_lookup_sparse/embedding_lookup*f
_class\
ZXloc:@dnn/input_from_feature_columns/input_layer/col_1_embedding/embedding_weights/part_0*'
_output_shapes
:?????????*
T0
?
?dnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1Identity?dnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity*'
_output_shapes
:?????????*
T0
?
jdnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/embedding_lookup_sparseSparseSegmentMean?dnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1sdnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/embedding_lookup_sparse/Unique:1odnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/embedding_lookup_sparse/Cast*'
_output_shapes
:?????????*
T0
?
bdnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/Reshape_1/shapeConst*
valueB"????   *
dtype0*
_output_shapes
:
?
\dnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/Reshape_1Reshape|dnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:2bdnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/Reshape_1/shape*'
_output_shapes
:?????????*
T0

?
Xdnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/ShapeShapejdnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/embedding_lookup_sparse*
_output_shapes
:*
T0
?
fdnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
valueB:*
dtype0
?
hdnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
hdnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
?
`dnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/strided_sliceStridedSliceXdnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/Shapefdnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/strided_slice/stackhdnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/strided_slice/stack_1hdnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Zdnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/stack/0Const*
dtype0*
_output_shapes
: *
value	B :
?
Xdnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/stackPackZdnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/stack/0`dnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/strided_slice*
T0*
_output_shapes
:*
N
?
Wdnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/TileTile\dnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/Reshape_1Xdnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/stack*0
_output_shapes
:??????????????????*
T0

?
]dnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/zeros_like	ZerosLikejdnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/embedding_lookup_sparse*'
_output_shapes
:?????????*
T0
?
Rdnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weightsSelectWdnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/Tile]dnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/zeros_likejdnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:?????????
?
Ydnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/Cast_1CastVdnn/input_from_feature_columns/input_layer/col_1_embedding/to_sparse_input/dense_shape*

SrcT0	*
_output_shapes
:*

DstT0
?
`dnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
?
_dnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:
?
Zdnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/Slice_1SliceYdnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/Cast_1`dnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/Slice_1/begin_dnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/Slice_1/size*
T0*
Index0*
_output_shapes
:
?
Zdnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/Shape_1ShapeRdnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights*
_output_shapes
:*
T0
?
`dnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
?
_dnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
Zdnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/Slice_2SliceZdnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/Shape_1`dnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/Slice_2/begin_dnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/Slice_2/size*
_output_shapes
:*
T0*
Index0
?
^dnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
?
Ydnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/concatConcatV2Zdnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/Slice_1Zdnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/Slice_2^dnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/concat/axis*
T0*
_output_shapes
:*
N
?
\dnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/Reshape_2ReshapeRdnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weightsYdnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/concat*'
_output_shapes
:?????????*
T0
?
Bdnn/input_from_feature_columns/input_layer/col_1_embedding/Shape_1Shape\dnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/Reshape_2*
T0*
_output_shapes
:
?
Ndnn/input_from_feature_columns/input_layer/col_1_embedding/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
?
Pdnn/input_from_feature_columns/input_layer/col_1_embedding/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
?
Pdnn/input_from_feature_columns/input_layer/col_1_embedding/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
?
Hdnn/input_from_feature_columns/input_layer/col_1_embedding/strided_sliceStridedSliceBdnn/input_from_feature_columns/input_layer/col_1_embedding/Shape_1Ndnn/input_from_feature_columns/input_layer/col_1_embedding/strided_slice/stackPdnn/input_from_feature_columns/input_layer/col_1_embedding/strided_slice/stack_1Pdnn/input_from_feature_columns/input_layer/col_1_embedding/strided_slice/stack_2*
shrink_axis_mask*
T0*
_output_shapes
: *
Index0
?
Jdnn/input_from_feature_columns/input_layer/col_1_embedding/Reshape/shape/1Const*
_output_shapes
: *
value	B :*
dtype0
?
Hdnn/input_from_feature_columns/input_layer/col_1_embedding/Reshape/shapePackHdnn/input_from_feature_columns/input_layer/col_1_embedding/strided_sliceJdnn/input_from_feature_columns/input_layer/col_1_embedding/Reshape/shape/1*
_output_shapes
:*
T0*
N
?
Bdnn/input_from_feature_columns/input_layer/col_1_embedding/ReshapeReshape\dnn/input_from_feature_columns/input_layer/col_1_embedding/col_1_embedding_weights/Reshape_2Hdnn/input_from_feature_columns/input_layer/col_1_embedding/Reshape/shape*
T0*'
_output_shapes
:?????????
?
Idnn/input_from_feature_columns/input_layer/col_2_indicator/ExpandDims/dimConst*
_output_shapes
: *
valueB :
?????????*
dtype0
?
Ednn/input_from_feature_columns/input_layer/col_2_indicator/ExpandDims
ExpandDimsDecodeCSV:2Idnn/input_from_feature_columns/input_layer/col_2_indicator/ExpandDims/dim*
T0*'
_output_shapes
:?????????
?
Ydnn/input_from_feature_columns/input_layer/col_2_indicator/to_sparse_input/ignore_value/xConst*
dtype0*
valueB :
?????????*
_output_shapes
: 
?
Sdnn/input_from_feature_columns/input_layer/col_2_indicator/to_sparse_input/NotEqualNotEqualEdnn/input_from_feature_columns/input_layer/col_2_indicator/ExpandDimsYdnn/input_from_feature_columns/input_layer/col_2_indicator/to_sparse_input/ignore_value/x*
T0*'
_output_shapes
:?????????
?
Rdnn/input_from_feature_columns/input_layer/col_2_indicator/to_sparse_input/indicesWhereSdnn/input_from_feature_columns/input_layer/col_2_indicator/to_sparse_input/NotEqual*'
_output_shapes
:?????????
?
Qdnn/input_from_feature_columns/input_layer/col_2_indicator/to_sparse_input/valuesGatherNdEdnn/input_from_feature_columns/input_layer/col_2_indicator/ExpandDimsRdnn/input_from_feature_columns/input_layer/col_2_indicator/to_sparse_input/indices*
Tindices0	*
Tparams0*#
_output_shapes
:?????????
?
Vdnn/input_from_feature_columns/input_layer/col_2_indicator/to_sparse_input/dense_shapeShapeEdnn/input_from_feature_columns/input_layer/col_2_indicator/ExpandDims*
T0*
_output_shapes
:*
out_type0	
?
Cdnn/input_from_feature_columns/input_layer/col_2_indicator/AsStringAsStringQdnn/input_from_feature_columns/input_layer/col_2_indicator/to_sparse_input/values*
T0*#
_output_shapes
:?????????
?
Adnn/input_from_feature_columns/input_layer/col_2_indicator/lookupStringToHashBucketFastCdnn/input_from_feature_columns/input_layer/col_2_indicator/AsString*#
_output_shapes
:?????????*
num_buckets
?
Vdnn/input_from_feature_columns/input_layer/col_2_indicator/SparseToDense/default_valueConst*
dtype0	*
_output_shapes
: *
valueB	 R
?????????
?
Hdnn/input_from_feature_columns/input_layer/col_2_indicator/SparseToDenseSparseToDenseRdnn/input_from_feature_columns/input_layer/col_2_indicator/to_sparse_input/indicesVdnn/input_from_feature_columns/input_layer/col_2_indicator/to_sparse_input/dense_shapeAdnn/input_from_feature_columns/input_layer/col_2_indicator/lookupVdnn/input_from_feature_columns/input_layer/col_2_indicator/SparseToDense/default_value*'
_output_shapes
:?????????*
Tindices0	*
T0	
?
Hdnn/input_from_feature_columns/input_layer/col_2_indicator/one_hot/ConstConst*
_output_shapes
: *
valueB
 *  ??*
dtype0
?
Jdnn/input_from_feature_columns/input_layer/col_2_indicator/one_hot/Const_1Const*
_output_shapes
: *
valueB
 *    *
dtype0
?
Hdnn/input_from_feature_columns/input_layer/col_2_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :
?
Kdnn/input_from_feature_columns/input_layer/col_2_indicator/one_hot/on_valueConst*
dtype0*
_output_shapes
: *
valueB
 *  ??
?
Ldnn/input_from_feature_columns/input_layer/col_2_indicator/one_hot/off_valueConst*
dtype0*
_output_shapes
: *
valueB
 *    
?
Bdnn/input_from_feature_columns/input_layer/col_2_indicator/one_hotOneHotHdnn/input_from_feature_columns/input_layer/col_2_indicator/SparseToDenseHdnn/input_from_feature_columns/input_layer/col_2_indicator/one_hot/depthKdnn/input_from_feature_columns/input_layer/col_2_indicator/one_hot/on_valueLdnn/input_from_feature_columns/input_layer/col_2_indicator/one_hot/off_value*+
_output_shapes
:?????????*
T0
?
Pdnn/input_from_feature_columns/input_layer/col_2_indicator/Sum/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB:
?????????
?
>dnn/input_from_feature_columns/input_layer/col_2_indicator/SumSumBdnn/input_from_feature_columns/input_layer/col_2_indicator/one_hotPdnn/input_from_feature_columns/input_layer/col_2_indicator/Sum/reduction_indices*
T0*'
_output_shapes
:?????????
?
@dnn/input_from_feature_columns/input_layer/col_2_indicator/ShapeShape>dnn/input_from_feature_columns/input_layer/col_2_indicator/Sum*
_output_shapes
:*
T0
?
Ndnn/input_from_feature_columns/input_layer/col_2_indicator/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
?
Pdnn/input_from_feature_columns/input_layer/col_2_indicator/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
?
Pdnn/input_from_feature_columns/input_layer/col_2_indicator/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
?
Hdnn/input_from_feature_columns/input_layer/col_2_indicator/strided_sliceStridedSlice@dnn/input_from_feature_columns/input_layer/col_2_indicator/ShapeNdnn/input_from_feature_columns/input_layer/col_2_indicator/strided_slice/stackPdnn/input_from_feature_columns/input_layer/col_2_indicator/strided_slice/stack_1Pdnn/input_from_feature_columns/input_layer/col_2_indicator/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0
?
Jdnn/input_from_feature_columns/input_layer/col_2_indicator/Reshape/shape/1Const*
dtype0*
_output_shapes
: *
value	B :
?
Hdnn/input_from_feature_columns/input_layer/col_2_indicator/Reshape/shapePackHdnn/input_from_feature_columns/input_layer/col_2_indicator/strided_sliceJdnn/input_from_feature_columns/input_layer/col_2_indicator/Reshape/shape/1*
_output_shapes
:*
T0*
N
?
Bdnn/input_from_feature_columns/input_layer/col_2_indicator/ReshapeReshape>dnn/input_from_feature_columns/input_layer/col_2_indicator/SumHdnn/input_from_feature_columns/input_layer/col_2_indicator/Reshape/shape*
T0*'
_output_shapes
:?????????
?
Idnn/input_from_feature_columns/input_layer/col_3_embedding/ExpandDims/dimConst*
dtype0*
valueB :
?????????*
_output_shapes
: 
?
Ednn/input_from_feature_columns/input_layer/col_3_embedding/ExpandDims
ExpandDimsDecodeCSV:3Idnn/input_from_feature_columns/input_layer/col_3_embedding/ExpandDims/dim*'
_output_shapes
:?????????*
T0
?
Ydnn/input_from_feature_columns/input_layer/col_3_embedding/to_sparse_input/ignore_value/xConst*
dtype0*
_output_shapes
: *
valueB :
?????????
?
Sdnn/input_from_feature_columns/input_layer/col_3_embedding/to_sparse_input/NotEqualNotEqualEdnn/input_from_feature_columns/input_layer/col_3_embedding/ExpandDimsYdnn/input_from_feature_columns/input_layer/col_3_embedding/to_sparse_input/ignore_value/x*'
_output_shapes
:?????????*
T0
?
Rdnn/input_from_feature_columns/input_layer/col_3_embedding/to_sparse_input/indicesWhereSdnn/input_from_feature_columns/input_layer/col_3_embedding/to_sparse_input/NotEqual*'
_output_shapes
:?????????
?
Qdnn/input_from_feature_columns/input_layer/col_3_embedding/to_sparse_input/valuesGatherNdEdnn/input_from_feature_columns/input_layer/col_3_embedding/ExpandDimsRdnn/input_from_feature_columns/input_layer/col_3_embedding/to_sparse_input/indices*
Tindices0	*#
_output_shapes
:?????????*
Tparams0
?
Vdnn/input_from_feature_columns/input_layer/col_3_embedding/to_sparse_input/dense_shapeShapeEdnn/input_from_feature_columns/input_layer/col_3_embedding/ExpandDims*
_output_shapes
:*
out_type0	*
T0
?
Adnn/input_from_feature_columns/input_layer/col_3_embedding/valuesCastQdnn/input_from_feature_columns/input_layer/col_3_embedding/to_sparse_input/values*

SrcT0*#
_output_shapes
:?????????*

DstT0	
?
Hdnn/input_from_feature_columns/input_layer/col_3_embedding/num_buckets/xConst*
_output_shapes
: *
value	B :*
dtype0
?
Fdnn/input_from_feature_columns/input_layer/col_3_embedding/num_bucketsCastHdnn/input_from_feature_columns/input_layer/col_3_embedding/num_buckets/x*

DstT0	*

SrcT0*
_output_shapes
: 
?
Adnn/input_from_feature_columns/input_layer/col_3_embedding/zero/xConst*
_output_shapes
: *
dtype0*
value	B : 
?
?dnn/input_from_feature_columns/input_layer/col_3_embedding/zeroCastAdnn/input_from_feature_columns/input_layer/col_3_embedding/zero/x*
_output_shapes
: *

SrcT0*

DstT0	
?
?dnn/input_from_feature_columns/input_layer/col_3_embedding/LessLessAdnn/input_from_feature_columns/input_layer/col_3_embedding/values?dnn/input_from_feature_columns/input_layer/col_3_embedding/zero*#
_output_shapes
:?????????*
T0	
?
Gdnn/input_from_feature_columns/input_layer/col_3_embedding/GreaterEqualGreaterEqualAdnn/input_from_feature_columns/input_layer/col_3_embedding/valuesFdnn/input_from_feature_columns/input_layer/col_3_embedding/num_buckets*#
_output_shapes
:?????????*
T0	
?
Gdnn/input_from_feature_columns/input_layer/col_3_embedding/out_of_range	LogicalOr?dnn/input_from_feature_columns/input_layer/col_3_embedding/LessGdnn/input_from_feature_columns/input_layer/col_3_embedding/GreaterEqual*#
_output_shapes
:?????????
?
@dnn/input_from_feature_columns/input_layer/col_3_embedding/ShapeShapeAdnn/input_from_feature_columns/input_layer/col_3_embedding/values*
_output_shapes
:*
T0	
?
Adnn/input_from_feature_columns/input_layer/col_3_embedding/Cast/xConst*
dtype0*
value	B : *
_output_shapes
: 
?
?dnn/input_from_feature_columns/input_layer/col_3_embedding/CastCastAdnn/input_from_feature_columns/input_layer/col_3_embedding/Cast/x*

SrcT0*
_output_shapes
: *

DstT0	
?
Idnn/input_from_feature_columns/input_layer/col_3_embedding/default_valuesFill@dnn/input_from_feature_columns/input_layer/col_3_embedding/Shape?dnn/input_from_feature_columns/input_layer/col_3_embedding/Cast*
T0	*#
_output_shapes
:?????????
?
Adnn/input_from_feature_columns/input_layer/col_3_embedding/SelectSelectGdnn/input_from_feature_columns/input_layer/col_3_embedding/out_of_rangeIdnn/input_from_feature_columns/input_layer/col_3_embedding/default_valuesAdnn/input_from_feature_columns/input_layer/col_3_embedding/values*
T0	*#
_output_shapes
:?????????
?
^dnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/Slice/beginConst*
_output_shapes
:*
valueB: *
dtype0
?
]dnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
?
Xdnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/SliceSliceVdnn/input_from_feature_columns/input_layer/col_3_embedding/to_sparse_input/dense_shape^dnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/Slice/begin]dnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/Slice/size*
Index0*
T0	*
_output_shapes
:
?
Xdnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
?
Wdnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/ProdProdXdnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/SliceXdnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/Const*
T0	*
_output_shapes
: 
?
cdnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/GatherV2/indicesConst*
value	B :*
_output_shapes
: *
dtype0
?
`dnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
value	B : *
dtype0
?
[dnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/GatherV2GatherV2Vdnn/input_from_feature_columns/input_layer/col_3_embedding/to_sparse_input/dense_shapecdnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/GatherV2/indices`dnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/GatherV2/axis*
Taxis0*
Tparams0	*
_output_shapes
: *
Tindices0
?
Ydnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/Cast/xPackWdnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/Prod[dnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/GatherV2*
T0	*
N*
_output_shapes
:
?
`dnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/SparseReshapeSparseReshapeRdnn/input_from_feature_columns/input_layer/col_3_embedding/to_sparse_input/indicesVdnn/input_from_feature_columns/input_layer/col_3_embedding/to_sparse_input/dense_shapeYdnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/Cast/x*-
_output_shapes
:?????????:
?
idnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/SparseReshape/IdentityIdentityAdnn/input_from_feature_columns/input_layer/col_3_embedding/Select*#
_output_shapes
:?????????*
T0	
?
adnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/GreaterEqual/yConst*
value	B	 R *
_output_shapes
: *
dtype0	
?
_dnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/GreaterEqualGreaterEqualidnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/SparseReshape/Identityadnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/GreaterEqual/y*
T0	*#
_output_shapes
:?????????
?
Xdnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/WhereWhere_dnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/GreaterEqual*'
_output_shapes
:?????????
?
`dnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/Reshape/shapeConst*
valueB:
?????????*
_output_shapes
:*
dtype0
?
Zdnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/ReshapeReshapeXdnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/Where`dnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/Reshape/shape*
T0	*#
_output_shapes
:?????????
?
bdnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/GatherV2_1/axisConst*
dtype0*
value	B : *
_output_shapes
: 
?
]dnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/GatherV2_1GatherV2`dnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/SparseReshapeZdnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/Reshapebdnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/GatherV2_1/axis*
Tparams0	*'
_output_shapes
:?????????*
Taxis0*
Tindices0	
?
bdnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/GatherV2_2/axisConst*
value	B : *
_output_shapes
: *
dtype0
?
]dnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/GatherV2_2GatherV2idnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/SparseReshape/IdentityZdnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/Reshapebdnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/GatherV2_2/axis*
Tparams0	*
Tindices0	*#
_output_shapes
:?????????*
Taxis0
?
[dnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/IdentityIdentitybdnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/SparseReshape:1*
_output_shapes
:*
T0	
?
ldnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?
zdnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows]dnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/GatherV2_1]dnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/GatherV2_2[dnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/Identityldnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/SparseFillEmptyRows/Const*T
_output_shapesB
@:?????????:?????????:?????????:?????????*
T0	
?
~dnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
valueB"        *
dtype0
?
?dnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
?
?dnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
?
xdnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicezdnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows~dnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/embedding_lookup_sparse/strided_slice/stack?dnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1?dnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2*
end_mask*
shrink_axis_mask*#
_output_shapes
:?????????*

begin_mask*
T0	*
Index0
?
odnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/embedding_lookup_sparse/CastCastxdnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/embedding_lookup_sparse/strided_slice*#
_output_shapes
:?????????*

DstT0*

SrcT0	
?
qdnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/embedding_lookup_sparse/UniqueUnique|dnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:?????????:?????????
?
{dnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/embedding_lookup_sparse/embedding_lookupResourceGatherSdnn/input_from_feature_columns/input_layer/col_3_embedding/embedding_weights/part_0qdnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/embedding_lookup_sparse/Unique*'
_output_shapes
:?????????*f
_class\
ZXloc:@dnn/input_from_feature_columns/input_layer/col_3_embedding/embedding_weights/part_0*
dtype0*
Tindices0	
?
?dnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentity{dnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/embedding_lookup_sparse/embedding_lookup*
T0*f
_class\
ZXloc:@dnn/input_from_feature_columns/input_layer/col_3_embedding/embedding_weights/part_0*'
_output_shapes
:?????????
?
?dnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1Identity?dnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity*'
_output_shapes
:?????????*
T0
?
jdnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/embedding_lookup_sparseSparseSegmentMean?dnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1sdnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/embedding_lookup_sparse/Unique:1odnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/embedding_lookup_sparse/Cast*'
_output_shapes
:?????????*
T0
?
bdnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   
?
\dnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/Reshape_1Reshape|dnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:2bdnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/Reshape_1/shape*
T0
*'
_output_shapes
:?????????
?
Xdnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/ShapeShapejdnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/embedding_lookup_sparse*
_output_shapes
:*
T0
?
fdnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/strided_slice/stackConst*
valueB:*
_output_shapes
:*
dtype0
?
hdnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
?
hdnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
?
`dnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/strided_sliceStridedSliceXdnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/Shapefdnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/strided_slice/stackhdnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/strided_slice/stack_1hdnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/strided_slice/stack_2*
shrink_axis_mask*
_output_shapes
: *
T0*
Index0
?
Zdnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
?
Xdnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/stackPackZdnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/stack/0`dnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/strided_slice*
_output_shapes
:*
T0*
N
?
Wdnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/TileTile\dnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/Reshape_1Xdnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/stack*0
_output_shapes
:??????????????????*
T0

?
]dnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/zeros_like	ZerosLikejdnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/embedding_lookup_sparse*'
_output_shapes
:?????????*
T0
?
Rdnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weightsSelectWdnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/Tile]dnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/zeros_likejdnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/embedding_lookup_sparse*'
_output_shapes
:?????????*
T0
?
Ydnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/Cast_1CastVdnn/input_from_feature_columns/input_layer/col_3_embedding/to_sparse_input/dense_shape*

SrcT0	*

DstT0*
_output_shapes
:
?
`dnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
valueB: *
dtype0
?
_dnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/Slice_1/sizeConst*
valueB:*
_output_shapes
:*
dtype0
?
Zdnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/Slice_1SliceYdnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/Cast_1`dnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/Slice_1/begin_dnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/Slice_1/size*
T0*
Index0*
_output_shapes
:
?
Zdnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/Shape_1ShapeRdnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights*
T0*
_output_shapes
:
?
`dnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:
?
_dnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/Slice_2/sizeConst*
valueB:
?????????*
dtype0*
_output_shapes
:
?
Zdnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/Slice_2SliceZdnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/Shape_1`dnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/Slice_2/begin_dnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/Slice_2/size*
Index0*
T0*
_output_shapes
:
?
^dnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/concat/axisConst*
_output_shapes
: *
value	B : *
dtype0
?
Ydnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/concatConcatV2Zdnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/Slice_1Zdnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/Slice_2^dnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/concat/axis*
N*
T0*
_output_shapes
:
?
\dnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/Reshape_2ReshapeRdnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weightsYdnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/concat*'
_output_shapes
:?????????*
T0
?
Bdnn/input_from_feature_columns/input_layer/col_3_embedding/Shape_1Shape\dnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/Reshape_2*
_output_shapes
:*
T0
?
Ndnn/input_from_feature_columns/input_layer/col_3_embedding/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:
?
Pdnn/input_from_feature_columns/input_layer/col_3_embedding/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
?
Pdnn/input_from_feature_columns/input_layer/col_3_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Hdnn/input_from_feature_columns/input_layer/col_3_embedding/strided_sliceStridedSliceBdnn/input_from_feature_columns/input_layer/col_3_embedding/Shape_1Ndnn/input_from_feature_columns/input_layer/col_3_embedding/strided_slice/stackPdnn/input_from_feature_columns/input_layer/col_3_embedding/strided_slice/stack_1Pdnn/input_from_feature_columns/input_layer/col_3_embedding/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0
?
Jdnn/input_from_feature_columns/input_layer/col_3_embedding/Reshape/shape/1Const*
value	B :*
_output_shapes
: *
dtype0
?
Hdnn/input_from_feature_columns/input_layer/col_3_embedding/Reshape/shapePackHdnn/input_from_feature_columns/input_layer/col_3_embedding/strided_sliceJdnn/input_from_feature_columns/input_layer/col_3_embedding/Reshape/shape/1*
_output_shapes
:*
T0*
N
?
Bdnn/input_from_feature_columns/input_layer/col_3_embedding/ReshapeReshape\dnn/input_from_feature_columns/input_layer/col_3_embedding/col_3_embedding_weights/Reshape_2Hdnn/input_from_feature_columns/input_layer/col_3_embedding/Reshape/shape*'
_output_shapes
:?????????*
T0
?
Idnn/input_from_feature_columns/input_layer/col_4_embedding/ExpandDims/dimConst*
_output_shapes
: *
valueB :
?????????*
dtype0
?
Ednn/input_from_feature_columns/input_layer/col_4_embedding/ExpandDims
ExpandDimsDecodeCSV:4Idnn/input_from_feature_columns/input_layer/col_4_embedding/ExpandDims/dim*
T0*'
_output_shapes
:?????????
?
Ydnn/input_from_feature_columns/input_layer/col_4_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
Sdnn/input_from_feature_columns/input_layer/col_4_embedding/to_sparse_input/NotEqualNotEqualEdnn/input_from_feature_columns/input_layer/col_4_embedding/ExpandDimsYdnn/input_from_feature_columns/input_layer/col_4_embedding/to_sparse_input/ignore_value/x*'
_output_shapes
:?????????*
T0
?
Rdnn/input_from_feature_columns/input_layer/col_4_embedding/to_sparse_input/indicesWhereSdnn/input_from_feature_columns/input_layer/col_4_embedding/to_sparse_input/NotEqual*'
_output_shapes
:?????????
?
Qdnn/input_from_feature_columns/input_layer/col_4_embedding/to_sparse_input/valuesGatherNdEdnn/input_from_feature_columns/input_layer/col_4_embedding/ExpandDimsRdnn/input_from_feature_columns/input_layer/col_4_embedding/to_sparse_input/indices*
Tindices0	*#
_output_shapes
:?????????*
Tparams0
?
Vdnn/input_from_feature_columns/input_layer/col_4_embedding/to_sparse_input/dense_shapeShapeEdnn/input_from_feature_columns/input_layer/col_4_embedding/ExpandDims*
out_type0	*
T0*
_output_shapes
:
?
Adnn/input_from_feature_columns/input_layer/col_4_embedding/valuesCastQdnn/input_from_feature_columns/input_layer/col_4_embedding/to_sparse_input/values*#
_output_shapes
:?????????*

DstT0	*

SrcT0
?
Hdnn/input_from_feature_columns/input_layer/col_4_embedding/num_buckets/xConst*
value	B :*
_output_shapes
: *
dtype0
?
Fdnn/input_from_feature_columns/input_layer/col_4_embedding/num_bucketsCastHdnn/input_from_feature_columns/input_layer/col_4_embedding/num_buckets/x*
_output_shapes
: *

SrcT0*

DstT0	
?
Adnn/input_from_feature_columns/input_layer/col_4_embedding/zero/xConst*
_output_shapes
: *
value	B : *
dtype0
?
?dnn/input_from_feature_columns/input_layer/col_4_embedding/zeroCastAdnn/input_from_feature_columns/input_layer/col_4_embedding/zero/x*

SrcT0*
_output_shapes
: *

DstT0	
?
?dnn/input_from_feature_columns/input_layer/col_4_embedding/LessLessAdnn/input_from_feature_columns/input_layer/col_4_embedding/values?dnn/input_from_feature_columns/input_layer/col_4_embedding/zero*#
_output_shapes
:?????????*
T0	
?
Gdnn/input_from_feature_columns/input_layer/col_4_embedding/GreaterEqualGreaterEqualAdnn/input_from_feature_columns/input_layer/col_4_embedding/valuesFdnn/input_from_feature_columns/input_layer/col_4_embedding/num_buckets*
T0	*#
_output_shapes
:?????????
?
Gdnn/input_from_feature_columns/input_layer/col_4_embedding/out_of_range	LogicalOr?dnn/input_from_feature_columns/input_layer/col_4_embedding/LessGdnn/input_from_feature_columns/input_layer/col_4_embedding/GreaterEqual*#
_output_shapes
:?????????
?
@dnn/input_from_feature_columns/input_layer/col_4_embedding/ShapeShapeAdnn/input_from_feature_columns/input_layer/col_4_embedding/values*
T0	*
_output_shapes
:
?
Adnn/input_from_feature_columns/input_layer/col_4_embedding/Cast/xConst*
dtype0*
_output_shapes
: *
value	B : 
?
?dnn/input_from_feature_columns/input_layer/col_4_embedding/CastCastAdnn/input_from_feature_columns/input_layer/col_4_embedding/Cast/x*

SrcT0*
_output_shapes
: *

DstT0	
?
Idnn/input_from_feature_columns/input_layer/col_4_embedding/default_valuesFill@dnn/input_from_feature_columns/input_layer/col_4_embedding/Shape?dnn/input_from_feature_columns/input_layer/col_4_embedding/Cast*#
_output_shapes
:?????????*
T0	
?
Adnn/input_from_feature_columns/input_layer/col_4_embedding/SelectSelectGdnn/input_from_feature_columns/input_layer/col_4_embedding/out_of_rangeIdnn/input_from_feature_columns/input_layer/col_4_embedding/default_valuesAdnn/input_from_feature_columns/input_layer/col_4_embedding/values*
T0	*#
_output_shapes
:?????????
?
^dnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/Slice/beginConst*
dtype0*
_output_shapes
:*
valueB: 
?
]dnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:
?
Xdnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/SliceSliceVdnn/input_from_feature_columns/input_layer/col_4_embedding/to_sparse_input/dense_shape^dnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/Slice/begin]dnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/Slice/size*
_output_shapes
:*
T0	*
Index0
?
Xdnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/ConstConst*
valueB: *
_output_shapes
:*
dtype0
?
Wdnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/ProdProdXdnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/SliceXdnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/Const*
_output_shapes
: *
T0	
?
cdnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
?
`dnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/GatherV2/axisConst*
dtype0*
value	B : *
_output_shapes
: 
?
[dnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/GatherV2GatherV2Vdnn/input_from_feature_columns/input_layer/col_4_embedding/to_sparse_input/dense_shapecdnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/GatherV2/indices`dnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/GatherV2/axis*
_output_shapes
: *
Tparams0	*
Tindices0*
Taxis0
?
Ydnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/Cast/xPackWdnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/Prod[dnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/GatherV2*
N*
_output_shapes
:*
T0	
?
`dnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/SparseReshapeSparseReshapeRdnn/input_from_feature_columns/input_layer/col_4_embedding/to_sparse_input/indicesVdnn/input_from_feature_columns/input_layer/col_4_embedding/to_sparse_input/dense_shapeYdnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/Cast/x*-
_output_shapes
:?????????:
?
idnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/SparseReshape/IdentityIdentityAdnn/input_from_feature_columns/input_layer/col_4_embedding/Select*#
_output_shapes
:?????????*
T0	
?
adnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
?
_dnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/GreaterEqualGreaterEqualidnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/SparseReshape/Identityadnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/GreaterEqual/y*
T0	*#
_output_shapes
:?????????
?
Xdnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/WhereWhere_dnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/GreaterEqual*'
_output_shapes
:?????????
?
`dnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
?????????
?
Zdnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/ReshapeReshapeXdnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/Where`dnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/Reshape/shape*
T0	*#
_output_shapes
:?????????
?
bdnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
]dnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/GatherV2_1GatherV2`dnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/SparseReshapeZdnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/Reshapebdnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/GatherV2_1/axis*'
_output_shapes
:?????????*
Tparams0	*
Tindices0	*
Taxis0
?
bdnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
?
]dnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/GatherV2_2GatherV2idnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/SparseReshape/IdentityZdnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/Reshapebdnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/GatherV2_2/axis*
Tparams0	*#
_output_shapes
:?????????*
Tindices0	*
Taxis0
?
[dnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/IdentityIdentitybdnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/SparseReshape:1*
T0	*
_output_shapes
:
?
ldnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/SparseFillEmptyRows/ConstConst*
dtype0	*
value	B	 R *
_output_shapes
: 
?
zdnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows]dnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/GatherV2_1]dnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/GatherV2_2[dnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/Identityldnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/SparseFillEmptyRows/Const*T
_output_shapesB
@:?????????:?????????:?????????:?????????*
T0	
?
~dnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
?
?dnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
?
?dnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
?
xdnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicezdnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows~dnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/embedding_lookup_sparse/strided_slice/stack?dnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1?dnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2*

begin_mask*#
_output_shapes
:?????????*
T0	*
Index0*
end_mask*
shrink_axis_mask
?
odnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/embedding_lookup_sparse/CastCastxdnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/embedding_lookup_sparse/strided_slice*

DstT0*#
_output_shapes
:?????????*

SrcT0	
?
qdnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/embedding_lookup_sparse/UniqueUnique|dnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:?????????:?????????*
T0	
?
{dnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/embedding_lookup_sparse/embedding_lookupResourceGatherSdnn/input_from_feature_columns/input_layer/col_4_embedding/embedding_weights/part_0qdnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/embedding_lookup_sparse/Unique*'
_output_shapes
:?????????*
dtype0*
Tindices0	*f
_class\
ZXloc:@dnn/input_from_feature_columns/input_layer/col_4_embedding/embedding_weights/part_0
?
?dnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentity{dnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/embedding_lookup_sparse/embedding_lookup*
T0*f
_class\
ZXloc:@dnn/input_from_feature_columns/input_layer/col_4_embedding/embedding_weights/part_0*'
_output_shapes
:?????????
?
?dnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1Identity?dnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity*'
_output_shapes
:?????????*
T0
?
jdnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/embedding_lookup_sparseSparseSegmentMean?dnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1sdnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/embedding_lookup_sparse/Unique:1odnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/embedding_lookup_sparse/Cast*'
_output_shapes
:?????????*
T0
?
bdnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/Reshape_1/shapeConst*
dtype0*
valueB"????   *
_output_shapes
:
?
\dnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/Reshape_1Reshape|dnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:2bdnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/Reshape_1/shape*
T0
*'
_output_shapes
:?????????
?
Xdnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/ShapeShapejdnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/embedding_lookup_sparse*
_output_shapes
:*
T0
?
fdnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
?
hdnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
?
hdnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
?
`dnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/strided_sliceStridedSliceXdnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/Shapefdnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/strided_slice/stackhdnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/strided_slice/stack_1hdnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/strided_slice/stack_2*
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
?
Zdnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/stack/0Const*
dtype0*
_output_shapes
: *
value	B :
?
Xdnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/stackPackZdnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/stack/0`dnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/strided_slice*
N*
T0*
_output_shapes
:
?
Wdnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/TileTile\dnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/Reshape_1Xdnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/stack*
T0
*0
_output_shapes
:??????????????????
?
]dnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/zeros_like	ZerosLikejdnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/embedding_lookup_sparse*'
_output_shapes
:?????????*
T0
?
Rdnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weightsSelectWdnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/Tile]dnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/zeros_likejdnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:?????????
?
Ydnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/Cast_1CastVdnn/input_from_feature_columns/input_layer/col_4_embedding/to_sparse_input/dense_shape*

SrcT0	*

DstT0*
_output_shapes
:
?
`dnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
valueB: *
dtype0
?
_dnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/Slice_1/sizeConst*
dtype0*
_output_shapes
:*
valueB:
?
Zdnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/Slice_1SliceYdnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/Cast_1`dnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/Slice_1/begin_dnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/Slice_1/size*
_output_shapes
:*
Index0*
T0
?
Zdnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/Shape_1ShapeRdnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights*
_output_shapes
:*
T0
?
`dnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/Slice_2/beginConst*
dtype0*
_output_shapes
:*
valueB:
?
_dnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/Slice_2/sizeConst*
dtype0*
valueB:
?????????*
_output_shapes
:
?
Zdnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/Slice_2SliceZdnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/Shape_1`dnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/Slice_2/begin_dnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/Slice_2/size*
_output_shapes
:*
T0*
Index0
?
^dnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
?
Ydnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/concatConcatV2Zdnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/Slice_1Zdnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/Slice_2^dnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/concat/axis*
T0*
N*
_output_shapes
:
?
\dnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/Reshape_2ReshapeRdnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weightsYdnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/concat*'
_output_shapes
:?????????*
T0
?
Bdnn/input_from_feature_columns/input_layer/col_4_embedding/Shape_1Shape\dnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/Reshape_2*
_output_shapes
:*
T0
?
Ndnn/input_from_feature_columns/input_layer/col_4_embedding/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
?
Pdnn/input_from_feature_columns/input_layer/col_4_embedding/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
?
Pdnn/input_from_feature_columns/input_layer/col_4_embedding/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
Hdnn/input_from_feature_columns/input_layer/col_4_embedding/strided_sliceStridedSliceBdnn/input_from_feature_columns/input_layer/col_4_embedding/Shape_1Ndnn/input_from_feature_columns/input_layer/col_4_embedding/strided_slice/stackPdnn/input_from_feature_columns/input_layer/col_4_embedding/strided_slice/stack_1Pdnn/input_from_feature_columns/input_layer/col_4_embedding/strided_slice/stack_2*
T0*
_output_shapes
: *
shrink_axis_mask*
Index0
?
Jdnn/input_from_feature_columns/input_layer/col_4_embedding/Reshape/shape/1Const*
value	B :*
_output_shapes
: *
dtype0
?
Hdnn/input_from_feature_columns/input_layer/col_4_embedding/Reshape/shapePackHdnn/input_from_feature_columns/input_layer/col_4_embedding/strided_sliceJdnn/input_from_feature_columns/input_layer/col_4_embedding/Reshape/shape/1*
N*
_output_shapes
:*
T0
?
Bdnn/input_from_feature_columns/input_layer/col_4_embedding/ReshapeReshape\dnn/input_from_feature_columns/input_layer/col_4_embedding/col_4_embedding_weights/Reshape_2Hdnn/input_from_feature_columns/input_layer/col_4_embedding/Reshape/shape*'
_output_shapes
:?????????*
T0
?
6dnn/input_from_feature_columns/input_layer/concat/axisConst*
dtype0*
valueB :
?????????*
_output_shapes
: 
?
1dnn/input_from_feature_columns/input_layer/concatConcatV2Bdnn/input_from_feature_columns/input_layer/col_0_embedding/ReshapeBdnn/input_from_feature_columns/input_layer/col_1_embedding/ReshapeBdnn/input_from_feature_columns/input_layer/col_2_indicator/ReshapeBdnn/input_from_feature_columns/input_layer/col_3_embedding/ReshapeBdnn/input_from_feature_columns/input_layer/col_4_embedding/Reshape6dnn/input_from_feature_columns/input_layer/concat/axis*'
_output_shapes
:?????????	*
T0*
N
?
@dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/shapeConst*
_output_shapes
:*
valueB"	      *
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0
?
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/minConst*
_output_shapes
: *2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
valueB
 *??Ⱦ*
dtype0
?
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/maxConst*
_output_shapes
: *2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
valueB
 *???>*
dtype0
?
Hdnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform@dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/shape*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
T0*
dtype0*
seed2?*
_output_shapes

:	*

seed
?
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/subSub>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/max>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/min*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
T0*
_output_shapes
: 
?
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/mulMulHdnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/RandomUniform>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/sub*
T0*
_output_shapes

:	*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0
?
:dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniformAdd>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/mul>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/min*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
_output_shapes

:	*
T0
?
dnn/hiddenlayer_0/kernel/part_0VarHandleOp*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*0
shared_name!dnn/hiddenlayer_0/kernel/part_0*
shape
:	*
_output_shapes
: *
dtype0
?
@dnn/hiddenlayer_0/kernel/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_0/kernel/part_0*
_output_shapes
: 
?
&dnn/hiddenlayer_0/kernel/part_0/AssignAssignVariableOpdnn/hiddenlayer_0/kernel/part_0:dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
dtype0
?
3dnn/hiddenlayer_0/kernel/part_0/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/kernel/part_0*
_output_shapes

:	*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
dtype0
?
/dnn/hiddenlayer_0/bias/part_0/Initializer/zerosConst*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
valueB*    *
_output_shapes
:*
dtype0
?
dnn/hiddenlayer_0/bias/part_0VarHandleOp*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*.
shared_namednn/hiddenlayer_0/bias/part_0*
shape:*
_output_shapes
: *
dtype0
?
>dnn/hiddenlayer_0/bias/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_0/bias/part_0*
_output_shapes
: 
?
$dnn/hiddenlayer_0/bias/part_0/AssignAssignVariableOpdnn/hiddenlayer_0/bias/part_0/dnn/hiddenlayer_0/bias/part_0/Initializer/zeros*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
dtype0
?
1dnn/hiddenlayer_0/bias/part_0/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/bias/part_0*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
dtype0*
_output_shapes
:
?
'dnn/hiddenlayer_0/kernel/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/kernel/part_0*
dtype0*
_output_shapes

:	
v
dnn/hiddenlayer_0/kernelIdentity'dnn/hiddenlayer_0/kernel/ReadVariableOp*
_output_shapes

:	*
T0
?
dnn/hiddenlayer_0/MatMulMatMul1dnn/input_from_feature_columns/input_layer/concatdnn/hiddenlayer_0/kernel*'
_output_shapes
:?????????*
T0

%dnn/hiddenlayer_0/bias/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/bias/part_0*
dtype0*
_output_shapes
:
n
dnn/hiddenlayer_0/biasIdentity%dnn/hiddenlayer_0/bias/ReadVariableOp*
_output_shapes
:*
T0
?
dnn/hiddenlayer_0/BiasAddBiasAdddnn/hiddenlayer_0/MatMuldnn/hiddenlayer_0/bias*
T0*'
_output_shapes
:?????????
k
dnn/hiddenlayer_0/ReluReludnn/hiddenlayer_0/BiasAdd*'
_output_shapes
:?????????*
T0
g
dnn/zero_fraction/SizeSizednn/hiddenlayer_0/Relu*
out_type0	*
T0*
_output_shapes
: 
c
dnn/zero_fraction/LessEqual/yConst*
_output_shapes
: *
valueB	 R????*
dtype0	
?
dnn/zero_fraction/LessEqual	LessEqualdnn/zero_fraction/Sizednn/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
?
dnn/zero_fraction/cond/SwitchSwitchdnn/zero_fraction/LessEqualdnn/zero_fraction/LessEqual*
T0
*
_output_shapes
: : 
m
dnn/zero_fraction/cond/switch_tIdentitydnn/zero_fraction/cond/Switch:1*
T0
*
_output_shapes
: 
k
dnn/zero_fraction/cond/switch_fIdentitydnn/zero_fraction/cond/Switch*
_output_shapes
: *
T0

h
dnn/zero_fraction/cond/pred_idIdentitydnn/zero_fraction/LessEqual*
T0
*
_output_shapes
: 
?
*dnn/zero_fraction/cond/count_nonzero/zerosConst ^dnn/zero_fraction/cond/switch_t*
dtype0*
valueB
 *    *
_output_shapes
: 
?
-dnn/zero_fraction/cond/count_nonzero/NotEqualNotEqual6dnn/zero_fraction/cond/count_nonzero/NotEqual/Switch:1*dnn/zero_fraction/cond/count_nonzero/zeros*
T0*'
_output_shapes
:?????????
?
4dnn/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchdnn/hiddenlayer_0/Reludnn/zero_fraction/cond/pred_id*:
_output_shapes(
&:?????????:?????????*)
_class
loc:@dnn/hiddenlayer_0/Relu*
T0
?
)dnn/zero_fraction/cond/count_nonzero/CastCast-dnn/zero_fraction/cond/count_nonzero/NotEqual*

DstT0*'
_output_shapes
:?????????*

SrcT0

?
*dnn/zero_fraction/cond/count_nonzero/ConstConst ^dnn/zero_fraction/cond/switch_t*
valueB"       *
_output_shapes
:*
dtype0
?
2dnn/zero_fraction/cond/count_nonzero/nonzero_countSum)dnn/zero_fraction/cond/count_nonzero/Cast*dnn/zero_fraction/cond/count_nonzero/Const*
T0*
_output_shapes
: 
?
dnn/zero_fraction/cond/CastCast2dnn/zero_fraction/cond/count_nonzero/nonzero_count*

SrcT0*
_output_shapes
: *

DstT0	
?
,dnn/zero_fraction/cond/count_nonzero_1/zerosConst ^dnn/zero_fraction/cond/switch_f*
_output_shapes
: *
valueB
 *    *
dtype0
?
/dnn/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual6dnn/zero_fraction/cond/count_nonzero_1/NotEqual/Switch,dnn/zero_fraction/cond/count_nonzero_1/zeros*'
_output_shapes
:?????????*
T0
?
6dnn/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchdnn/hiddenlayer_0/Reludnn/zero_fraction/cond/pred_id*:
_output_shapes(
&:?????????:?????????*)
_class
loc:@dnn/hiddenlayer_0/Relu*
T0
?
+dnn/zero_fraction/cond/count_nonzero_1/CastCast/dnn/zero_fraction/cond/count_nonzero_1/NotEqual*

DstT0	*'
_output_shapes
:?????????*

SrcT0

?
,dnn/zero_fraction/cond/count_nonzero_1/ConstConst ^dnn/zero_fraction/cond/switch_f*
_output_shapes
:*
dtype0*
valueB"       
?
4dnn/zero_fraction/cond/count_nonzero_1/nonzero_countSum+dnn/zero_fraction/cond/count_nonzero_1/Cast,dnn/zero_fraction/cond/count_nonzero_1/Const*
_output_shapes
: *
T0	
?
dnn/zero_fraction/cond/MergeMerge4dnn/zero_fraction/cond/count_nonzero_1/nonzero_countdnn/zero_fraction/cond/Cast*
_output_shapes
: : *
T0	*
N
?
(dnn/zero_fraction/counts_to_fraction/subSubdnn/zero_fraction/Sizednn/zero_fraction/cond/Merge*
_output_shapes
: *
T0	
?
)dnn/zero_fraction/counts_to_fraction/CastCast(dnn/zero_fraction/counts_to_fraction/sub*
_output_shapes
: *

SrcT0	*

DstT0
{
+dnn/zero_fraction/counts_to_fraction/Cast_1Castdnn/zero_fraction/Size*

SrcT0	*
_output_shapes
: *

DstT0
?
,dnn/zero_fraction/counts_to_fraction/truedivRealDiv)dnn/zero_fraction/counts_to_fraction/Cast+dnn/zero_fraction/counts_to_fraction/Cast_1*
_output_shapes
: *
T0
u
dnn/zero_fraction/fractionIdentity,dnn/zero_fraction/counts_to_fraction/truediv*
_output_shapes
: *
T0
?
2dnn/dnn/hiddenlayer_0/fraction_of_zero_values/tagsConst*
_output_shapes
: *
dtype0*>
value5B3 B-dnn/dnn/hiddenlayer_0/fraction_of_zero_values
?
-dnn/dnn/hiddenlayer_0/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_0/fraction_of_zero_values/tagsdnn/zero_fraction/fraction*
T0*
_output_shapes
: 
?
$dnn/dnn/hiddenlayer_0/activation/tagConst*
_output_shapes
: *1
value(B& B dnn/dnn/hiddenlayer_0/activation*
dtype0
?
 dnn/dnn/hiddenlayer_0/activationHistogramSummary$dnn/dnn/hiddenlayer_0/activation/tagdnn/hiddenlayer_0/Relu*
_output_shapes
: 
?
@dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/shapeConst*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
valueB"      *
dtype0*
_output_shapes
:
?
>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/minConst*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
_output_shapes
: *
valueB
 *?衾*
dtype0
?
>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/maxConst*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
valueB
 *???>*
_output_shapes
: *
dtype0
?
Hdnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform@dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/shape*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
seed2?*
_output_shapes

:*
dtype0*
T0*

seed
?
>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/subSub>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/max>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/min*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
_output_shapes
: *
T0
?
>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/mulMulHdnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/RandomUniform>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/sub*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
T0*
_output_shapes

:
?
:dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniformAdd>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/mul>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/min*
_output_shapes

:*
T0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0
?
dnn/hiddenlayer_1/kernel/part_0VarHandleOp*0
shared_name!dnn/hiddenlayer_1/kernel/part_0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
dtype0*
shape
:*
_output_shapes
: 
?
@dnn/hiddenlayer_1/kernel/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_1/kernel/part_0*
_output_shapes
: 
?
&dnn/hiddenlayer_1/kernel/part_0/AssignAssignVariableOpdnn/hiddenlayer_1/kernel/part_0:dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
dtype0
?
3dnn/hiddenlayer_1/kernel/part_0/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/kernel/part_0*
_output_shapes

:*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
dtype0
?
/dnn/hiddenlayer_1/bias/part_0/Initializer/zerosConst*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0*
dtype0*
_output_shapes
:*
valueB*    
?
dnn/hiddenlayer_1/bias/part_0VarHandleOp*
dtype0*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0*
_output_shapes
: *
shape:*.
shared_namednn/hiddenlayer_1/bias/part_0
?
>dnn/hiddenlayer_1/bias/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_1/bias/part_0*
_output_shapes
: 
?
$dnn/hiddenlayer_1/bias/part_0/AssignAssignVariableOpdnn/hiddenlayer_1/bias/part_0/dnn/hiddenlayer_1/bias/part_0/Initializer/zeros*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0*
dtype0
?
1dnn/hiddenlayer_1/bias/part_0/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/bias/part_0*
dtype0*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0*
_output_shapes
:
?
'dnn/hiddenlayer_1/kernel/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/kernel/part_0*
dtype0*
_output_shapes

:
v
dnn/hiddenlayer_1/kernelIdentity'dnn/hiddenlayer_1/kernel/ReadVariableOp*
T0*
_output_shapes

:
?
dnn/hiddenlayer_1/MatMulMatMuldnn/hiddenlayer_0/Reludnn/hiddenlayer_1/kernel*
T0*'
_output_shapes
:?????????

%dnn/hiddenlayer_1/bias/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/bias/part_0*
dtype0*
_output_shapes
:
n
dnn/hiddenlayer_1/biasIdentity%dnn/hiddenlayer_1/bias/ReadVariableOp*
_output_shapes
:*
T0
?
dnn/hiddenlayer_1/BiasAddBiasAdddnn/hiddenlayer_1/MatMuldnn/hiddenlayer_1/bias*
T0*'
_output_shapes
:?????????
k
dnn/hiddenlayer_1/ReluReludnn/hiddenlayer_1/BiasAdd*'
_output_shapes
:?????????*
T0
i
dnn/zero_fraction_1/SizeSizednn/hiddenlayer_1/Relu*
out_type0	*
_output_shapes
: *
T0
e
dnn/zero_fraction_1/LessEqual/yConst*
valueB	 R????*
_output_shapes
: *
dtype0	
?
dnn/zero_fraction_1/LessEqual	LessEqualdnn/zero_fraction_1/Sizednn/zero_fraction_1/LessEqual/y*
_output_shapes
: *
T0	
?
dnn/zero_fraction_1/cond/SwitchSwitchdnn/zero_fraction_1/LessEqualdnn/zero_fraction_1/LessEqual*
T0
*
_output_shapes
: : 
q
!dnn/zero_fraction_1/cond/switch_tIdentity!dnn/zero_fraction_1/cond/Switch:1*
_output_shapes
: *
T0

o
!dnn/zero_fraction_1/cond/switch_fIdentitydnn/zero_fraction_1/cond/Switch*
_output_shapes
: *
T0

l
 dnn/zero_fraction_1/cond/pred_idIdentitydnn/zero_fraction_1/LessEqual*
T0
*
_output_shapes
: 
?
,dnn/zero_fraction_1/cond/count_nonzero/zerosConst"^dnn/zero_fraction_1/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *    
?
/dnn/zero_fraction_1/cond/count_nonzero/NotEqualNotEqual8dnn/zero_fraction_1/cond/count_nonzero/NotEqual/Switch:1,dnn/zero_fraction_1/cond/count_nonzero/zeros*'
_output_shapes
:?????????*
T0
?
6dnn/zero_fraction_1/cond/count_nonzero/NotEqual/SwitchSwitchdnn/hiddenlayer_1/Relu dnn/zero_fraction_1/cond/pred_id*)
_class
loc:@dnn/hiddenlayer_1/Relu*
T0*:
_output_shapes(
&:?????????:?????????
?
+dnn/zero_fraction_1/cond/count_nonzero/CastCast/dnn/zero_fraction_1/cond/count_nonzero/NotEqual*'
_output_shapes
:?????????*

SrcT0
*

DstT0
?
,dnn/zero_fraction_1/cond/count_nonzero/ConstConst"^dnn/zero_fraction_1/cond/switch_t*
valueB"       *
dtype0*
_output_shapes
:
?
4dnn/zero_fraction_1/cond/count_nonzero/nonzero_countSum+dnn/zero_fraction_1/cond/count_nonzero/Cast,dnn/zero_fraction_1/cond/count_nonzero/Const*
_output_shapes
: *
T0
?
dnn/zero_fraction_1/cond/CastCast4dnn/zero_fraction_1/cond/count_nonzero/nonzero_count*
_output_shapes
: *

DstT0	*

SrcT0
?
.dnn/zero_fraction_1/cond/count_nonzero_1/zerosConst"^dnn/zero_fraction_1/cond/switch_f*
dtype0*
valueB
 *    *
_output_shapes
: 
?
1dnn/zero_fraction_1/cond/count_nonzero_1/NotEqualNotEqual8dnn/zero_fraction_1/cond/count_nonzero_1/NotEqual/Switch.dnn/zero_fraction_1/cond/count_nonzero_1/zeros*
T0*'
_output_shapes
:?????????
?
8dnn/zero_fraction_1/cond/count_nonzero_1/NotEqual/SwitchSwitchdnn/hiddenlayer_1/Relu dnn/zero_fraction_1/cond/pred_id*:
_output_shapes(
&:?????????:?????????*
T0*)
_class
loc:@dnn/hiddenlayer_1/Relu
?
-dnn/zero_fraction_1/cond/count_nonzero_1/CastCast1dnn/zero_fraction_1/cond/count_nonzero_1/NotEqual*'
_output_shapes
:?????????*

SrcT0
*

DstT0	
?
.dnn/zero_fraction_1/cond/count_nonzero_1/ConstConst"^dnn/zero_fraction_1/cond/switch_f*
dtype0*
_output_shapes
:*
valueB"       
?
6dnn/zero_fraction_1/cond/count_nonzero_1/nonzero_countSum-dnn/zero_fraction_1/cond/count_nonzero_1/Cast.dnn/zero_fraction_1/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 
?
dnn/zero_fraction_1/cond/MergeMerge6dnn/zero_fraction_1/cond/count_nonzero_1/nonzero_countdnn/zero_fraction_1/cond/Cast*
T0	*
_output_shapes
: : *
N
?
*dnn/zero_fraction_1/counts_to_fraction/subSubdnn/zero_fraction_1/Sizednn/zero_fraction_1/cond/Merge*
_output_shapes
: *
T0	
?
+dnn/zero_fraction_1/counts_to_fraction/CastCast*dnn/zero_fraction_1/counts_to_fraction/sub*

SrcT0	*
_output_shapes
: *

DstT0

-dnn/zero_fraction_1/counts_to_fraction/Cast_1Castdnn/zero_fraction_1/Size*

DstT0*
_output_shapes
: *

SrcT0	
?
.dnn/zero_fraction_1/counts_to_fraction/truedivRealDiv+dnn/zero_fraction_1/counts_to_fraction/Cast-dnn/zero_fraction_1/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
y
dnn/zero_fraction_1/fractionIdentity.dnn/zero_fraction_1/counts_to_fraction/truediv*
_output_shapes
: *
T0
?
2dnn/dnn/hiddenlayer_1/fraction_of_zero_values/tagsConst*
dtype0*
_output_shapes
: *>
value5B3 B-dnn/dnn/hiddenlayer_1/fraction_of_zero_values
?
-dnn/dnn/hiddenlayer_1/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_1/fraction_of_zero_values/tagsdnn/zero_fraction_1/fraction*
T0*
_output_shapes
: 
?
$dnn/dnn/hiddenlayer_1/activation/tagConst*1
value(B& B dnn/dnn/hiddenlayer_1/activation*
_output_shapes
: *
dtype0
?
 dnn/dnn/hiddenlayer_1/activationHistogramSummary$dnn/dnn/hiddenlayer_1/activation/tagdnn/hiddenlayer_1/Relu*
_output_shapes
: 
?
@dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/shapeConst*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
valueB"      *
dtype0*
_output_shapes
:
?
>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *?衾*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0
?
>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/maxConst*
valueB
 *???>*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
_output_shapes
: *
dtype0
?
Hdnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform@dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/shape*
T0*
dtype0*

seed*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
seed2?*
_output_shapes

:
?
>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/subSub>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/max>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/min*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
_output_shapes
: *
T0
?
>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/mulMulHdnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/RandomUniform>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/sub*
_output_shapes

:*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
T0
?
:dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniformAdd>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/mul>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/min*
_output_shapes

:*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
T0
?
dnn/hiddenlayer_2/kernel/part_0VarHandleOp*
_output_shapes
: *
shape
:*0
shared_name!dnn/hiddenlayer_2/kernel/part_0*
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0
?
@dnn/hiddenlayer_2/kernel/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_2/kernel/part_0*
_output_shapes
: 
?
&dnn/hiddenlayer_2/kernel/part_0/AssignAssignVariableOpdnn/hiddenlayer_2/kernel/part_0:dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform*
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0
?
3dnn/hiddenlayer_2/kernel/part_0/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/kernel/part_0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
dtype0*
_output_shapes

:
?
/dnn/hiddenlayer_2/bias/part_0/Initializer/zerosConst*0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0*
_output_shapes
:*
dtype0*
valueB*    
?
dnn/hiddenlayer_2/bias/part_0VarHandleOp*.
shared_namednn/hiddenlayer_2/bias/part_0*
_output_shapes
: *
shape:*
dtype0*0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0
?
>dnn/hiddenlayer_2/bias/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_2/bias/part_0*
_output_shapes
: 
?
$dnn/hiddenlayer_2/bias/part_0/AssignAssignVariableOpdnn/hiddenlayer_2/bias/part_0/dnn/hiddenlayer_2/bias/part_0/Initializer/zeros*0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0*
dtype0
?
1dnn/hiddenlayer_2/bias/part_0/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/bias/part_0*
dtype0*
_output_shapes
:*0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0
?
'dnn/hiddenlayer_2/kernel/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/kernel/part_0*
dtype0*
_output_shapes

:
v
dnn/hiddenlayer_2/kernelIdentity'dnn/hiddenlayer_2/kernel/ReadVariableOp*
T0*
_output_shapes

:
?
dnn/hiddenlayer_2/MatMulMatMuldnn/hiddenlayer_1/Reludnn/hiddenlayer_2/kernel*
T0*'
_output_shapes
:?????????

%dnn/hiddenlayer_2/bias/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/bias/part_0*
_output_shapes
:*
dtype0
n
dnn/hiddenlayer_2/biasIdentity%dnn/hiddenlayer_2/bias/ReadVariableOp*
T0*
_output_shapes
:
?
dnn/hiddenlayer_2/BiasAddBiasAdddnn/hiddenlayer_2/MatMuldnn/hiddenlayer_2/bias*
T0*'
_output_shapes
:?????????
k
dnn/hiddenlayer_2/ReluReludnn/hiddenlayer_2/BiasAdd*'
_output_shapes
:?????????*
T0
i
dnn/zero_fraction_2/SizeSizednn/hiddenlayer_2/Relu*
out_type0	*
T0*
_output_shapes
: 
e
dnn/zero_fraction_2/LessEqual/yConst*
dtype0	*
valueB	 R????*
_output_shapes
: 
?
dnn/zero_fraction_2/LessEqual	LessEqualdnn/zero_fraction_2/Sizednn/zero_fraction_2/LessEqual/y*
T0	*
_output_shapes
: 
?
dnn/zero_fraction_2/cond/SwitchSwitchdnn/zero_fraction_2/LessEqualdnn/zero_fraction_2/LessEqual*
T0
*
_output_shapes
: : 
q
!dnn/zero_fraction_2/cond/switch_tIdentity!dnn/zero_fraction_2/cond/Switch:1*
T0
*
_output_shapes
: 
o
!dnn/zero_fraction_2/cond/switch_fIdentitydnn/zero_fraction_2/cond/Switch*
_output_shapes
: *
T0

l
 dnn/zero_fraction_2/cond/pred_idIdentitydnn/zero_fraction_2/LessEqual*
T0
*
_output_shapes
: 
?
,dnn/zero_fraction_2/cond/count_nonzero/zerosConst"^dnn/zero_fraction_2/cond/switch_t*
_output_shapes
: *
valueB
 *    *
dtype0
?
/dnn/zero_fraction_2/cond/count_nonzero/NotEqualNotEqual8dnn/zero_fraction_2/cond/count_nonzero/NotEqual/Switch:1,dnn/zero_fraction_2/cond/count_nonzero/zeros*'
_output_shapes
:?????????*
T0
?
6dnn/zero_fraction_2/cond/count_nonzero/NotEqual/SwitchSwitchdnn/hiddenlayer_2/Relu dnn/zero_fraction_2/cond/pred_id*
T0*:
_output_shapes(
&:?????????:?????????*)
_class
loc:@dnn/hiddenlayer_2/Relu
?
+dnn/zero_fraction_2/cond/count_nonzero/CastCast/dnn/zero_fraction_2/cond/count_nonzero/NotEqual*

DstT0*'
_output_shapes
:?????????*

SrcT0

?
,dnn/zero_fraction_2/cond/count_nonzero/ConstConst"^dnn/zero_fraction_2/cond/switch_t*
valueB"       *
dtype0*
_output_shapes
:
?
4dnn/zero_fraction_2/cond/count_nonzero/nonzero_countSum+dnn/zero_fraction_2/cond/count_nonzero/Cast,dnn/zero_fraction_2/cond/count_nonzero/Const*
_output_shapes
: *
T0
?
dnn/zero_fraction_2/cond/CastCast4dnn/zero_fraction_2/cond/count_nonzero/nonzero_count*

DstT0	*
_output_shapes
: *

SrcT0
?
.dnn/zero_fraction_2/cond/count_nonzero_1/zerosConst"^dnn/zero_fraction_2/cond/switch_f*
valueB
 *    *
dtype0*
_output_shapes
: 
?
1dnn/zero_fraction_2/cond/count_nonzero_1/NotEqualNotEqual8dnn/zero_fraction_2/cond/count_nonzero_1/NotEqual/Switch.dnn/zero_fraction_2/cond/count_nonzero_1/zeros*
T0*'
_output_shapes
:?????????
?
8dnn/zero_fraction_2/cond/count_nonzero_1/NotEqual/SwitchSwitchdnn/hiddenlayer_2/Relu dnn/zero_fraction_2/cond/pred_id*
T0*)
_class
loc:@dnn/hiddenlayer_2/Relu*:
_output_shapes(
&:?????????:?????????
?
-dnn/zero_fraction_2/cond/count_nonzero_1/CastCast1dnn/zero_fraction_2/cond/count_nonzero_1/NotEqual*'
_output_shapes
:?????????*

DstT0	*

SrcT0

?
.dnn/zero_fraction_2/cond/count_nonzero_1/ConstConst"^dnn/zero_fraction_2/cond/switch_f*
valueB"       *
_output_shapes
:*
dtype0
?
6dnn/zero_fraction_2/cond/count_nonzero_1/nonzero_countSum-dnn/zero_fraction_2/cond/count_nonzero_1/Cast.dnn/zero_fraction_2/cond/count_nonzero_1/Const*
_output_shapes
: *
T0	
?
dnn/zero_fraction_2/cond/MergeMerge6dnn/zero_fraction_2/cond/count_nonzero_1/nonzero_countdnn/zero_fraction_2/cond/Cast*
T0	*
_output_shapes
: : *
N
?
*dnn/zero_fraction_2/counts_to_fraction/subSubdnn/zero_fraction_2/Sizednn/zero_fraction_2/cond/Merge*
T0	*
_output_shapes
: 
?
+dnn/zero_fraction_2/counts_to_fraction/CastCast*dnn/zero_fraction_2/counts_to_fraction/sub*

DstT0*

SrcT0	*
_output_shapes
: 

-dnn/zero_fraction_2/counts_to_fraction/Cast_1Castdnn/zero_fraction_2/Size*

SrcT0	*

DstT0*
_output_shapes
: 
?
.dnn/zero_fraction_2/counts_to_fraction/truedivRealDiv+dnn/zero_fraction_2/counts_to_fraction/Cast-dnn/zero_fraction_2/counts_to_fraction/Cast_1*
_output_shapes
: *
T0
y
dnn/zero_fraction_2/fractionIdentity.dnn/zero_fraction_2/counts_to_fraction/truediv*
_output_shapes
: *
T0
?
2dnn/dnn/hiddenlayer_2/fraction_of_zero_values/tagsConst*
_output_shapes
: *>
value5B3 B-dnn/dnn/hiddenlayer_2/fraction_of_zero_values*
dtype0
?
-dnn/dnn/hiddenlayer_2/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_2/fraction_of_zero_values/tagsdnn/zero_fraction_2/fraction*
_output_shapes
: *
T0
?
$dnn/dnn/hiddenlayer_2/activation/tagConst*
_output_shapes
: *
dtype0*1
value(B& B dnn/dnn/hiddenlayer_2/activation
?
 dnn/dnn/hiddenlayer_2/activationHistogramSummary$dnn/dnn/hiddenlayer_2/activation/tagdnn/hiddenlayer_2/Relu*
_output_shapes
: 
?
9dnn/logits/kernel/part_0/Initializer/random_uniform/shapeConst*
_output_shapes
:*
valueB"      *+
_class!
loc:@dnn/logits/kernel/part_0*
dtype0
?
7dnn/logits/kernel/part_0/Initializer/random_uniform/minConst*
valueB
 *dF??*
dtype0*+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes
: 
?
7dnn/logits/kernel/part_0/Initializer/random_uniform/maxConst*
_output_shapes
: *
valueB
 *dF?>*+
_class!
loc:@dnn/logits/kernel/part_0*
dtype0
?
Adnn/logits/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform9dnn/logits/kernel/part_0/Initializer/random_uniform/shape*
_output_shapes

:*
dtype0*
T0*+
_class!
loc:@dnn/logits/kernel/part_0*

seed*
seed2?
?
7dnn/logits/kernel/part_0/Initializer/random_uniform/subSub7dnn/logits/kernel/part_0/Initializer/random_uniform/max7dnn/logits/kernel/part_0/Initializer/random_uniform/min*
_output_shapes
: *
T0*+
_class!
loc:@dnn/logits/kernel/part_0
?
7dnn/logits/kernel/part_0/Initializer/random_uniform/mulMulAdnn/logits/kernel/part_0/Initializer/random_uniform/RandomUniform7dnn/logits/kernel/part_0/Initializer/random_uniform/sub*
T0*+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes

:
?
3dnn/logits/kernel/part_0/Initializer/random_uniformAdd7dnn/logits/kernel/part_0/Initializer/random_uniform/mul7dnn/logits/kernel/part_0/Initializer/random_uniform/min*
_output_shapes

:*+
_class!
loc:@dnn/logits/kernel/part_0*
T0
?
dnn/logits/kernel/part_0VarHandleOp*
_output_shapes
: *
shape
:*+
_class!
loc:@dnn/logits/kernel/part_0*)
shared_namednn/logits/kernel/part_0*
dtype0
?
9dnn/logits/kernel/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/logits/kernel/part_0*
_output_shapes
: 
?
dnn/logits/kernel/part_0/AssignAssignVariableOpdnn/logits/kernel/part_03dnn/logits/kernel/part_0/Initializer/random_uniform*+
_class!
loc:@dnn/logits/kernel/part_0*
dtype0
?
,dnn/logits/kernel/part_0/Read/ReadVariableOpReadVariableOpdnn/logits/kernel/part_0*
_output_shapes

:*+
_class!
loc:@dnn/logits/kernel/part_0*
dtype0
?
(dnn/logits/bias/part_0/Initializer/zerosConst*)
_class
loc:@dnn/logits/bias/part_0*
dtype0*
_output_shapes
:*
valueB*    
?
dnn/logits/bias/part_0VarHandleOp*)
_class
loc:@dnn/logits/bias/part_0*'
shared_namednn/logits/bias/part_0*
_output_shapes
: *
dtype0*
shape:
}
7dnn/logits/bias/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/logits/bias/part_0*
_output_shapes
: 
?
dnn/logits/bias/part_0/AssignAssignVariableOpdnn/logits/bias/part_0(dnn/logits/bias/part_0/Initializer/zeros*)
_class
loc:@dnn/logits/bias/part_0*
dtype0
?
*dnn/logits/bias/part_0/Read/ReadVariableOpReadVariableOpdnn/logits/bias/part_0*
_output_shapes
:*)
_class
loc:@dnn/logits/bias/part_0*
dtype0
y
 dnn/logits/kernel/ReadVariableOpReadVariableOpdnn/logits/kernel/part_0*
dtype0*
_output_shapes

:
h
dnn/logits/kernelIdentity dnn/logits/kernel/ReadVariableOp*
T0*
_output_shapes

:
x
dnn/logits/MatMulMatMuldnn/hiddenlayer_2/Reludnn/logits/kernel*
T0*'
_output_shapes
:?????????
q
dnn/logits/bias/ReadVariableOpReadVariableOpdnn/logits/bias/part_0*
dtype0*
_output_shapes
:
`
dnn/logits/biasIdentitydnn/logits/bias/ReadVariableOp*
T0*
_output_shapes
:
s
dnn/logits/BiasAddBiasAdddnn/logits/MatMuldnn/logits/bias*
T0*'
_output_shapes
:?????????
e
dnn/zero_fraction_3/SizeSizednn/logits/BiasAdd*
out_type0	*
_output_shapes
: *
T0
e
dnn/zero_fraction_3/LessEqual/yConst*
valueB	 R????*
_output_shapes
: *
dtype0	
?
dnn/zero_fraction_3/LessEqual	LessEqualdnn/zero_fraction_3/Sizednn/zero_fraction_3/LessEqual/y*
_output_shapes
: *
T0	
?
dnn/zero_fraction_3/cond/SwitchSwitchdnn/zero_fraction_3/LessEqualdnn/zero_fraction_3/LessEqual*
_output_shapes
: : *
T0

q
!dnn/zero_fraction_3/cond/switch_tIdentity!dnn/zero_fraction_3/cond/Switch:1*
_output_shapes
: *
T0

o
!dnn/zero_fraction_3/cond/switch_fIdentitydnn/zero_fraction_3/cond/Switch*
T0
*
_output_shapes
: 
l
 dnn/zero_fraction_3/cond/pred_idIdentitydnn/zero_fraction_3/LessEqual*
T0
*
_output_shapes
: 
?
,dnn/zero_fraction_3/cond/count_nonzero/zerosConst"^dnn/zero_fraction_3/cond/switch_t*
_output_shapes
: *
valueB
 *    *
dtype0
?
/dnn/zero_fraction_3/cond/count_nonzero/NotEqualNotEqual8dnn/zero_fraction_3/cond/count_nonzero/NotEqual/Switch:1,dnn/zero_fraction_3/cond/count_nonzero/zeros*'
_output_shapes
:?????????*
T0
?
6dnn/zero_fraction_3/cond/count_nonzero/NotEqual/SwitchSwitchdnn/logits/BiasAdd dnn/zero_fraction_3/cond/pred_id*:
_output_shapes(
&:?????????:?????????*%
_class
loc:@dnn/logits/BiasAdd*
T0
?
+dnn/zero_fraction_3/cond/count_nonzero/CastCast/dnn/zero_fraction_3/cond/count_nonzero/NotEqual*'
_output_shapes
:?????????*

DstT0*

SrcT0

?
,dnn/zero_fraction_3/cond/count_nonzero/ConstConst"^dnn/zero_fraction_3/cond/switch_t*
valueB"       *
_output_shapes
:*
dtype0
?
4dnn/zero_fraction_3/cond/count_nonzero/nonzero_countSum+dnn/zero_fraction_3/cond/count_nonzero/Cast,dnn/zero_fraction_3/cond/count_nonzero/Const*
T0*
_output_shapes
: 
?
dnn/zero_fraction_3/cond/CastCast4dnn/zero_fraction_3/cond/count_nonzero/nonzero_count*

SrcT0*
_output_shapes
: *

DstT0	
?
.dnn/zero_fraction_3/cond/count_nonzero_1/zerosConst"^dnn/zero_fraction_3/cond/switch_f*
valueB
 *    *
dtype0*
_output_shapes
: 
?
1dnn/zero_fraction_3/cond/count_nonzero_1/NotEqualNotEqual8dnn/zero_fraction_3/cond/count_nonzero_1/NotEqual/Switch.dnn/zero_fraction_3/cond/count_nonzero_1/zeros*
T0*'
_output_shapes
:?????????
?
8dnn/zero_fraction_3/cond/count_nonzero_1/NotEqual/SwitchSwitchdnn/logits/BiasAdd dnn/zero_fraction_3/cond/pred_id*:
_output_shapes(
&:?????????:?????????*%
_class
loc:@dnn/logits/BiasAdd*
T0
?
-dnn/zero_fraction_3/cond/count_nonzero_1/CastCast1dnn/zero_fraction_3/cond/count_nonzero_1/NotEqual*'
_output_shapes
:?????????*

SrcT0
*

DstT0	
?
.dnn/zero_fraction_3/cond/count_nonzero_1/ConstConst"^dnn/zero_fraction_3/cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
?
6dnn/zero_fraction_3/cond/count_nonzero_1/nonzero_countSum-dnn/zero_fraction_3/cond/count_nonzero_1/Cast.dnn/zero_fraction_3/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 
?
dnn/zero_fraction_3/cond/MergeMerge6dnn/zero_fraction_3/cond/count_nonzero_1/nonzero_countdnn/zero_fraction_3/cond/Cast*
T0	*
N*
_output_shapes
: : 
?
*dnn/zero_fraction_3/counts_to_fraction/subSubdnn/zero_fraction_3/Sizednn/zero_fraction_3/cond/Merge*
_output_shapes
: *
T0	
?
+dnn/zero_fraction_3/counts_to_fraction/CastCast*dnn/zero_fraction_3/counts_to_fraction/sub*
_output_shapes
: *

DstT0*

SrcT0	

-dnn/zero_fraction_3/counts_to_fraction/Cast_1Castdnn/zero_fraction_3/Size*

SrcT0	*
_output_shapes
: *

DstT0
?
.dnn/zero_fraction_3/counts_to_fraction/truedivRealDiv+dnn/zero_fraction_3/counts_to_fraction/Cast-dnn/zero_fraction_3/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
y
dnn/zero_fraction_3/fractionIdentity.dnn/zero_fraction_3/counts_to_fraction/truediv*
_output_shapes
: *
T0
?
+dnn/dnn/logits/fraction_of_zero_values/tagsConst*
_output_shapes
: *7
value.B, B&dnn/dnn/logits/fraction_of_zero_values*
dtype0
?
&dnn/dnn/logits/fraction_of_zero_valuesScalarSummary+dnn/dnn/logits/fraction_of_zero_values/tagsdnn/zero_fraction_3/fraction*
_output_shapes
: *
T0
w
dnn/dnn/logits/activation/tagConst*
dtype0*
_output_shapes
: **
value!B Bdnn/dnn/logits/activation
x
dnn/dnn/logits/activationHistogramSummarydnn/dnn/logits/activation/tagdnn/logits/BiasAdd*
_output_shapes
: 
?
:linear/linear_model/col_0/weights/part_0/Initializer/zerosConst*
_output_shapes

:*
dtype0*
valueB*    *;
_class1
/-loc:@linear/linear_model/col_0/weights/part_0
?
(linear/linear_model/col_0/weights/part_0VarHandleOp*9
shared_name*(linear/linear_model/col_0/weights/part_0*
dtype0*;
_class1
/-loc:@linear/linear_model/col_0/weights/part_0*
shape
:*
_output_shapes
: 
?
Ilinear/linear_model/col_0/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp(linear/linear_model/col_0/weights/part_0*
_output_shapes
: 
?
/linear/linear_model/col_0/weights/part_0/AssignAssignVariableOp(linear/linear_model/col_0/weights/part_0:linear/linear_model/col_0/weights/part_0/Initializer/zeros*
dtype0*;
_class1
/-loc:@linear/linear_model/col_0/weights/part_0
?
<linear/linear_model/col_0/weights/part_0/Read/ReadVariableOpReadVariableOp(linear/linear_model/col_0/weights/part_0*
_output_shapes

:*;
_class1
/-loc:@linear/linear_model/col_0/weights/part_0*
dtype0
?
:linear/linear_model/col_1/weights/part_0/Initializer/zerosConst*
_output_shapes

:*
valueB*    *;
_class1
/-loc:@linear/linear_model/col_1/weights/part_0*
dtype0
?
(linear/linear_model/col_1/weights/part_0VarHandleOp*9
shared_name*(linear/linear_model/col_1/weights/part_0*
shape
:*
dtype0*
_output_shapes
: *;
_class1
/-loc:@linear/linear_model/col_1/weights/part_0
?
Ilinear/linear_model/col_1/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp(linear/linear_model/col_1/weights/part_0*
_output_shapes
: 
?
/linear/linear_model/col_1/weights/part_0/AssignAssignVariableOp(linear/linear_model/col_1/weights/part_0:linear/linear_model/col_1/weights/part_0/Initializer/zeros*;
_class1
/-loc:@linear/linear_model/col_1/weights/part_0*
dtype0
?
<linear/linear_model/col_1/weights/part_0/Read/ReadVariableOpReadVariableOp(linear/linear_model/col_1/weights/part_0*;
_class1
/-loc:@linear/linear_model/col_1/weights/part_0*
_output_shapes

:*
dtype0
?
:linear/linear_model/col_2/weights/part_0/Initializer/zerosConst*
dtype0*;
_class1
/-loc:@linear/linear_model/col_2/weights/part_0*
valueB*    *
_output_shapes

:
?
(linear/linear_model/col_2/weights/part_0VarHandleOp*
dtype0*;
_class1
/-loc:@linear/linear_model/col_2/weights/part_0*
_output_shapes
: *
shape
:*9
shared_name*(linear/linear_model/col_2/weights/part_0
?
Ilinear/linear_model/col_2/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp(linear/linear_model/col_2/weights/part_0*
_output_shapes
: 
?
/linear/linear_model/col_2/weights/part_0/AssignAssignVariableOp(linear/linear_model/col_2/weights/part_0:linear/linear_model/col_2/weights/part_0/Initializer/zeros*;
_class1
/-loc:@linear/linear_model/col_2/weights/part_0*
dtype0
?
<linear/linear_model/col_2/weights/part_0/Read/ReadVariableOpReadVariableOp(linear/linear_model/col_2/weights/part_0*;
_class1
/-loc:@linear/linear_model/col_2/weights/part_0*
_output_shapes

:*
dtype0
?
:linear/linear_model/col_3/weights/part_0/Initializer/zerosConst*;
_class1
/-loc:@linear/linear_model/col_3/weights/part_0*
dtype0*
_output_shapes

:*
valueB*    
?
(linear/linear_model/col_3/weights/part_0VarHandleOp*;
_class1
/-loc:@linear/linear_model/col_3/weights/part_0*9
shared_name*(linear/linear_model/col_3/weights/part_0*
_output_shapes
: *
shape
:*
dtype0
?
Ilinear/linear_model/col_3/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp(linear/linear_model/col_3/weights/part_0*
_output_shapes
: 
?
/linear/linear_model/col_3/weights/part_0/AssignAssignVariableOp(linear/linear_model/col_3/weights/part_0:linear/linear_model/col_3/weights/part_0/Initializer/zeros*
dtype0*;
_class1
/-loc:@linear/linear_model/col_3/weights/part_0
?
<linear/linear_model/col_3/weights/part_0/Read/ReadVariableOpReadVariableOp(linear/linear_model/col_3/weights/part_0*;
_class1
/-loc:@linear/linear_model/col_3/weights/part_0*
_output_shapes

:*
dtype0
?
:linear/linear_model/col_4/weights/part_0/Initializer/zerosConst*
valueB*    *
_output_shapes

:*
dtype0*;
_class1
/-loc:@linear/linear_model/col_4/weights/part_0
?
(linear/linear_model/col_4/weights/part_0VarHandleOp*
dtype0*
_output_shapes
: *;
_class1
/-loc:@linear/linear_model/col_4/weights/part_0*9
shared_name*(linear/linear_model/col_4/weights/part_0*
shape
:
?
Ilinear/linear_model/col_4/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp(linear/linear_model/col_4/weights/part_0*
_output_shapes
: 
?
/linear/linear_model/col_4/weights/part_0/AssignAssignVariableOp(linear/linear_model/col_4/weights/part_0:linear/linear_model/col_4/weights/part_0/Initializer/zeros*;
_class1
/-loc:@linear/linear_model/col_4/weights/part_0*
dtype0
?
<linear/linear_model/col_4/weights/part_0/Read/ReadVariableOpReadVariableOp(linear/linear_model/col_4/weights/part_0*
_output_shapes

:*
dtype0*;
_class1
/-loc:@linear/linear_model/col_4/weights/part_0
?
9linear/linear_model/bias_weights/part_0/Initializer/zerosConst*
valueB*    *
dtype0*
_output_shapes
:*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0
?
'linear/linear_model/bias_weights/part_0VarHandleOp*
shape:*
dtype0*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*8
shared_name)'linear/linear_model/bias_weights/part_0*
_output_shapes
: 
?
Hlinear/linear_model/bias_weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp'linear/linear_model/bias_weights/part_0*
_output_shapes
: 
?
.linear/linear_model/bias_weights/part_0/AssignAssignVariableOp'linear/linear_model/bias_weights/part_09linear/linear_model/bias_weights/part_0/Initializer/zeros*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
dtype0
?
;linear/linear_model/bias_weights/part_0/Read/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:
?
Blinear/linear_model/linear_model/linear_model/col_0/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
>linear/linear_model/linear_model/linear_model/col_0/ExpandDims
ExpandDims	DecodeCSVBlinear/linear_model/linear_model/linear_model/col_0/ExpandDims/dim*'
_output_shapes
:?????????*
T0
?
Rlinear/linear_model/linear_model/linear_model/col_0/to_sparse_input/ignore_value/xConst*
dtype0*
_output_shapes
: *
valueB :
?????????
?
Llinear/linear_model/linear_model/linear_model/col_0/to_sparse_input/NotEqualNotEqual>linear/linear_model/linear_model/linear_model/col_0/ExpandDimsRlinear/linear_model/linear_model/linear_model/col_0/to_sparse_input/ignore_value/x*'
_output_shapes
:?????????*
T0
?
Klinear/linear_model/linear_model/linear_model/col_0/to_sparse_input/indicesWhereLlinear/linear_model/linear_model/linear_model/col_0/to_sparse_input/NotEqual*'
_output_shapes
:?????????
?
Jlinear/linear_model/linear_model/linear_model/col_0/to_sparse_input/valuesGatherNd>linear/linear_model/linear_model/linear_model/col_0/ExpandDimsKlinear/linear_model/linear_model/linear_model/col_0/to_sparse_input/indices*#
_output_shapes
:?????????*
Tparams0*
Tindices0	
?
Olinear/linear_model/linear_model/linear_model/col_0/to_sparse_input/dense_shapeShape>linear/linear_model/linear_model/linear_model/col_0/ExpandDims*
_output_shapes
:*
out_type0	*
T0
?
:linear/linear_model/linear_model/linear_model/col_0/valuesCastJlinear/linear_model/linear_model/linear_model/col_0/to_sparse_input/values*

SrcT0*#
_output_shapes
:?????????*

DstT0	
?
Alinear/linear_model/linear_model/linear_model/col_0/num_buckets/xConst*
_output_shapes
: *
dtype0*
value	B :
?
?linear/linear_model/linear_model/linear_model/col_0/num_bucketsCastAlinear/linear_model/linear_model/linear_model/col_0/num_buckets/x*

SrcT0*

DstT0	*
_output_shapes
: 
|
:linear/linear_model/linear_model/linear_model/col_0/zero/xConst*
_output_shapes
: *
value	B : *
dtype0
?
8linear/linear_model/linear_model/linear_model/col_0/zeroCast:linear/linear_model/linear_model/linear_model/col_0/zero/x*

SrcT0*
_output_shapes
: *

DstT0	
?
8linear/linear_model/linear_model/linear_model/col_0/LessLess:linear/linear_model/linear_model/linear_model/col_0/values8linear/linear_model/linear_model/linear_model/col_0/zero*#
_output_shapes
:?????????*
T0	
?
@linear/linear_model/linear_model/linear_model/col_0/GreaterEqualGreaterEqual:linear/linear_model/linear_model/linear_model/col_0/values?linear/linear_model/linear_model/linear_model/col_0/num_buckets*
T0	*#
_output_shapes
:?????????
?
@linear/linear_model/linear_model/linear_model/col_0/out_of_range	LogicalOr8linear/linear_model/linear_model/linear_model/col_0/Less@linear/linear_model/linear_model/linear_model/col_0/GreaterEqual*#
_output_shapes
:?????????
?
9linear/linear_model/linear_model/linear_model/col_0/ShapeShape:linear/linear_model/linear_model/linear_model/col_0/values*
_output_shapes
:*
T0	
|
:linear/linear_model/linear_model/linear_model/col_0/Cast/xConst*
dtype0*
value	B : *
_output_shapes
: 
?
8linear/linear_model/linear_model/linear_model/col_0/CastCast:linear/linear_model/linear_model/linear_model/col_0/Cast/x*

DstT0	*

SrcT0*
_output_shapes
: 
?
Blinear/linear_model/linear_model/linear_model/col_0/default_valuesFill9linear/linear_model/linear_model/linear_model/col_0/Shape8linear/linear_model/linear_model/linear_model/col_0/Cast*
T0	*#
_output_shapes
:?????????
?
:linear/linear_model/linear_model/linear_model/col_0/SelectSelect@linear/linear_model/linear_model/linear_model/col_0/out_of_rangeBlinear/linear_model/linear_model/linear_model/col_0/default_values:linear/linear_model/linear_model/linear_model/col_0/values*#
_output_shapes
:?????????*
T0	
?
@linear/linear_model/linear_model/linear_model/col_0/Shape_1/CastCastOlinear/linear_model/linear_model/linear_model/col_0/to_sparse_input/dense_shape*

SrcT0	*

DstT0*
_output_shapes
:
?
Glinear/linear_model/linear_model/linear_model/col_0/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
?
Ilinear/linear_model/linear_model/linear_model/col_0/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
?
Ilinear/linear_model/linear_model/linear_model/col_0/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Alinear/linear_model/linear_model/linear_model/col_0/strided_sliceStridedSlice@linear/linear_model/linear_model/linear_model/col_0/Shape_1/CastGlinear/linear_model/linear_model/linear_model/col_0/strided_slice/stackIlinear/linear_model/linear_model/linear_model/col_0/strided_slice/stack_1Ilinear/linear_model/linear_model/linear_model/col_0/strided_slice/stack_2*
Index0*
shrink_axis_mask*
T0*
_output_shapes
: 
?
>linear/linear_model/linear_model/linear_model/col_0/Cast_1/x/1Const*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
<linear/linear_model/linear_model/linear_model/col_0/Cast_1/xPackAlinear/linear_model/linear_model/linear_model/col_0/strided_slice>linear/linear_model/linear_model/linear_model/col_0/Cast_1/x/1*
T0*
N*
_output_shapes
:
?
:linear/linear_model/linear_model/linear_model/col_0/Cast_1Cast<linear/linear_model/linear_model/linear_model/col_0/Cast_1/x*

SrcT0*
_output_shapes
:*

DstT0	
?
Alinear/linear_model/linear_model/linear_model/col_0/SparseReshapeSparseReshapeKlinear/linear_model/linear_model/linear_model/col_0/to_sparse_input/indicesOlinear/linear_model/linear_model/linear_model/col_0/to_sparse_input/dense_shape:linear/linear_model/linear_model/linear_model/col_0/Cast_1*-
_output_shapes
:?????????:
?
Jlinear/linear_model/linear_model/linear_model/col_0/SparseReshape/IdentityIdentity:linear/linear_model/linear_model/linear_model/col_0/Select*
T0	*#
_output_shapes
:?????????
?
Llinear/linear_model/linear_model/linear_model/col_0/weighted_sum/Slice/beginConst*
dtype0*
valueB: *
_output_shapes
:
?
Klinear/linear_model/linear_model/linear_model/col_0/weighted_sum/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:
?
Flinear/linear_model/linear_model/linear_model/col_0/weighted_sum/SliceSliceClinear/linear_model/linear_model/linear_model/col_0/SparseReshape:1Llinear/linear_model/linear_model/linear_model/col_0/weighted_sum/Slice/beginKlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/Slice/size*
_output_shapes
:*
T0	*
Index0
?
Flinear/linear_model/linear_model/linear_model/col_0/weighted_sum/ConstConst*
valueB: *
_output_shapes
:*
dtype0
?
Elinear/linear_model/linear_model/linear_model/col_0/weighted_sum/ProdProdFlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/SliceFlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/Const*
T0	*
_output_shapes
: 
?
Qlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/GatherV2/indicesConst*
dtype0*
value	B :*
_output_shapes
: 
?
Nlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/GatherV2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
?
Ilinear/linear_model/linear_model/linear_model/col_0/weighted_sum/GatherV2GatherV2Clinear/linear_model/linear_model/linear_model/col_0/SparseReshape:1Qlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/GatherV2/indicesNlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/GatherV2/axis*
Tindices0*
Tparams0	*
_output_shapes
: *
Taxis0
?
Glinear/linear_model/linear_model/linear_model/col_0/weighted_sum/Cast/xPackElinear/linear_model/linear_model/linear_model/col_0/weighted_sum/ProdIlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/GatherV2*
N*
T0	*
_output_shapes
:
?
Nlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/SparseReshapeSparseReshapeAlinear/linear_model/linear_model/linear_model/col_0/SparseReshapeClinear/linear_model/linear_model/linear_model/col_0/SparseReshape:1Glinear/linear_model/linear_model/linear_model/col_0/weighted_sum/Cast/x*-
_output_shapes
:?????????:
?
Wlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/SparseReshape/IdentityIdentityJlinear/linear_model/linear_model/linear_model/col_0/SparseReshape/Identity*
T0	*#
_output_shapes
:?????????
?
Olinear/linear_model/linear_model/linear_model/col_0/weighted_sum/GreaterEqual/yConst*
dtype0	*
value	B	 R *
_output_shapes
: 
?
Mlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/GreaterEqualGreaterEqualWlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/SparseReshape/IdentityOlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:?????????
?
Flinear/linear_model/linear_model/linear_model/col_0/weighted_sum/WhereWhereMlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/GreaterEqual*'
_output_shapes
:?????????
?
Nlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
Hlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/ReshapeReshapeFlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/WhereNlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:?????????
?
Plinear/linear_model/linear_model/linear_model/col_0/weighted_sum/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
Klinear/linear_model/linear_model/linear_model/col_0/weighted_sum/GatherV2_1GatherV2Nlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/SparseReshapeHlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/ReshapePlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/GatherV2_1/axis*
Tparams0	*
Tindices0	*'
_output_shapes
:?????????*
Taxis0
?
Plinear/linear_model/linear_model/linear_model/col_0/weighted_sum/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
?
Klinear/linear_model/linear_model/linear_model/col_0/weighted_sum/GatherV2_2GatherV2Wlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/SparseReshape/IdentityHlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/ReshapePlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/GatherV2_2/axis*#
_output_shapes
:?????????*
Tparams0	*
Taxis0*
Tindices0	
?
Ilinear/linear_model/linear_model/linear_model/col_0/weighted_sum/IdentityIdentityPlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	
?
Zlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
value	B	 R *
dtype0	
?
hlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsKlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/GatherV2_1Klinear/linear_model/linear_model/linear_model/col_0/weighted_sum/GatherV2_2Ilinear/linear_model/linear_model/linear_model/col_0/weighted_sum/IdentityZlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:?????????:?????????:?????????:?????????
?
llinear/linear_model/linear_model/linear_model/col_0/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
valueB"        *
_output_shapes
:
?
nlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
?
nlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
valueB"      *
dtype0
?
flinear/linear_model/linear_model/linear_model/col_0/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicehlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsllinear/linear_model/linear_model/linear_model/col_0/weighted_sum/embedding_lookup_sparse/strided_slice/stacknlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1nlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
T0	*
Index0*
shrink_axis_mask*#
_output_shapes
:?????????*

begin_mask*
end_mask
?
]linear/linear_model/linear_model/linear_model/col_0/weighted_sum/embedding_lookup_sparse/CastCastflinear/linear_model/linear_model/linear_model/col_0/weighted_sum/embedding_lookup_sparse/strided_slice*

DstT0*#
_output_shapes
:?????????*

SrcT0	
?
_linear/linear_model/linear_model/linear_model/col_0/weighted_sum/embedding_lookup_sparse/UniqueUniquejlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:?????????:?????????*
T0	
?
ilinear/linear_model/linear_model/linear_model/col_0/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather(linear/linear_model/col_0/weights/part_0_linear/linear_model/linear_model/linear_model/col_0/weighted_sum/embedding_lookup_sparse/Unique*
Tindices0	*;
_class1
/-loc:@linear/linear_model/col_0/weights/part_0*'
_output_shapes
:?????????*
dtype0
?
rlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentityilinear/linear_model/linear_model/linear_model/col_0/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*'
_output_shapes
:?????????*;
_class1
/-loc:@linear/linear_model/col_0/weights/part_0
?
tlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identityrlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*
T0*'
_output_shapes
:?????????
?
Xlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/embedding_lookup_sparseSparseSegmentSumtlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1alinear/linear_model/linear_model/linear_model/col_0/weighted_sum/embedding_lookup_sparse/Unique:1]linear/linear_model/linear_model/linear_model/col_0/weighted_sum/embedding_lookup_sparse/Cast*'
_output_shapes
:?????????*
T0
?
Plinear/linear_model/linear_model/linear_model/col_0/weighted_sum/Reshape_1/shapeConst*
valueB"????   *
dtype0*
_output_shapes
:
?
Jlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/Reshape_1Reshapejlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2Plinear/linear_model/linear_model/linear_model/col_0/weighted_sum/Reshape_1/shape*'
_output_shapes
:?????????*
T0

?
Flinear/linear_model/linear_model/linear_model/col_0/weighted_sum/ShapeShapeXlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/embedding_lookup_sparse*
_output_shapes
:*
T0
?
Tlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/strided_slice/stackConst*
dtype0*
valueB:*
_output_shapes
:
?
Vlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
?
Vlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
?
Nlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/strided_sliceStridedSliceFlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/ShapeTlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/strided_slice/stackVlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/strided_slice/stack_1Vlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/strided_slice/stack_2*
T0*
shrink_axis_mask*
Index0*
_output_shapes
: 
?
Hlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/stack/0Const*
dtype0*
_output_shapes
: *
value	B :
?
Flinear/linear_model/linear_model/linear_model/col_0/weighted_sum/stackPackHlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/stack/0Nlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/strided_slice*
_output_shapes
:*
T0*
N
?
Elinear/linear_model/linear_model/linear_model/col_0/weighted_sum/TileTileJlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/Reshape_1Flinear/linear_model/linear_model/linear_model/col_0/weighted_sum/stack*
T0
*0
_output_shapes
:??????????????????
?
Klinear/linear_model/linear_model/linear_model/col_0/weighted_sum/zeros_like	ZerosLikeXlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:?????????
?
@linear/linear_model/linear_model/linear_model/col_0/weighted_sumSelectElinear/linear_model/linear_model/linear_model/col_0/weighted_sum/TileKlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/zeros_likeXlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:?????????*
T0
?
Glinear/linear_model/linear_model/linear_model/col_0/weighted_sum/Cast_1CastClinear/linear_model/linear_model/linear_model/col_0/SparseReshape:1*
_output_shapes
:*

DstT0*

SrcT0	
?
Nlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/Slice_1/beginConst*
valueB: *
_output_shapes
:*
dtype0
?
Mlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:
?
Hlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/Slice_1SliceGlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/Cast_1Nlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/Slice_1/beginMlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/Slice_1/size*
_output_shapes
:*
T0*
Index0
?
Hlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/Shape_1Shape@linear/linear_model/linear_model/linear_model/col_0/weighted_sum*
_output_shapes
:*
T0
?
Nlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/Slice_2/beginConst*
dtype0*
valueB:*
_output_shapes
:
?
Mlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/Slice_2/sizeConst*
valueB:
?????????*
dtype0*
_output_shapes
:
?
Hlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/Slice_2SliceHlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/Shape_1Nlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/Slice_2/beginMlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/Slice_2/size*
_output_shapes
:*
T0*
Index0
?
Llinear/linear_model/linear_model/linear_model/col_0/weighted_sum/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
?
Glinear/linear_model/linear_model/linear_model/col_0/weighted_sum/concatConcatV2Hlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/Slice_1Hlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/Slice_2Llinear/linear_model/linear_model/linear_model/col_0/weighted_sum/concat/axis*
T0*
_output_shapes
:*
N
?
Jlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/Reshape_2Reshape@linear/linear_model/linear_model/linear_model/col_0/weighted_sumGlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/concat*
T0*'
_output_shapes
:?????????
?
Blinear/linear_model/linear_model/linear_model/col_1/ExpandDims/dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
>linear/linear_model/linear_model/linear_model/col_1/ExpandDims
ExpandDimsDecodeCSV:1Blinear/linear_model/linear_model/linear_model/col_1/ExpandDims/dim*
T0*'
_output_shapes
:?????????
?
Rlinear/linear_model/linear_model/linear_model/col_1/to_sparse_input/ignore_value/xConst*
valueB :
?????????*
_output_shapes
: *
dtype0
?
Llinear/linear_model/linear_model/linear_model/col_1/to_sparse_input/NotEqualNotEqual>linear/linear_model/linear_model/linear_model/col_1/ExpandDimsRlinear/linear_model/linear_model/linear_model/col_1/to_sparse_input/ignore_value/x*'
_output_shapes
:?????????*
T0
?
Klinear/linear_model/linear_model/linear_model/col_1/to_sparse_input/indicesWhereLlinear/linear_model/linear_model/linear_model/col_1/to_sparse_input/NotEqual*'
_output_shapes
:?????????
?
Jlinear/linear_model/linear_model/linear_model/col_1/to_sparse_input/valuesGatherNd>linear/linear_model/linear_model/linear_model/col_1/ExpandDimsKlinear/linear_model/linear_model/linear_model/col_1/to_sparse_input/indices*
Tindices0	*#
_output_shapes
:?????????*
Tparams0
?
Olinear/linear_model/linear_model/linear_model/col_1/to_sparse_input/dense_shapeShape>linear/linear_model/linear_model/linear_model/col_1/ExpandDims*
out_type0	*
T0*
_output_shapes
:
?
:linear/linear_model/linear_model/linear_model/col_1/valuesCastJlinear/linear_model/linear_model/linear_model/col_1/to_sparse_input/values*

SrcT0*

DstT0	*#
_output_shapes
:?????????
?
Alinear/linear_model/linear_model/linear_model/col_1/num_buckets/xConst*
value	B :*
dtype0*
_output_shapes
: 
?
?linear/linear_model/linear_model/linear_model/col_1/num_bucketsCastAlinear/linear_model/linear_model/linear_model/col_1/num_buckets/x*

DstT0	*
_output_shapes
: *

SrcT0
|
:linear/linear_model/linear_model/linear_model/col_1/zero/xConst*
dtype0*
value	B : *
_output_shapes
: 
?
8linear/linear_model/linear_model/linear_model/col_1/zeroCast:linear/linear_model/linear_model/linear_model/col_1/zero/x*
_output_shapes
: *

DstT0	*

SrcT0
?
8linear/linear_model/linear_model/linear_model/col_1/LessLess:linear/linear_model/linear_model/linear_model/col_1/values8linear/linear_model/linear_model/linear_model/col_1/zero*#
_output_shapes
:?????????*
T0	
?
@linear/linear_model/linear_model/linear_model/col_1/GreaterEqualGreaterEqual:linear/linear_model/linear_model/linear_model/col_1/values?linear/linear_model/linear_model/linear_model/col_1/num_buckets*
T0	*#
_output_shapes
:?????????
?
@linear/linear_model/linear_model/linear_model/col_1/out_of_range	LogicalOr8linear/linear_model/linear_model/linear_model/col_1/Less@linear/linear_model/linear_model/linear_model/col_1/GreaterEqual*#
_output_shapes
:?????????
?
9linear/linear_model/linear_model/linear_model/col_1/ShapeShape:linear/linear_model/linear_model/linear_model/col_1/values*
T0	*
_output_shapes
:
|
:linear/linear_model/linear_model/linear_model/col_1/Cast/xConst*
value	B : *
_output_shapes
: *
dtype0
?
8linear/linear_model/linear_model/linear_model/col_1/CastCast:linear/linear_model/linear_model/linear_model/col_1/Cast/x*
_output_shapes
: *

SrcT0*

DstT0	
?
Blinear/linear_model/linear_model/linear_model/col_1/default_valuesFill9linear/linear_model/linear_model/linear_model/col_1/Shape8linear/linear_model/linear_model/linear_model/col_1/Cast*
T0	*#
_output_shapes
:?????????
?
:linear/linear_model/linear_model/linear_model/col_1/SelectSelect@linear/linear_model/linear_model/linear_model/col_1/out_of_rangeBlinear/linear_model/linear_model/linear_model/col_1/default_values:linear/linear_model/linear_model/linear_model/col_1/values*#
_output_shapes
:?????????*
T0	
?
@linear/linear_model/linear_model/linear_model/col_1/Shape_1/CastCastOlinear/linear_model/linear_model/linear_model/col_1/to_sparse_input/dense_shape*

SrcT0	*
_output_shapes
:*

DstT0
?
Glinear/linear_model/linear_model/linear_model/col_1/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:
?
Ilinear/linear_model/linear_model/linear_model/col_1/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
?
Ilinear/linear_model/linear_model/linear_model/col_1/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
?
Alinear/linear_model/linear_model/linear_model/col_1/strided_sliceStridedSlice@linear/linear_model/linear_model/linear_model/col_1/Shape_1/CastGlinear/linear_model/linear_model/linear_model/col_1/strided_slice/stackIlinear/linear_model/linear_model/linear_model/col_1/strided_slice/stack_1Ilinear/linear_model/linear_model/linear_model/col_1/strided_slice/stack_2*
Index0*
_output_shapes
: *
T0*
shrink_axis_mask
?
>linear/linear_model/linear_model/linear_model/col_1/Cast_1/x/1Const*
valueB :
?????????*
_output_shapes
: *
dtype0
?
<linear/linear_model/linear_model/linear_model/col_1/Cast_1/xPackAlinear/linear_model/linear_model/linear_model/col_1/strided_slice>linear/linear_model/linear_model/linear_model/col_1/Cast_1/x/1*
T0*
_output_shapes
:*
N
?
:linear/linear_model/linear_model/linear_model/col_1/Cast_1Cast<linear/linear_model/linear_model/linear_model/col_1/Cast_1/x*

SrcT0*
_output_shapes
:*

DstT0	
?
Alinear/linear_model/linear_model/linear_model/col_1/SparseReshapeSparseReshapeKlinear/linear_model/linear_model/linear_model/col_1/to_sparse_input/indicesOlinear/linear_model/linear_model/linear_model/col_1/to_sparse_input/dense_shape:linear/linear_model/linear_model/linear_model/col_1/Cast_1*-
_output_shapes
:?????????:
?
Jlinear/linear_model/linear_model/linear_model/col_1/SparseReshape/IdentityIdentity:linear/linear_model/linear_model/linear_model/col_1/Select*
T0	*#
_output_shapes
:?????????
?
Llinear/linear_model/linear_model/linear_model/col_1/weighted_sum/Slice/beginConst*
dtype0*
valueB: *
_output_shapes
:
?
Klinear/linear_model/linear_model/linear_model/col_1/weighted_sum/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:
?
Flinear/linear_model/linear_model/linear_model/col_1/weighted_sum/SliceSliceClinear/linear_model/linear_model/linear_model/col_1/SparseReshape:1Llinear/linear_model/linear_model/linear_model/col_1/weighted_sum/Slice/beginKlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/Slice/size*
_output_shapes
:*
Index0*
T0	
?
Flinear/linear_model/linear_model/linear_model/col_1/weighted_sum/ConstConst*
dtype0*
valueB: *
_output_shapes
:
?
Elinear/linear_model/linear_model/linear_model/col_1/weighted_sum/ProdProdFlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/SliceFlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/Const*
T0	*
_output_shapes
: 
?
Qlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/GatherV2/indicesConst*
value	B :*
_output_shapes
: *
dtype0
?
Nlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
?
Ilinear/linear_model/linear_model/linear_model/col_1/weighted_sum/GatherV2GatherV2Clinear/linear_model/linear_model/linear_model/col_1/SparseReshape:1Qlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/GatherV2/indicesNlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/GatherV2/axis*
_output_shapes
: *
Tindices0*
Tparams0	*
Taxis0
?
Glinear/linear_model/linear_model/linear_model/col_1/weighted_sum/Cast/xPackElinear/linear_model/linear_model/linear_model/col_1/weighted_sum/ProdIlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/GatherV2*
T0	*
_output_shapes
:*
N
?
Nlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/SparseReshapeSparseReshapeAlinear/linear_model/linear_model/linear_model/col_1/SparseReshapeClinear/linear_model/linear_model/linear_model/col_1/SparseReshape:1Glinear/linear_model/linear_model/linear_model/col_1/weighted_sum/Cast/x*-
_output_shapes
:?????????:
?
Wlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/SparseReshape/IdentityIdentityJlinear/linear_model/linear_model/linear_model/col_1/SparseReshape/Identity*#
_output_shapes
:?????????*
T0	
?
Olinear/linear_model/linear_model/linear_model/col_1/weighted_sum/GreaterEqual/yConst*
_output_shapes
: *
value	B	 R *
dtype0	
?
Mlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/GreaterEqualGreaterEqualWlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/SparseReshape/IdentityOlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:?????????
?
Flinear/linear_model/linear_model/linear_model/col_1/weighted_sum/WhereWhereMlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/GreaterEqual*'
_output_shapes
:?????????
?
Nlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
Hlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/ReshapeReshapeFlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/WhereNlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:?????????
?
Plinear/linear_model/linear_model/linear_model/col_1/weighted_sum/GatherV2_1/axisConst*
dtype0*
value	B : *
_output_shapes
: 
?
Klinear/linear_model/linear_model/linear_model/col_1/weighted_sum/GatherV2_1GatherV2Nlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/SparseReshapeHlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/ReshapePlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/GatherV2_1/axis*
Tparams0	*
Tindices0	*
Taxis0*'
_output_shapes
:?????????
?
Plinear/linear_model/linear_model/linear_model/col_1/weighted_sum/GatherV2_2/axisConst*
_output_shapes
: *
value	B : *
dtype0
?
Klinear/linear_model/linear_model/linear_model/col_1/weighted_sum/GatherV2_2GatherV2Wlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/SparseReshape/IdentityHlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/ReshapePlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/GatherV2_2/axis*
Taxis0*#
_output_shapes
:?????????*
Tparams0	*
Tindices0	
?
Ilinear/linear_model/linear_model/linear_model/col_1/weighted_sum/IdentityIdentityPlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
?
Zlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
?
hlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsKlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/GatherV2_1Klinear/linear_model/linear_model/linear_model/col_1/weighted_sum/GatherV2_2Ilinear/linear_model/linear_model/linear_model/col_1/weighted_sum/IdentityZlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:?????????:?????????:?????????:?????????
?
llinear/linear_model/linear_model/linear_model/col_1/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
valueB"        *
dtype0
?
nlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
?
nlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
?
flinear/linear_model/linear_model/linear_model/col_1/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicehlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsllinear/linear_model/linear_model/linear_model/col_1/weighted_sum/embedding_lookup_sparse/strided_slice/stacknlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1nlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
shrink_axis_mask*

begin_mask*
end_mask*
T0	*#
_output_shapes
:?????????*
Index0
?
]linear/linear_model/linear_model/linear_model/col_1/weighted_sum/embedding_lookup_sparse/CastCastflinear/linear_model/linear_model/linear_model/col_1/weighted_sum/embedding_lookup_sparse/strided_slice*

DstT0*#
_output_shapes
:?????????*

SrcT0	
?
_linear/linear_model/linear_model/linear_model/col_1/weighted_sum/embedding_lookup_sparse/UniqueUniquejlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:?????????:?????????*
T0	
?
ilinear/linear_model/linear_model/linear_model/col_1/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather(linear/linear_model/col_1/weights/part_0_linear/linear_model/linear_model/linear_model/col_1/weighted_sum/embedding_lookup_sparse/Unique*
Tindices0	*
dtype0*;
_class1
/-loc:@linear/linear_model/col_1/weights/part_0*'
_output_shapes
:?????????
?
rlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentityilinear/linear_model/linear_model/linear_model/col_1/weighted_sum/embedding_lookup_sparse/embedding_lookup*;
_class1
/-loc:@linear/linear_model/col_1/weights/part_0*
T0*'
_output_shapes
:?????????
?
tlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identityrlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*'
_output_shapes
:?????????*
T0
?
Xlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/embedding_lookup_sparseSparseSegmentSumtlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1alinear/linear_model/linear_model/linear_model/col_1/weighted_sum/embedding_lookup_sparse/Unique:1]linear/linear_model/linear_model/linear_model/col_1/weighted_sum/embedding_lookup_sparse/Cast*'
_output_shapes
:?????????*
T0
?
Plinear/linear_model/linear_model/linear_model/col_1/weighted_sum/Reshape_1/shapeConst*
valueB"????   *
dtype0*
_output_shapes
:
?
Jlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/Reshape_1Reshapejlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2Plinear/linear_model/linear_model/linear_model/col_1/weighted_sum/Reshape_1/shape*'
_output_shapes
:?????????*
T0

?
Flinear/linear_model/linear_model/linear_model/col_1/weighted_sum/ShapeShapeXlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:
?
Tlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
?
Vlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Vlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
?
Nlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/strided_sliceStridedSliceFlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/ShapeTlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/strided_slice/stackVlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/strided_slice/stack_1Vlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
?
Hlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
?
Flinear/linear_model/linear_model/linear_model/col_1/weighted_sum/stackPackHlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/stack/0Nlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/strided_slice*
T0*
_output_shapes
:*
N
?
Elinear/linear_model/linear_model/linear_model/col_1/weighted_sum/TileTileJlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/Reshape_1Flinear/linear_model/linear_model/linear_model/col_1/weighted_sum/stack*
T0
*0
_output_shapes
:??????????????????
?
Klinear/linear_model/linear_model/linear_model/col_1/weighted_sum/zeros_like	ZerosLikeXlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:?????????*
T0
?
@linear/linear_model/linear_model/linear_model/col_1/weighted_sumSelectElinear/linear_model/linear_model/linear_model/col_1/weighted_sum/TileKlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/zeros_likeXlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:?????????*
T0
?
Glinear/linear_model/linear_model/linear_model/col_1/weighted_sum/Cast_1CastClinear/linear_model/linear_model/linear_model/col_1/SparseReshape:1*

DstT0*
_output_shapes
:*

SrcT0	
?
Nlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/Slice_1/beginConst*
valueB: *
_output_shapes
:*
dtype0
?
Mlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/Slice_1/sizeConst*
_output_shapes
:*
valueB:*
dtype0
?
Hlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/Slice_1SliceGlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/Cast_1Nlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/Slice_1/beginMlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/Slice_1/size*
T0*
_output_shapes
:*
Index0
?
Hlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/Shape_1Shape@linear/linear_model/linear_model/linear_model/col_1/weighted_sum*
T0*
_output_shapes
:
?
Nlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/Slice_2/beginConst*
dtype0*
_output_shapes
:*
valueB:
?
Mlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
Hlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/Slice_2SliceHlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/Shape_1Nlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/Slice_2/beginMlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/Slice_2/size*
_output_shapes
:*
T0*
Index0
?
Llinear/linear_model/linear_model/linear_model/col_1/weighted_sum/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
?
Glinear/linear_model/linear_model/linear_model/col_1/weighted_sum/concatConcatV2Hlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/Slice_1Hlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/Slice_2Llinear/linear_model/linear_model/linear_model/col_1/weighted_sum/concat/axis*
_output_shapes
:*
T0*
N
?
Jlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/Reshape_2Reshape@linear/linear_model/linear_model/linear_model/col_1/weighted_sumGlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/concat*
T0*'
_output_shapes
:?????????
?
Blinear/linear_model/linear_model/linear_model/col_2/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
?????????
?
>linear/linear_model/linear_model/linear_model/col_2/ExpandDims
ExpandDimsDecodeCSV:2Blinear/linear_model/linear_model/linear_model/col_2/ExpandDims/dim*'
_output_shapes
:?????????*
T0
?
Rlinear/linear_model/linear_model/linear_model/col_2/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
valueB :
?????????*
dtype0
?
Llinear/linear_model/linear_model/linear_model/col_2/to_sparse_input/NotEqualNotEqual>linear/linear_model/linear_model/linear_model/col_2/ExpandDimsRlinear/linear_model/linear_model/linear_model/col_2/to_sparse_input/ignore_value/x*'
_output_shapes
:?????????*
T0
?
Klinear/linear_model/linear_model/linear_model/col_2/to_sparse_input/indicesWhereLlinear/linear_model/linear_model/linear_model/col_2/to_sparse_input/NotEqual*'
_output_shapes
:?????????
?
Jlinear/linear_model/linear_model/linear_model/col_2/to_sparse_input/valuesGatherNd>linear/linear_model/linear_model/linear_model/col_2/ExpandDimsKlinear/linear_model/linear_model/linear_model/col_2/to_sparse_input/indices*
Tindices0	*#
_output_shapes
:?????????*
Tparams0
?
Olinear/linear_model/linear_model/linear_model/col_2/to_sparse_input/dense_shapeShape>linear/linear_model/linear_model/linear_model/col_2/ExpandDims*
out_type0	*
_output_shapes
:*
T0
?
<linear/linear_model/linear_model/linear_model/col_2/AsStringAsStringJlinear/linear_model/linear_model/linear_model/col_2/to_sparse_input/values*#
_output_shapes
:?????????*
T0
?
:linear/linear_model/linear_model/linear_model/col_2/lookupStringToHashBucketFast<linear/linear_model/linear_model/linear_model/col_2/AsString*
num_buckets*#
_output_shapes
:?????????
?
>linear/linear_model/linear_model/linear_model/col_2/Shape/CastCastOlinear/linear_model/linear_model/linear_model/col_2/to_sparse_input/dense_shape*

DstT0*

SrcT0	*
_output_shapes
:
?
Glinear/linear_model/linear_model/linear_model/col_2/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
?
Ilinear/linear_model/linear_model/linear_model/col_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Ilinear/linear_model/linear_model/linear_model/col_2/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
?
Alinear/linear_model/linear_model/linear_model/col_2/strided_sliceStridedSlice>linear/linear_model/linear_model/linear_model/col_2/Shape/CastGlinear/linear_model/linear_model/linear_model/col_2/strided_slice/stackIlinear/linear_model/linear_model/linear_model/col_2/strided_slice/stack_1Ilinear/linear_model/linear_model/linear_model/col_2/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
?
<linear/linear_model/linear_model/linear_model/col_2/Cast/x/1Const*
_output_shapes
: *
valueB :
?????????*
dtype0
?
:linear/linear_model/linear_model/linear_model/col_2/Cast/xPackAlinear/linear_model/linear_model/linear_model/col_2/strided_slice<linear/linear_model/linear_model/linear_model/col_2/Cast/x/1*
_output_shapes
:*
N*
T0
?
8linear/linear_model/linear_model/linear_model/col_2/CastCast:linear/linear_model/linear_model/linear_model/col_2/Cast/x*

SrcT0*

DstT0	*
_output_shapes
:
?
Alinear/linear_model/linear_model/linear_model/col_2/SparseReshapeSparseReshapeKlinear/linear_model/linear_model/linear_model/col_2/to_sparse_input/indicesOlinear/linear_model/linear_model/linear_model/col_2/to_sparse_input/dense_shape8linear/linear_model/linear_model/linear_model/col_2/Cast*-
_output_shapes
:?????????:
?
Jlinear/linear_model/linear_model/linear_model/col_2/SparseReshape/IdentityIdentity:linear/linear_model/linear_model/linear_model/col_2/lookup*#
_output_shapes
:?????????*
T0	
?
Llinear/linear_model/linear_model/linear_model/col_2/weighted_sum/Slice/beginConst*
_output_shapes
:*
valueB: *
dtype0
?
Klinear/linear_model/linear_model/linear_model/col_2/weighted_sum/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:
?
Flinear/linear_model/linear_model/linear_model/col_2/weighted_sum/SliceSliceClinear/linear_model/linear_model/linear_model/col_2/SparseReshape:1Llinear/linear_model/linear_model/linear_model/col_2/weighted_sum/Slice/beginKlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:
?
Flinear/linear_model/linear_model/linear_model/col_2/weighted_sum/ConstConst*
_output_shapes
:*
valueB: *
dtype0
?
Elinear/linear_model/linear_model/linear_model/col_2/weighted_sum/ProdProdFlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/SliceFlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/Const*
T0	*
_output_shapes
: 
?
Qlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/GatherV2/indicesConst*
value	B :*
_output_shapes
: *
dtype0
?
Nlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
Ilinear/linear_model/linear_model/linear_model/col_2/weighted_sum/GatherV2GatherV2Clinear/linear_model/linear_model/linear_model/col_2/SparseReshape:1Qlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/GatherV2/indicesNlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/GatherV2/axis*
_output_shapes
: *
Tparams0	*
Tindices0*
Taxis0
?
Glinear/linear_model/linear_model/linear_model/col_2/weighted_sum/Cast/xPackElinear/linear_model/linear_model/linear_model/col_2/weighted_sum/ProdIlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/GatherV2*
T0	*
_output_shapes
:*
N
?
Nlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/SparseReshapeSparseReshapeAlinear/linear_model/linear_model/linear_model/col_2/SparseReshapeClinear/linear_model/linear_model/linear_model/col_2/SparseReshape:1Glinear/linear_model/linear_model/linear_model/col_2/weighted_sum/Cast/x*-
_output_shapes
:?????????:
?
Wlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/SparseReshape/IdentityIdentityJlinear/linear_model/linear_model/linear_model/col_2/SparseReshape/Identity*#
_output_shapes
:?????????*
T0	
?
Olinear/linear_model/linear_model/linear_model/col_2/weighted_sum/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?
Mlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/GreaterEqualGreaterEqualWlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/SparseReshape/IdentityOlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:?????????
?
Flinear/linear_model/linear_model/linear_model/col_2/weighted_sum/WhereWhereMlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/GreaterEqual*'
_output_shapes
:?????????
?
Nlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/Reshape/shapeConst*
valueB:
?????????*
dtype0*
_output_shapes
:
?
Hlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/ReshapeReshapeFlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/WhereNlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/Reshape/shape*#
_output_shapes
:?????????*
T0	
?
Plinear/linear_model/linear_model/linear_model/col_2/weighted_sum/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
?
Klinear/linear_model/linear_model/linear_model/col_2/weighted_sum/GatherV2_1GatherV2Nlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/SparseReshapeHlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/ReshapePlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/GatherV2_1/axis*
Tparams0	*
Tindices0	*'
_output_shapes
:?????????*
Taxis0
?
Plinear/linear_model/linear_model/linear_model/col_2/weighted_sum/GatherV2_2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
?
Klinear/linear_model/linear_model/linear_model/col_2/weighted_sum/GatherV2_2GatherV2Wlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/SparseReshape/IdentityHlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/ReshapePlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/GatherV2_2/axis*
Taxis0*
Tparams0	*#
_output_shapes
:?????????*
Tindices0	
?
Ilinear/linear_model/linear_model/linear_model/col_2/weighted_sum/IdentityIdentityPlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	
?
Zlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
value	B	 R *
dtype0	
?
hlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsKlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/GatherV2_1Klinear/linear_model/linear_model/linear_model/col_2/weighted_sum/GatherV2_2Ilinear/linear_model/linear_model/linear_model/col_2/weighted_sum/IdentityZlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/SparseFillEmptyRows/Const*T
_output_shapesB
@:?????????:?????????:?????????:?????????*
T0	
?
llinear/linear_model/linear_model/linear_model/col_2/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
?
nlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
?
nlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
?
flinear/linear_model/linear_model/linear_model/col_2/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicehlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsllinear/linear_model/linear_model/linear_model/col_2/weighted_sum/embedding_lookup_sparse/strided_slice/stacknlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1nlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
shrink_axis_mask*

begin_mask*
end_mask*
Index0*
T0	*#
_output_shapes
:?????????
?
]linear/linear_model/linear_model/linear_model/col_2/weighted_sum/embedding_lookup_sparse/CastCastflinear/linear_model/linear_model/linear_model/col_2/weighted_sum/embedding_lookup_sparse/strided_slice*

DstT0*#
_output_shapes
:?????????*

SrcT0	
?
_linear/linear_model/linear_model/linear_model/col_2/weighted_sum/embedding_lookup_sparse/UniqueUniquejlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:?????????:?????????
?
ilinear/linear_model/linear_model/linear_model/col_2/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather(linear/linear_model/col_2/weights/part_0_linear/linear_model/linear_model/linear_model/col_2/weighted_sum/embedding_lookup_sparse/Unique*
Tindices0	*
dtype0*;
_class1
/-loc:@linear/linear_model/col_2/weights/part_0*'
_output_shapes
:?????????
?
rlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentityilinear/linear_model/linear_model/linear_model/col_2/weighted_sum/embedding_lookup_sparse/embedding_lookup*;
_class1
/-loc:@linear/linear_model/col_2/weights/part_0*'
_output_shapes
:?????????*
T0
?
tlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identityrlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*'
_output_shapes
:?????????*
T0
?
Xlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/embedding_lookup_sparseSparseSegmentSumtlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1alinear/linear_model/linear_model/linear_model/col_2/weighted_sum/embedding_lookup_sparse/Unique:1]linear/linear_model/linear_model/linear_model/col_2/weighted_sum/embedding_lookup_sparse/Cast*'
_output_shapes
:?????????*
T0
?
Plinear/linear_model/linear_model/linear_model/col_2/weighted_sum/Reshape_1/shapeConst*
_output_shapes
:*
valueB"????   *
dtype0
?
Jlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/Reshape_1Reshapejlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2Plinear/linear_model/linear_model/linear_model/col_2/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:?????????
?
Flinear/linear_model/linear_model/linear_model/col_2/weighted_sum/ShapeShapeXlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/embedding_lookup_sparse*
_output_shapes
:*
T0
?
Tlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:
?
Vlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Vlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
?
Nlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/strided_sliceStridedSliceFlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/ShapeTlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/strided_slice/stackVlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/strided_slice/stack_1Vlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/strided_slice/stack_2*
_output_shapes
: *
Index0*
shrink_axis_mask*
T0
?
Hlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/stack/0Const*
dtype0*
value	B :*
_output_shapes
: 
?
Flinear/linear_model/linear_model/linear_model/col_2/weighted_sum/stackPackHlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/stack/0Nlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/strided_slice*
_output_shapes
:*
T0*
N
?
Elinear/linear_model/linear_model/linear_model/col_2/weighted_sum/TileTileJlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/Reshape_1Flinear/linear_model/linear_model/linear_model/col_2/weighted_sum/stack*
T0
*0
_output_shapes
:??????????????????
?
Klinear/linear_model/linear_model/linear_model/col_2/weighted_sum/zeros_like	ZerosLikeXlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:?????????*
T0
?
@linear/linear_model/linear_model/linear_model/col_2/weighted_sumSelectElinear/linear_model/linear_model/linear_model/col_2/weighted_sum/TileKlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/zeros_likeXlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:?????????
?
Glinear/linear_model/linear_model/linear_model/col_2/weighted_sum/Cast_1CastClinear/linear_model/linear_model/linear_model/col_2/SparseReshape:1*

SrcT0	*
_output_shapes
:*

DstT0
?
Nlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/Slice_1/beginConst*
dtype0*
valueB: *
_output_shapes
:
?
Mlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/Slice_1/sizeConst*
dtype0*
_output_shapes
:*
valueB:
?
Hlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/Slice_1SliceGlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/Cast_1Nlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/Slice_1/beginMlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/Slice_1/size*
_output_shapes
:*
Index0*
T0
?
Hlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/Shape_1Shape@linear/linear_model/linear_model/linear_model/col_2/weighted_sum*
T0*
_output_shapes
:
?
Nlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
?
Mlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/Slice_2/sizeConst*
dtype0*
valueB:
?????????*
_output_shapes
:
?
Hlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/Slice_2SliceHlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/Shape_1Nlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/Slice_2/beginMlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/Slice_2/size*
_output_shapes
:*
Index0*
T0
?
Llinear/linear_model/linear_model/linear_model/col_2/weighted_sum/concat/axisConst*
_output_shapes
: *
value	B : *
dtype0
?
Glinear/linear_model/linear_model/linear_model/col_2/weighted_sum/concatConcatV2Hlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/Slice_1Hlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/Slice_2Llinear/linear_model/linear_model/linear_model/col_2/weighted_sum/concat/axis*
_output_shapes
:*
N*
T0
?
Jlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/Reshape_2Reshape@linear/linear_model/linear_model/linear_model/col_2/weighted_sumGlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/concat*
T0*'
_output_shapes
:?????????
?
Blinear/linear_model/linear_model/linear_model/col_3/ExpandDims/dimConst*
_output_shapes
: *
valueB :
?????????*
dtype0
?
>linear/linear_model/linear_model/linear_model/col_3/ExpandDims
ExpandDimsDecodeCSV:3Blinear/linear_model/linear_model/linear_model/col_3/ExpandDims/dim*'
_output_shapes
:?????????*
T0
?
Rlinear/linear_model/linear_model/linear_model/col_3/to_sparse_input/ignore_value/xConst*
valueB :
?????????*
_output_shapes
: *
dtype0
?
Llinear/linear_model/linear_model/linear_model/col_3/to_sparse_input/NotEqualNotEqual>linear/linear_model/linear_model/linear_model/col_3/ExpandDimsRlinear/linear_model/linear_model/linear_model/col_3/to_sparse_input/ignore_value/x*
T0*'
_output_shapes
:?????????
?
Klinear/linear_model/linear_model/linear_model/col_3/to_sparse_input/indicesWhereLlinear/linear_model/linear_model/linear_model/col_3/to_sparse_input/NotEqual*'
_output_shapes
:?????????
?
Jlinear/linear_model/linear_model/linear_model/col_3/to_sparse_input/valuesGatherNd>linear/linear_model/linear_model/linear_model/col_3/ExpandDimsKlinear/linear_model/linear_model/linear_model/col_3/to_sparse_input/indices*#
_output_shapes
:?????????*
Tindices0	*
Tparams0
?
Olinear/linear_model/linear_model/linear_model/col_3/to_sparse_input/dense_shapeShape>linear/linear_model/linear_model/linear_model/col_3/ExpandDims*
T0*
out_type0	*
_output_shapes
:
?
:linear/linear_model/linear_model/linear_model/col_3/valuesCastJlinear/linear_model/linear_model/linear_model/col_3/to_sparse_input/values*

DstT0	*#
_output_shapes
:?????????*

SrcT0
?
Alinear/linear_model/linear_model/linear_model/col_3/num_buckets/xConst*
dtype0*
_output_shapes
: *
value	B :
?
?linear/linear_model/linear_model/linear_model/col_3/num_bucketsCastAlinear/linear_model/linear_model/linear_model/col_3/num_buckets/x*

DstT0	*

SrcT0*
_output_shapes
: 
|
:linear/linear_model/linear_model/linear_model/col_3/zero/xConst*
value	B : *
_output_shapes
: *
dtype0
?
8linear/linear_model/linear_model/linear_model/col_3/zeroCast:linear/linear_model/linear_model/linear_model/col_3/zero/x*

DstT0	*
_output_shapes
: *

SrcT0
?
8linear/linear_model/linear_model/linear_model/col_3/LessLess:linear/linear_model/linear_model/linear_model/col_3/values8linear/linear_model/linear_model/linear_model/col_3/zero*
T0	*#
_output_shapes
:?????????
?
@linear/linear_model/linear_model/linear_model/col_3/GreaterEqualGreaterEqual:linear/linear_model/linear_model/linear_model/col_3/values?linear/linear_model/linear_model/linear_model/col_3/num_buckets*
T0	*#
_output_shapes
:?????????
?
@linear/linear_model/linear_model/linear_model/col_3/out_of_range	LogicalOr8linear/linear_model/linear_model/linear_model/col_3/Less@linear/linear_model/linear_model/linear_model/col_3/GreaterEqual*#
_output_shapes
:?????????
?
9linear/linear_model/linear_model/linear_model/col_3/ShapeShape:linear/linear_model/linear_model/linear_model/col_3/values*
_output_shapes
:*
T0	
|
:linear/linear_model/linear_model/linear_model/col_3/Cast/xConst*
value	B : *
_output_shapes
: *
dtype0
?
8linear/linear_model/linear_model/linear_model/col_3/CastCast:linear/linear_model/linear_model/linear_model/col_3/Cast/x*

DstT0	*

SrcT0*
_output_shapes
: 
?
Blinear/linear_model/linear_model/linear_model/col_3/default_valuesFill9linear/linear_model/linear_model/linear_model/col_3/Shape8linear/linear_model/linear_model/linear_model/col_3/Cast*
T0	*#
_output_shapes
:?????????
?
:linear/linear_model/linear_model/linear_model/col_3/SelectSelect@linear/linear_model/linear_model/linear_model/col_3/out_of_rangeBlinear/linear_model/linear_model/linear_model/col_3/default_values:linear/linear_model/linear_model/linear_model/col_3/values*
T0	*#
_output_shapes
:?????????
?
@linear/linear_model/linear_model/linear_model/col_3/Shape_1/CastCastOlinear/linear_model/linear_model/linear_model/col_3/to_sparse_input/dense_shape*
_output_shapes
:*

SrcT0	*

DstT0
?
Glinear/linear_model/linear_model/linear_model/col_3/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:
?
Ilinear/linear_model/linear_model/linear_model/col_3/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
?
Ilinear/linear_model/linear_model/linear_model/col_3/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
?
Alinear/linear_model/linear_model/linear_model/col_3/strided_sliceStridedSlice@linear/linear_model/linear_model/linear_model/col_3/Shape_1/CastGlinear/linear_model/linear_model/linear_model/col_3/strided_slice/stackIlinear/linear_model/linear_model/linear_model/col_3/strided_slice/stack_1Ilinear/linear_model/linear_model/linear_model/col_3/strided_slice/stack_2*
T0*
Index0*
_output_shapes
: *
shrink_axis_mask
?
>linear/linear_model/linear_model/linear_model/col_3/Cast_1/x/1Const*
valueB :
?????????*
_output_shapes
: *
dtype0
?
<linear/linear_model/linear_model/linear_model/col_3/Cast_1/xPackAlinear/linear_model/linear_model/linear_model/col_3/strided_slice>linear/linear_model/linear_model/linear_model/col_3/Cast_1/x/1*
T0*
_output_shapes
:*
N
?
:linear/linear_model/linear_model/linear_model/col_3/Cast_1Cast<linear/linear_model/linear_model/linear_model/col_3/Cast_1/x*

DstT0	*

SrcT0*
_output_shapes
:
?
Alinear/linear_model/linear_model/linear_model/col_3/SparseReshapeSparseReshapeKlinear/linear_model/linear_model/linear_model/col_3/to_sparse_input/indicesOlinear/linear_model/linear_model/linear_model/col_3/to_sparse_input/dense_shape:linear/linear_model/linear_model/linear_model/col_3/Cast_1*-
_output_shapes
:?????????:
?
Jlinear/linear_model/linear_model/linear_model/col_3/SparseReshape/IdentityIdentity:linear/linear_model/linear_model/linear_model/col_3/Select*#
_output_shapes
:?????????*
T0	
?
Llinear/linear_model/linear_model/linear_model/col_3/weighted_sum/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
?
Klinear/linear_model/linear_model/linear_model/col_3/weighted_sum/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:
?
Flinear/linear_model/linear_model/linear_model/col_3/weighted_sum/SliceSliceClinear/linear_model/linear_model/linear_model/col_3/SparseReshape:1Llinear/linear_model/linear_model/linear_model/col_3/weighted_sum/Slice/beginKlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/Slice/size*
_output_shapes
:*
T0	*
Index0
?
Flinear/linear_model/linear_model/linear_model/col_3/weighted_sum/ConstConst*
_output_shapes
:*
valueB: *
dtype0
?
Elinear/linear_model/linear_model/linear_model/col_3/weighted_sum/ProdProdFlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/SliceFlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/Const*
_output_shapes
: *
T0	
?
Qlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
?
Nlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/GatherV2/axisConst*
dtype0*
value	B : *
_output_shapes
: 
?
Ilinear/linear_model/linear_model/linear_model/col_3/weighted_sum/GatherV2GatherV2Clinear/linear_model/linear_model/linear_model/col_3/SparseReshape:1Qlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/GatherV2/indicesNlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/GatherV2/axis*
_output_shapes
: *
Tindices0*
Taxis0*
Tparams0	
?
Glinear/linear_model/linear_model/linear_model/col_3/weighted_sum/Cast/xPackElinear/linear_model/linear_model/linear_model/col_3/weighted_sum/ProdIlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/GatherV2*
_output_shapes
:*
T0	*
N
?
Nlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/SparseReshapeSparseReshapeAlinear/linear_model/linear_model/linear_model/col_3/SparseReshapeClinear/linear_model/linear_model/linear_model/col_3/SparseReshape:1Glinear/linear_model/linear_model/linear_model/col_3/weighted_sum/Cast/x*-
_output_shapes
:?????????:
?
Wlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/SparseReshape/IdentityIdentityJlinear/linear_model/linear_model/linear_model/col_3/SparseReshape/Identity*#
_output_shapes
:?????????*
T0	
?
Olinear/linear_model/linear_model/linear_model/col_3/weighted_sum/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
?
Mlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/GreaterEqualGreaterEqualWlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/SparseReshape/IdentityOlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/GreaterEqual/y*#
_output_shapes
:?????????*
T0	
?
Flinear/linear_model/linear_model/linear_model/col_3/weighted_sum/WhereWhereMlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/GreaterEqual*'
_output_shapes
:?????????
?
Nlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/Reshape/shapeConst*
valueB:
?????????*
_output_shapes
:*
dtype0
?
Hlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/ReshapeReshapeFlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/WhereNlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:?????????
?
Plinear/linear_model/linear_model/linear_model/col_3/weighted_sum/GatherV2_1/axisConst*
dtype0*
value	B : *
_output_shapes
: 
?
Klinear/linear_model/linear_model/linear_model/col_3/weighted_sum/GatherV2_1GatherV2Nlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/SparseReshapeHlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/ReshapePlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/GatherV2_1/axis*'
_output_shapes
:?????????*
Tparams0	*
Tindices0	*
Taxis0
?
Plinear/linear_model/linear_model/linear_model/col_3/weighted_sum/GatherV2_2/axisConst*
_output_shapes
: *
value	B : *
dtype0
?
Klinear/linear_model/linear_model/linear_model/col_3/weighted_sum/GatherV2_2GatherV2Wlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/SparseReshape/IdentityHlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/ReshapePlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/GatherV2_2/axis*
Tindices0	*
Tparams0	*#
_output_shapes
:?????????*
Taxis0
?
Ilinear/linear_model/linear_model/linear_model/col_3/weighted_sum/IdentityIdentityPlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
?
Zlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
?
hlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsKlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/GatherV2_1Klinear/linear_model/linear_model/linear_model/col_3/weighted_sum/GatherV2_2Ilinear/linear_model/linear_model/linear_model/col_3/weighted_sum/IdentityZlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/SparseFillEmptyRows/Const*T
_output_shapesB
@:?????????:?????????:?????????:?????????*
T0	
?
llinear/linear_model/linear_model/linear_model/col_3/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
?
nlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
?
nlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
valueB"      *
dtype0
?
flinear/linear_model/linear_model/linear_model/col_3/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicehlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsllinear/linear_model/linear_model/linear_model/col_3/weighted_sum/embedding_lookup_sparse/strided_slice/stacknlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1nlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
shrink_axis_mask*
Index0*#
_output_shapes
:?????????*
end_mask*

begin_mask*
T0	
?
]linear/linear_model/linear_model/linear_model/col_3/weighted_sum/embedding_lookup_sparse/CastCastflinear/linear_model/linear_model/linear_model/col_3/weighted_sum/embedding_lookup_sparse/strided_slice*#
_output_shapes
:?????????*

DstT0*

SrcT0	
?
_linear/linear_model/linear_model/linear_model/col_3/weighted_sum/embedding_lookup_sparse/UniqueUniquejlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:?????????:?????????*
T0	
?
ilinear/linear_model/linear_model/linear_model/col_3/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather(linear/linear_model/col_3/weights/part_0_linear/linear_model/linear_model/linear_model/col_3/weighted_sum/embedding_lookup_sparse/Unique*'
_output_shapes
:?????????*
Tindices0	*
dtype0*;
_class1
/-loc:@linear/linear_model/col_3/weights/part_0
?
rlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentityilinear/linear_model/linear_model/linear_model/col_3/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*;
_class1
/-loc:@linear/linear_model/col_3/weights/part_0*'
_output_shapes
:?????????
?
tlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identityrlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*
T0*'
_output_shapes
:?????????
?
Xlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/embedding_lookup_sparseSparseSegmentSumtlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1alinear/linear_model/linear_model/linear_model/col_3/weighted_sum/embedding_lookup_sparse/Unique:1]linear/linear_model/linear_model/linear_model/col_3/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:?????????
?
Plinear/linear_model/linear_model/linear_model/col_3/weighted_sum/Reshape_1/shapeConst*
_output_shapes
:*
valueB"????   *
dtype0
?
Jlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/Reshape_1Reshapejlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2Plinear/linear_model/linear_model/linear_model/col_3/weighted_sum/Reshape_1/shape*'
_output_shapes
:?????????*
T0

?
Flinear/linear_model/linear_model/linear_model/col_3/weighted_sum/ShapeShapeXlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/embedding_lookup_sparse*
_output_shapes
:*
T0
?
Tlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/strided_slice/stackConst*
valueB:*
_output_shapes
:*
dtype0
?
Vlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
?
Vlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
?
Nlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/strided_sliceStridedSliceFlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/ShapeTlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/strided_slice/stackVlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/strided_slice/stack_1Vlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/strided_slice/stack_2*
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
?
Hlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/stack/0Const*
_output_shapes
: *
dtype0*
value	B :
?
Flinear/linear_model/linear_model/linear_model/col_3/weighted_sum/stackPackHlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/stack/0Nlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/strided_slice*
_output_shapes
:*
N*
T0
?
Elinear/linear_model/linear_model/linear_model/col_3/weighted_sum/TileTileJlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/Reshape_1Flinear/linear_model/linear_model/linear_model/col_3/weighted_sum/stack*0
_output_shapes
:??????????????????*
T0

?
Klinear/linear_model/linear_model/linear_model/col_3/weighted_sum/zeros_like	ZerosLikeXlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:?????????
?
@linear/linear_model/linear_model/linear_model/col_3/weighted_sumSelectElinear/linear_model/linear_model/linear_model/col_3/weighted_sum/TileKlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/zeros_likeXlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:?????????
?
Glinear/linear_model/linear_model/linear_model/col_3/weighted_sum/Cast_1CastClinear/linear_model/linear_model/linear_model/col_3/SparseReshape:1*

DstT0*

SrcT0	*
_output_shapes
:
?
Nlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/Slice_1/beginConst*
_output_shapes
:*
valueB: *
dtype0
?
Mlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:
?
Hlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/Slice_1SliceGlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/Cast_1Nlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/Slice_1/beginMlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/Slice_1/size*
T0*
Index0*
_output_shapes
:
?
Hlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/Shape_1Shape@linear/linear_model/linear_model/linear_model/col_3/weighted_sum*
_output_shapes
:*
T0
?
Nlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:
?
Mlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/Slice_2/sizeConst*
_output_shapes
:*
valueB:
?????????*
dtype0
?
Hlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/Slice_2SliceHlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/Shape_1Nlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/Slice_2/beginMlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/Slice_2/size*
_output_shapes
:*
Index0*
T0
?
Llinear/linear_model/linear_model/linear_model/col_3/weighted_sum/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
?
Glinear/linear_model/linear_model/linear_model/col_3/weighted_sum/concatConcatV2Hlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/Slice_1Hlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/Slice_2Llinear/linear_model/linear_model/linear_model/col_3/weighted_sum/concat/axis*
N*
_output_shapes
:*
T0
?
Jlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/Reshape_2Reshape@linear/linear_model/linear_model/linear_model/col_3/weighted_sumGlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/concat*
T0*'
_output_shapes
:?????????
?
Blinear/linear_model/linear_model/linear_model/col_4/ExpandDims/dimConst*
dtype0*
valueB :
?????????*
_output_shapes
: 
?
>linear/linear_model/linear_model/linear_model/col_4/ExpandDims
ExpandDimsDecodeCSV:4Blinear/linear_model/linear_model/linear_model/col_4/ExpandDims/dim*
T0*'
_output_shapes
:?????????
?
Rlinear/linear_model/linear_model/linear_model/col_4/to_sparse_input/ignore_value/xConst*
valueB :
?????????*
_output_shapes
: *
dtype0
?
Llinear/linear_model/linear_model/linear_model/col_4/to_sparse_input/NotEqualNotEqual>linear/linear_model/linear_model/linear_model/col_4/ExpandDimsRlinear/linear_model/linear_model/linear_model/col_4/to_sparse_input/ignore_value/x*
T0*'
_output_shapes
:?????????
?
Klinear/linear_model/linear_model/linear_model/col_4/to_sparse_input/indicesWhereLlinear/linear_model/linear_model/linear_model/col_4/to_sparse_input/NotEqual*'
_output_shapes
:?????????
?
Jlinear/linear_model/linear_model/linear_model/col_4/to_sparse_input/valuesGatherNd>linear/linear_model/linear_model/linear_model/col_4/ExpandDimsKlinear/linear_model/linear_model/linear_model/col_4/to_sparse_input/indices*#
_output_shapes
:?????????*
Tindices0	*
Tparams0
?
Olinear/linear_model/linear_model/linear_model/col_4/to_sparse_input/dense_shapeShape>linear/linear_model/linear_model/linear_model/col_4/ExpandDims*
_output_shapes
:*
out_type0	*
T0
?
:linear/linear_model/linear_model/linear_model/col_4/valuesCastJlinear/linear_model/linear_model/linear_model/col_4/to_sparse_input/values*#
_output_shapes
:?????????*

DstT0	*

SrcT0
?
Alinear/linear_model/linear_model/linear_model/col_4/num_buckets/xConst*
value	B :*
_output_shapes
: *
dtype0
?
?linear/linear_model/linear_model/linear_model/col_4/num_bucketsCastAlinear/linear_model/linear_model/linear_model/col_4/num_buckets/x*

DstT0	*
_output_shapes
: *

SrcT0
|
:linear/linear_model/linear_model/linear_model/col_4/zero/xConst*
_output_shapes
: *
dtype0*
value	B : 
?
8linear/linear_model/linear_model/linear_model/col_4/zeroCast:linear/linear_model/linear_model/linear_model/col_4/zero/x*

SrcT0*
_output_shapes
: *

DstT0	
?
8linear/linear_model/linear_model/linear_model/col_4/LessLess:linear/linear_model/linear_model/linear_model/col_4/values8linear/linear_model/linear_model/linear_model/col_4/zero*#
_output_shapes
:?????????*
T0	
?
@linear/linear_model/linear_model/linear_model/col_4/GreaterEqualGreaterEqual:linear/linear_model/linear_model/linear_model/col_4/values?linear/linear_model/linear_model/linear_model/col_4/num_buckets*
T0	*#
_output_shapes
:?????????
?
@linear/linear_model/linear_model/linear_model/col_4/out_of_range	LogicalOr8linear/linear_model/linear_model/linear_model/col_4/Less@linear/linear_model/linear_model/linear_model/col_4/GreaterEqual*#
_output_shapes
:?????????
?
9linear/linear_model/linear_model/linear_model/col_4/ShapeShape:linear/linear_model/linear_model/linear_model/col_4/values*
_output_shapes
:*
T0	
|
:linear/linear_model/linear_model/linear_model/col_4/Cast/xConst*
_output_shapes
: *
value	B : *
dtype0
?
8linear/linear_model/linear_model/linear_model/col_4/CastCast:linear/linear_model/linear_model/linear_model/col_4/Cast/x*

DstT0	*

SrcT0*
_output_shapes
: 
?
Blinear/linear_model/linear_model/linear_model/col_4/default_valuesFill9linear/linear_model/linear_model/linear_model/col_4/Shape8linear/linear_model/linear_model/linear_model/col_4/Cast*#
_output_shapes
:?????????*
T0	
?
:linear/linear_model/linear_model/linear_model/col_4/SelectSelect@linear/linear_model/linear_model/linear_model/col_4/out_of_rangeBlinear/linear_model/linear_model/linear_model/col_4/default_values:linear/linear_model/linear_model/linear_model/col_4/values*
T0	*#
_output_shapes
:?????????
?
@linear/linear_model/linear_model/linear_model/col_4/Shape_1/CastCastOlinear/linear_model/linear_model/linear_model/col_4/to_sparse_input/dense_shape*

DstT0*

SrcT0	*
_output_shapes
:
?
Glinear/linear_model/linear_model/linear_model/col_4/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
?
Ilinear/linear_model/linear_model/linear_model/col_4/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
?
Ilinear/linear_model/linear_model/linear_model/col_4/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
?
Alinear/linear_model/linear_model/linear_model/col_4/strided_sliceStridedSlice@linear/linear_model/linear_model/linear_model/col_4/Shape_1/CastGlinear/linear_model/linear_model/linear_model/col_4/strided_slice/stackIlinear/linear_model/linear_model/linear_model/col_4/strided_slice/stack_1Ilinear/linear_model/linear_model/linear_model/col_4/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
?
>linear/linear_model/linear_model/linear_model/col_4/Cast_1/x/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????
?
<linear/linear_model/linear_model/linear_model/col_4/Cast_1/xPackAlinear/linear_model/linear_model/linear_model/col_4/strided_slice>linear/linear_model/linear_model/linear_model/col_4/Cast_1/x/1*
N*
_output_shapes
:*
T0
?
:linear/linear_model/linear_model/linear_model/col_4/Cast_1Cast<linear/linear_model/linear_model/linear_model/col_4/Cast_1/x*
_output_shapes
:*

SrcT0*

DstT0	
?
Alinear/linear_model/linear_model/linear_model/col_4/SparseReshapeSparseReshapeKlinear/linear_model/linear_model/linear_model/col_4/to_sparse_input/indicesOlinear/linear_model/linear_model/linear_model/col_4/to_sparse_input/dense_shape:linear/linear_model/linear_model/linear_model/col_4/Cast_1*-
_output_shapes
:?????????:
?
Jlinear/linear_model/linear_model/linear_model/col_4/SparseReshape/IdentityIdentity:linear/linear_model/linear_model/linear_model/col_4/Select*
T0	*#
_output_shapes
:?????????
?
Llinear/linear_model/linear_model/linear_model/col_4/weighted_sum/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
?
Klinear/linear_model/linear_model/linear_model/col_4/weighted_sum/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
?
Flinear/linear_model/linear_model/linear_model/col_4/weighted_sum/SliceSliceClinear/linear_model/linear_model/linear_model/col_4/SparseReshape:1Llinear/linear_model/linear_model/linear_model/col_4/weighted_sum/Slice/beginKlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/Slice/size*
_output_shapes
:*
T0	*
Index0
?
Flinear/linear_model/linear_model/linear_model/col_4/weighted_sum/ConstConst*
_output_shapes
:*
valueB: *
dtype0
?
Elinear/linear_model/linear_model/linear_model/col_4/weighted_sum/ProdProdFlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/SliceFlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/Const*
T0	*
_output_shapes
: 
?
Qlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
?
Nlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
Ilinear/linear_model/linear_model/linear_model/col_4/weighted_sum/GatherV2GatherV2Clinear/linear_model/linear_model/linear_model/col_4/SparseReshape:1Qlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/GatherV2/indicesNlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/GatherV2/axis*
Taxis0*
_output_shapes
: *
Tparams0	*
Tindices0
?
Glinear/linear_model/linear_model/linear_model/col_4/weighted_sum/Cast/xPackElinear/linear_model/linear_model/linear_model/col_4/weighted_sum/ProdIlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/GatherV2*
_output_shapes
:*
N*
T0	
?
Nlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/SparseReshapeSparseReshapeAlinear/linear_model/linear_model/linear_model/col_4/SparseReshapeClinear/linear_model/linear_model/linear_model/col_4/SparseReshape:1Glinear/linear_model/linear_model/linear_model/col_4/weighted_sum/Cast/x*-
_output_shapes
:?????????:
?
Wlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/SparseReshape/IdentityIdentityJlinear/linear_model/linear_model/linear_model/col_4/SparseReshape/Identity*
T0	*#
_output_shapes
:?????????
?
Olinear/linear_model/linear_model/linear_model/col_4/weighted_sum/GreaterEqual/yConst*
value	B	 R *
_output_shapes
: *
dtype0	
?
Mlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/GreaterEqualGreaterEqualWlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/SparseReshape/IdentityOlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:?????????
?
Flinear/linear_model/linear_model/linear_model/col_4/weighted_sum/WhereWhereMlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/GreaterEqual*'
_output_shapes
:?????????
?
Nlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
?????????
?
Hlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/ReshapeReshapeFlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/WhereNlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/Reshape/shape*#
_output_shapes
:?????????*
T0	
?
Plinear/linear_model/linear_model/linear_model/col_4/weighted_sum/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
Klinear/linear_model/linear_model/linear_model/col_4/weighted_sum/GatherV2_1GatherV2Nlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/SparseReshapeHlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/ReshapePlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/GatherV2_1/axis*
Tindices0	*
Tparams0	*
Taxis0*'
_output_shapes
:?????????
?
Plinear/linear_model/linear_model/linear_model/col_4/weighted_sum/GatherV2_2/axisConst*
value	B : *
_output_shapes
: *
dtype0
?
Klinear/linear_model/linear_model/linear_model/col_4/weighted_sum/GatherV2_2GatherV2Wlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/SparseReshape/IdentityHlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/ReshapePlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/GatherV2_2/axis*
Tparams0	*
Taxis0*
Tindices0	*#
_output_shapes
:?????????
?
Ilinear/linear_model/linear_model/linear_model/col_4/weighted_sum/IdentityIdentityPlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	
?
Zlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
value	B	 R *
dtype0	
?
hlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsKlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/GatherV2_1Klinear/linear_model/linear_model/linear_model/col_4/weighted_sum/GatherV2_2Ilinear/linear_model/linear_model/linear_model/col_4/weighted_sum/IdentityZlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/SparseFillEmptyRows/Const*T
_output_shapesB
@:?????????:?????????:?????????:?????????*
T0	
?
llinear/linear_model/linear_model/linear_model/col_4/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
valueB"        *
dtype0
?
nlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
?
nlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
?
flinear/linear_model/linear_model/linear_model/col_4/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicehlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsllinear/linear_model/linear_model/linear_model/col_4/weighted_sum/embedding_lookup_sparse/strided_slice/stacknlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1nlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
shrink_axis_mask*#
_output_shapes
:?????????*
end_mask*
T0	*

begin_mask
?
]linear/linear_model/linear_model/linear_model/col_4/weighted_sum/embedding_lookup_sparse/CastCastflinear/linear_model/linear_model/linear_model/col_4/weighted_sum/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:?????????
?
_linear/linear_model/linear_model/linear_model/col_4/weighted_sum/embedding_lookup_sparse/UniqueUniquejlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:?????????:?????????
?
ilinear/linear_model/linear_model/linear_model/col_4/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather(linear/linear_model/col_4/weights/part_0_linear/linear_model/linear_model/linear_model/col_4/weighted_sum/embedding_lookup_sparse/Unique*
Tindices0	*'
_output_shapes
:?????????*
dtype0*;
_class1
/-loc:@linear/linear_model/col_4/weights/part_0
?
rlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentityilinear/linear_model/linear_model/linear_model/col_4/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*;
_class1
/-loc:@linear/linear_model/col_4/weights/part_0*'
_output_shapes
:?????????
?
tlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identityrlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*
T0*'
_output_shapes
:?????????
?
Xlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/embedding_lookup_sparseSparseSegmentSumtlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1alinear/linear_model/linear_model/linear_model/col_4/weighted_sum/embedding_lookup_sparse/Unique:1]linear/linear_model/linear_model/linear_model/col_4/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:?????????
?
Plinear/linear_model/linear_model/linear_model/col_4/weighted_sum/Reshape_1/shapeConst*
_output_shapes
:*
valueB"????   *
dtype0
?
Jlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/Reshape_1Reshapejlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2Plinear/linear_model/linear_model/linear_model/col_4/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:?????????
?
Flinear/linear_model/linear_model/linear_model/col_4/weighted_sum/ShapeShapeXlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/embedding_lookup_sparse*
_output_shapes
:*
T0
?
Tlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/strided_slice/stackConst*
valueB:*
_output_shapes
:*
dtype0
?
Vlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
?
Vlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Nlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/strided_sliceStridedSliceFlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/ShapeTlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/strided_slice/stackVlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/strided_slice/stack_1Vlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/strided_slice/stack_2*
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
?
Hlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/stack/0Const*
_output_shapes
: *
value	B :*
dtype0
?
Flinear/linear_model/linear_model/linear_model/col_4/weighted_sum/stackPackHlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/stack/0Nlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/strided_slice*
T0*
N*
_output_shapes
:
?
Elinear/linear_model/linear_model/linear_model/col_4/weighted_sum/TileTileJlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/Reshape_1Flinear/linear_model/linear_model/linear_model/col_4/weighted_sum/stack*
T0
*0
_output_shapes
:??????????????????
?
Klinear/linear_model/linear_model/linear_model/col_4/weighted_sum/zeros_like	ZerosLikeXlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:?????????
?
@linear/linear_model/linear_model/linear_model/col_4/weighted_sumSelectElinear/linear_model/linear_model/linear_model/col_4/weighted_sum/TileKlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/zeros_likeXlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:?????????
?
Glinear/linear_model/linear_model/linear_model/col_4/weighted_sum/Cast_1CastClinear/linear_model/linear_model/linear_model/col_4/SparseReshape:1*
_output_shapes
:*

DstT0*

SrcT0	
?
Nlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/Slice_1/beginConst*
valueB: *
_output_shapes
:*
dtype0
?
Mlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/Slice_1/sizeConst*
valueB:*
_output_shapes
:*
dtype0
?
Hlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/Slice_1SliceGlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/Cast_1Nlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/Slice_1/beginMlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/Slice_1/size*
Index0*
_output_shapes
:*
T0
?
Hlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/Shape_1Shape@linear/linear_model/linear_model/linear_model/col_4/weighted_sum*
_output_shapes
:*
T0
?
Nlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/Slice_2/beginConst*
dtype0*
_output_shapes
:*
valueB:
?
Mlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/Slice_2/sizeConst*
valueB:
?????????*
dtype0*
_output_shapes
:
?
Hlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/Slice_2SliceHlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/Shape_1Nlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/Slice_2/beginMlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/Slice_2/size*
T0*
_output_shapes
:*
Index0
?
Llinear/linear_model/linear_model/linear_model/col_4/weighted_sum/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
Glinear/linear_model/linear_model/linear_model/col_4/weighted_sum/concatConcatV2Hlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/Slice_1Hlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/Slice_2Llinear/linear_model/linear_model/linear_model/col_4/weighted_sum/concat/axis*
T0*
N*
_output_shapes
:
?
Jlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/Reshape_2Reshape@linear/linear_model/linear_model/linear_model/col_4/weighted_sumGlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/concat*'
_output_shapes
:?????????*
T0
?
Blinear/linear_model/linear_model/linear_model/weighted_sum_no_biasAddNJlinear/linear_model/linear_model/linear_model/col_0/weighted_sum/Reshape_2Jlinear/linear_model/linear_model/linear_model/col_1/weighted_sum/Reshape_2Jlinear/linear_model/linear_model/linear_model/col_2/weighted_sum/Reshape_2Jlinear/linear_model/linear_model/linear_model/col_3/weighted_sum/Reshape_2Jlinear/linear_model/linear_model/linear_model/col_4/weighted_sum/Reshape_2*'
_output_shapes
:?????????*
T0*
N
?
/linear/linear_model/bias_weights/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:
?
 linear/linear_model/bias_weightsIdentity/linear/linear_model/bias_weights/ReadVariableOp*
T0*
_output_shapes
:
?
:linear/linear_model/linear_model/linear_model/weighted_sumBiasAddBlinear/linear_model/linear_model/linear_model/weighted_sum_no_bias linear/linear_model/bias_weights*'
_output_shapes
:?????????*
T0
[
linear/bias/tagConst*
dtype0*
_output_shapes
: *
valueB Blinear/bias
?
!linear/bias/values/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:
o
linear/bias/valuesPack!linear/bias/values/ReadVariableOp*
N*
_output_shapes

:*
T0
\
linear/biasHistogramSummarylinear/bias/taglinear/bias/values*
_output_shapes
: 
?
3linear/zero_fraction/total_size/Size/ReadVariableOpReadVariableOp(linear/linear_model/col_0/weights/part_0*
_output_shapes

:*
dtype0
f
$linear/zero_fraction/total_size/SizeConst*
dtype0	*
_output_shapes
: *
value	B	 RW
?
5linear/zero_fraction/total_size/Size_1/ReadVariableOpReadVariableOp(linear/linear_model/col_1/weights/part_0*
dtype0*
_output_shapes

:
h
&linear/zero_fraction/total_size/Size_1Const*
dtype0	*
value	B	 R:*
_output_shapes
: 
?
5linear/zero_fraction/total_size/Size_2/ReadVariableOpReadVariableOp(linear/linear_model/col_2/weights/part_0*
_output_shapes

:*
dtype0
i
&linear/zero_fraction/total_size/Size_2Const*
dtype0	*
_output_shapes
: *
value
B	 R?
?
5linear/zero_fraction/total_size/Size_3/ReadVariableOpReadVariableOp(linear/linear_model/col_3/weights/part_0*
dtype0*
_output_shapes

:
h
&linear/zero_fraction/total_size/Size_3Const*
_output_shapes
: *
value	B	 RW*
dtype0	
?
5linear/zero_fraction/total_size/Size_4/ReadVariableOpReadVariableOp(linear/linear_model/col_4/weights/part_0*
dtype0*
_output_shapes

:
h
&linear/zero_fraction/total_size/Size_4Const*
_output_shapes
: *
value	B	 RW*
dtype0	
?
$linear/zero_fraction/total_size/AddNAddN$linear/zero_fraction/total_size/Size&linear/zero_fraction/total_size/Size_1&linear/zero_fraction/total_size/Size_2&linear/zero_fraction/total_size/Size_3&linear/zero_fraction/total_size/Size_4*
T0	*
N*
_output_shapes
: 
g
%linear/zero_fraction/total_zero/ConstConst*
value	B	 R *
_output_shapes
: *
dtype0	
?
%linear/zero_fraction/total_zero/EqualEqual$linear/zero_fraction/total_size/Size%linear/zero_fraction/total_zero/Const*
_output_shapes
: *
T0	
?
1linear/zero_fraction/total_zero/zero_count/SwitchSwitch%linear/zero_fraction/total_zero/Equal%linear/zero_fraction/total_zero/Equal*
_output_shapes
: : *
T0

?
3linear/zero_fraction/total_zero/zero_count/switch_tIdentity3linear/zero_fraction/total_zero/zero_count/Switch:1*
T0
*
_output_shapes
: 
?
3linear/zero_fraction/total_zero/zero_count/switch_fIdentity1linear/zero_fraction/total_zero/zero_count/Switch*
T0
*
_output_shapes
: 
?
2linear/zero_fraction/total_zero/zero_count/pred_idIdentity%linear/zero_fraction/total_zero/Equal*
T0
*
_output_shapes
: 
?
0linear/zero_fraction/total_zero/zero_count/ConstConst4^linear/zero_fraction/total_zero/zero_count/switch_t*
valueB
 *    *
_output_shapes
: *
dtype0
?
Glinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOpReadVariableOpNlinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp/Switch*
_output_shapes

:*
dtype0
?
Nlinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp/SwitchSwitch(linear/linear_model/col_0/weights/part_02linear/zero_fraction/total_zero/zero_count/pred_id*;
_class1
/-loc:@linear/linear_model/col_0/weights/part_0*
T0*
_output_shapes
: : 
?
=linear/zero_fraction/total_zero/zero_count/zero_fraction/SizeConst4^linear/zero_fraction/total_zero/zero_count/switch_f*
dtype0	*
value	B	 RW*
_output_shapes
: 
?
Dlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual/yConst4^linear/zero_fraction/total_zero/zero_count/switch_f*
dtype0	*
_output_shapes
: *
valueB	 R????
?
Blinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual	LessEqual=linear/zero_fraction/total_zero/zero_count/zero_fraction/SizeDlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual/y*
_output_shapes
: *
T0	
?
Dlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/SwitchSwitchBlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqualBlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual*
T0
*
_output_shapes
: : 
?
Flinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_tIdentityFlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Switch:1*
T0
*
_output_shapes
: 
?
Flinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_fIdentityDlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Switch*
_output_shapes
: *
T0

?
Elinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_idIdentityBlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual*
T0
*
_output_shapes
: 
?
Qlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/zerosConstG^linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *    
?
Tlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqualNotEqual]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Qlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/zeros*
_output_shapes

:*
T0
?
[linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchGlinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOpElinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id*(
_output_shapes
::*Z
_classP
NLloc:@linear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp*
T0
?
Plinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/CastCastTlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual*
_output_shapes

:*

SrcT0
*

DstT0
?
Qlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/ConstConstG^linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_t*
_output_shapes
:*
valueB"       *
dtype0
?
Ylinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/nonzero_countSumPlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/CastQlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/Const*
T0*
_output_shapes
: 
?
Blinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/CastCastYlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/nonzero_count*

DstT0	*
_output_shapes
: *

SrcT0
?
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/zerosConstG^linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_f*
dtype0*
_output_shapes
: *
valueB
 *    
?
Vlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/zeros*
T0*
_output_shapes

:
?
]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchGlinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOpElinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id*Z
_classP
NLloc:@linear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp*
T0*(
_output_shapes
::
?
Rlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/CastCastVlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual*

DstT0	*
_output_shapes

:*

SrcT0

?
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/ConstConstG^linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
?
[linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/nonzero_countSumRlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/CastSlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 
?
Clinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/MergeMerge[linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/nonzero_countBlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Cast*
N*
T0	*
_output_shapes
: : 
?
Olinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/subSub=linear/zero_fraction/total_zero/zero_count/zero_fraction/SizeClinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Merge*
T0	*
_output_shapes
: 
?
Plinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/CastCastOlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/sub*

SrcT0	*

DstT0*
_output_shapes
: 
?
Rlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/Cast_1Cast=linear/zero_fraction/total_zero/zero_count/zero_fraction/Size*

SrcT0	*

DstT0*
_output_shapes
: 
?
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/truedivRealDivPlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/CastRlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/Cast_1*
_output_shapes
: *
T0
?
Alinear/zero_fraction/total_zero/zero_count/zero_fraction/fractionIdentitySlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 
?
2linear/zero_fraction/total_zero/zero_count/ToFloatCast9linear/zero_fraction/total_zero/zero_count/ToFloat/Switch*

SrcT0	*
_output_shapes
: *

DstT0
?
9linear/zero_fraction/total_zero/zero_count/ToFloat/SwitchSwitch$linear/zero_fraction/total_size/Size2linear/zero_fraction/total_zero/zero_count/pred_id*
T0	*7
_class-
+)loc:@linear/zero_fraction/total_size/Size*
_output_shapes
: : 
?
.linear/zero_fraction/total_zero/zero_count/mulMulAlinear/zero_fraction/total_zero/zero_count/zero_fraction/fraction2linear/zero_fraction/total_zero/zero_count/ToFloat*
_output_shapes
: *
T0
?
0linear/zero_fraction/total_zero/zero_count/MergeMerge.linear/zero_fraction/total_zero/zero_count/mul0linear/zero_fraction/total_zero/zero_count/Const*
_output_shapes
: : *
N*
T0
i
'linear/zero_fraction/total_zero/Const_1Const*
value	B	 R *
_output_shapes
: *
dtype0	
?
'linear/zero_fraction/total_zero/Equal_1Equal&linear/zero_fraction/total_size/Size_1'linear/zero_fraction/total_zero/Const_1*
T0	*
_output_shapes
: 
?
3linear/zero_fraction/total_zero/zero_count_1/SwitchSwitch'linear/zero_fraction/total_zero/Equal_1'linear/zero_fraction/total_zero/Equal_1*
_output_shapes
: : *
T0

?
5linear/zero_fraction/total_zero/zero_count_1/switch_tIdentity5linear/zero_fraction/total_zero/zero_count_1/Switch:1*
T0
*
_output_shapes
: 
?
5linear/zero_fraction/total_zero/zero_count_1/switch_fIdentity3linear/zero_fraction/total_zero/zero_count_1/Switch*
T0
*
_output_shapes
: 
?
4linear/zero_fraction/total_zero/zero_count_1/pred_idIdentity'linear/zero_fraction/total_zero/Equal_1*
_output_shapes
: *
T0

?
2linear/zero_fraction/total_zero/zero_count_1/ConstConst6^linear/zero_fraction/total_zero/zero_count_1/switch_t*
dtype0*
_output_shapes
: *
valueB
 *    
?
Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOpReadVariableOpPlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp/Switch*
dtype0*
_output_shapes

:
?
Plinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp/SwitchSwitch(linear/linear_model/col_1/weights/part_04linear/zero_fraction/total_zero/zero_count_1/pred_id*;
_class1
/-loc:@linear/linear_model/col_1/weights/part_0*
_output_shapes
: : *
T0
?
?linear/zero_fraction/total_zero/zero_count_1/zero_fraction/SizeConst6^linear/zero_fraction/total_zero/zero_count_1/switch_f*
dtype0	*
value	B	 R:*
_output_shapes
: 
?
Flinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual/yConst6^linear/zero_fraction/total_zero/zero_count_1/switch_f*
_output_shapes
: *
dtype0	*
valueB	 R????
?
Dlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual	LessEqual?linear/zero_fraction/total_zero/zero_count_1/zero_fraction/SizeFlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual/y*
_output_shapes
: *
T0	
?
Flinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/SwitchSwitchDlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqualDlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual*
T0
*
_output_shapes
: : 
?
Hlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_tIdentityHlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Switch:1*
_output_shapes
: *
T0

?
Hlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_fIdentityFlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Switch*
_output_shapes
: *
T0

?
Glinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_idIdentityDlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual*
_output_shapes
: *
T0

?
Slinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/zerosConstI^linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *    
?
Vlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Slinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/zeros*
_output_shapes

:*
T0
?
]linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id*
T0*(
_output_shapes
::*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp
?
Rlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/CastCastVlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual*
_output_shapes

:*

SrcT0
*

DstT0
?
Slinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/ConstConstI^linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_t*
dtype0*
valueB"       *
_output_shapes
:
?
[linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/nonzero_countSumRlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/CastSlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/Const*
_output_shapes
: *
T0
?
Dlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/CastCast[linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/nonzero_count*
_output_shapes
: *

SrcT0*

DstT0	
?
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/zerosConstI^linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_f*
dtype0*
_output_shapes
: *
valueB
 *    
?
Xlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchUlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/zeros*
T0*
_output_shapes

:
?
_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp*(
_output_shapes
::
?
Tlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/CastCastXlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual*

SrcT0
*
_output_shapes

:*

DstT0	
?
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/ConstConstI^linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_f*
valueB"       *
_output_shapes
:*
dtype0
?
]linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/nonzero_countSumTlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/CastUlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 
?
Elinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/MergeMerge]linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/nonzero_countDlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Cast*
N*
T0	*
_output_shapes
: : 
?
Qlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/subSub?linear/zero_fraction/total_zero/zero_count_1/zero_fraction/SizeElinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Merge*
T0	*
_output_shapes
: 
?
Rlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/CastCastQlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/sub*

DstT0*

SrcT0	*
_output_shapes
: 
?
Tlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/Cast_1Cast?linear/zero_fraction/total_zero/zero_count_1/zero_fraction/Size*

DstT0*

SrcT0	*
_output_shapes
: 
?
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/truedivRealDivRlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/CastTlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/Cast_1*
_output_shapes
: *
T0
?
Clinear/zero_fraction/total_zero/zero_count_1/zero_fraction/fractionIdentityUlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/truediv*
_output_shapes
: *
T0
?
4linear/zero_fraction/total_zero/zero_count_1/ToFloatCast;linear/zero_fraction/total_zero/zero_count_1/ToFloat/Switch*

DstT0*
_output_shapes
: *

SrcT0	
?
;linear/zero_fraction/total_zero/zero_count_1/ToFloat/SwitchSwitch&linear/zero_fraction/total_size/Size_14linear/zero_fraction/total_zero/zero_count_1/pred_id*
_output_shapes
: : *
T0	*9
_class/
-+loc:@linear/zero_fraction/total_size/Size_1
?
0linear/zero_fraction/total_zero/zero_count_1/mulMulClinear/zero_fraction/total_zero/zero_count_1/zero_fraction/fraction4linear/zero_fraction/total_zero/zero_count_1/ToFloat*
_output_shapes
: *
T0
?
2linear/zero_fraction/total_zero/zero_count_1/MergeMerge0linear/zero_fraction/total_zero/zero_count_1/mul2linear/zero_fraction/total_zero/zero_count_1/Const*
T0*
_output_shapes
: : *
N
i
'linear/zero_fraction/total_zero/Const_2Const*
dtype0	*
_output_shapes
: *
value	B	 R 
?
'linear/zero_fraction/total_zero/Equal_2Equal&linear/zero_fraction/total_size/Size_2'linear/zero_fraction/total_zero/Const_2*
T0	*
_output_shapes
: 
?
3linear/zero_fraction/total_zero/zero_count_2/SwitchSwitch'linear/zero_fraction/total_zero/Equal_2'linear/zero_fraction/total_zero/Equal_2*
T0
*
_output_shapes
: : 
?
5linear/zero_fraction/total_zero/zero_count_2/switch_tIdentity5linear/zero_fraction/total_zero/zero_count_2/Switch:1*
T0
*
_output_shapes
: 
?
5linear/zero_fraction/total_zero/zero_count_2/switch_fIdentity3linear/zero_fraction/total_zero/zero_count_2/Switch*
T0
*
_output_shapes
: 
?
4linear/zero_fraction/total_zero/zero_count_2/pred_idIdentity'linear/zero_fraction/total_zero/Equal_2*
_output_shapes
: *
T0

?
2linear/zero_fraction/total_zero/zero_count_2/ConstConst6^linear/zero_fraction/total_zero/zero_count_2/switch_t*
dtype0*
_output_shapes
: *
valueB
 *    
?
Ilinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOpReadVariableOpPlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOp/Switch*
dtype0*
_output_shapes

:
?
Plinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOp/SwitchSwitch(linear/linear_model/col_2/weights/part_04linear/zero_fraction/total_zero/zero_count_2/pred_id*
T0*;
_class1
/-loc:@linear/linear_model/col_2/weights/part_0*
_output_shapes
: : 
?
?linear/zero_fraction/total_zero/zero_count_2/zero_fraction/SizeConst6^linear/zero_fraction/total_zero/zero_count_2/switch_f*
value
B	 R?*
dtype0	*
_output_shapes
: 
?
Flinear/zero_fraction/total_zero/zero_count_2/zero_fraction/LessEqual/yConst6^linear/zero_fraction/total_zero/zero_count_2/switch_f*
valueB	 R????*
_output_shapes
: *
dtype0	
?
Dlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/LessEqual	LessEqual?linear/zero_fraction/total_zero/zero_count_2/zero_fraction/SizeFlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
?
Flinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/SwitchSwitchDlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/LessEqualDlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/LessEqual*
_output_shapes
: : *
T0

?
Hlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_tIdentityHlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/Switch:1*
_output_shapes
: *
T0

?
Hlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_fIdentityFlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/Switch*
T0
*
_output_shapes
: 
?
Glinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_idIdentityDlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/LessEqual*
_output_shapes
: *
T0

?
Slinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/zerosConstI^linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_t*
dtype0*
valueB
 *    *
_output_shapes
: 
?
Vlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Slinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/zeros*
T0*
_output_shapes

:
?
]linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_id*
T0*(
_output_shapes
::*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOp
?
Rlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/CastCastVlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/NotEqual*

SrcT0
*

DstT0*
_output_shapes

:
?
Slinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/ConstConstI^linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_t*
valueB"       *
_output_shapes
:*
dtype0
?
[linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/nonzero_countSumRlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/CastSlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/Const*
_output_shapes
: *
T0
?
Dlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/CastCast[linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/nonzero_count*

SrcT0*

DstT0	*
_output_shapes
: 
?
Ulinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/zerosConstI^linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_f*
dtype0*
_output_shapes
: *
valueB
 *    
?
Xlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchUlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/zeros*
_output_shapes

:*
T0
?
_linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_id*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOp*
T0*(
_output_shapes
::
?
Tlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/CastCastXlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/NotEqual*
_output_shapes

:*

SrcT0
*

DstT0	
?
Ulinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/ConstConstI^linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_f*
dtype0*
valueB"       *
_output_shapes
:
?
]linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/nonzero_countSumTlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/CastUlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/Const*
_output_shapes
: *
T0	
?
Elinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/MergeMerge]linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/nonzero_countDlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/Cast*
N*
_output_shapes
: : *
T0	
?
Qlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/subSub?linear/zero_fraction/total_zero/zero_count_2/zero_fraction/SizeElinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/Merge*
_output_shapes
: *
T0	
?
Rlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/CastCastQlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/sub*
_output_shapes
: *

SrcT0	*

DstT0
?
Tlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/Cast_1Cast?linear/zero_fraction/total_zero/zero_count_2/zero_fraction/Size*

SrcT0	*

DstT0*
_output_shapes
: 
?
Ulinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/truedivRealDivRlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/CastTlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/Cast_1*
_output_shapes
: *
T0
?
Clinear/zero_fraction/total_zero/zero_count_2/zero_fraction/fractionIdentityUlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 
?
4linear/zero_fraction/total_zero/zero_count_2/ToFloatCast;linear/zero_fraction/total_zero/zero_count_2/ToFloat/Switch*

DstT0*
_output_shapes
: *

SrcT0	
?
;linear/zero_fraction/total_zero/zero_count_2/ToFloat/SwitchSwitch&linear/zero_fraction/total_size/Size_24linear/zero_fraction/total_zero/zero_count_2/pred_id*
T0	*
_output_shapes
: : *9
_class/
-+loc:@linear/zero_fraction/total_size/Size_2
?
0linear/zero_fraction/total_zero/zero_count_2/mulMulClinear/zero_fraction/total_zero/zero_count_2/zero_fraction/fraction4linear/zero_fraction/total_zero/zero_count_2/ToFloat*
T0*
_output_shapes
: 
?
2linear/zero_fraction/total_zero/zero_count_2/MergeMerge0linear/zero_fraction/total_zero/zero_count_2/mul2linear/zero_fraction/total_zero/zero_count_2/Const*
_output_shapes
: : *
T0*
N
i
'linear/zero_fraction/total_zero/Const_3Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
'linear/zero_fraction/total_zero/Equal_3Equal&linear/zero_fraction/total_size/Size_3'linear/zero_fraction/total_zero/Const_3*
_output_shapes
: *
T0	
?
3linear/zero_fraction/total_zero/zero_count_3/SwitchSwitch'linear/zero_fraction/total_zero/Equal_3'linear/zero_fraction/total_zero/Equal_3*
T0
*
_output_shapes
: : 
?
5linear/zero_fraction/total_zero/zero_count_3/switch_tIdentity5linear/zero_fraction/total_zero/zero_count_3/Switch:1*
T0
*
_output_shapes
: 
?
5linear/zero_fraction/total_zero/zero_count_3/switch_fIdentity3linear/zero_fraction/total_zero/zero_count_3/Switch*
T0
*
_output_shapes
: 
?
4linear/zero_fraction/total_zero/zero_count_3/pred_idIdentity'linear/zero_fraction/total_zero/Equal_3*
T0
*
_output_shapes
: 
?
2linear/zero_fraction/total_zero/zero_count_3/ConstConst6^linear/zero_fraction/total_zero/zero_count_3/switch_t*
dtype0*
_output_shapes
: *
valueB
 *    
?
Ilinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOpReadVariableOpPlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOp/Switch*
dtype0*
_output_shapes

:
?
Plinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOp/SwitchSwitch(linear/linear_model/col_3/weights/part_04linear/zero_fraction/total_zero/zero_count_3/pred_id*
T0*
_output_shapes
: : *;
_class1
/-loc:@linear/linear_model/col_3/weights/part_0
?
?linear/zero_fraction/total_zero/zero_count_3/zero_fraction/SizeConst6^linear/zero_fraction/total_zero/zero_count_3/switch_f*
dtype0	*
_output_shapes
: *
value	B	 RW
?
Flinear/zero_fraction/total_zero/zero_count_3/zero_fraction/LessEqual/yConst6^linear/zero_fraction/total_zero/zero_count_3/switch_f*
valueB	 R????*
dtype0	*
_output_shapes
: 
?
Dlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/LessEqual	LessEqual?linear/zero_fraction/total_zero/zero_count_3/zero_fraction/SizeFlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
?
Flinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/SwitchSwitchDlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/LessEqualDlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/LessEqual*
_output_shapes
: : *
T0

?
Hlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_tIdentityHlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/Switch:1*
T0
*
_output_shapes
: 
?
Hlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_fIdentityFlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/Switch*
_output_shapes
: *
T0

?
Glinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_idIdentityDlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/LessEqual*
T0
*
_output_shapes
: 
?
Slinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/zerosConstI^linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_t*
dtype0*
valueB
 *    *
_output_shapes
: 
?
Vlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Slinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/zeros*
T0*
_output_shapes

:
?
]linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOp*(
_output_shapes
::
?
Rlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/CastCastVlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/NotEqual*

DstT0*
_output_shapes

:*

SrcT0

?
Slinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/ConstConstI^linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_t*
valueB"       *
_output_shapes
:*
dtype0
?
[linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/nonzero_countSumRlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/CastSlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/Const*
_output_shapes
: *
T0
?
Dlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/CastCast[linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/nonzero_count*

DstT0	*

SrcT0*
_output_shapes
: 
?
Ulinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/zerosConstI^linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_f*
_output_shapes
: *
valueB
 *    *
dtype0
?
Xlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchUlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/zeros*
T0*
_output_shapes

:
?
_linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_id*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOp*(
_output_shapes
::*
T0
?
Tlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/CastCastXlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/NotEqual*

SrcT0
*
_output_shapes

:*

DstT0	
?
Ulinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/ConstConstI^linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
?
]linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/nonzero_countSumTlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/CastUlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 
?
Elinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/MergeMerge]linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/nonzero_countDlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/Cast*
_output_shapes
: : *
T0	*
N
?
Qlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/subSub?linear/zero_fraction/total_zero/zero_count_3/zero_fraction/SizeElinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/Merge*
_output_shapes
: *
T0	
?
Rlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/CastCastQlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/sub*
_output_shapes
: *

SrcT0	*

DstT0
?
Tlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/Cast_1Cast?linear/zero_fraction/total_zero/zero_count_3/zero_fraction/Size*

SrcT0	*
_output_shapes
: *

DstT0
?
Ulinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/truedivRealDivRlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/CastTlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
?
Clinear/zero_fraction/total_zero/zero_count_3/zero_fraction/fractionIdentityUlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/truediv*
_output_shapes
: *
T0
?
4linear/zero_fraction/total_zero/zero_count_3/ToFloatCast;linear/zero_fraction/total_zero/zero_count_3/ToFloat/Switch*
_output_shapes
: *

SrcT0	*

DstT0
?
;linear/zero_fraction/total_zero/zero_count_3/ToFloat/SwitchSwitch&linear/zero_fraction/total_size/Size_34linear/zero_fraction/total_zero/zero_count_3/pred_id*
_output_shapes
: : *9
_class/
-+loc:@linear/zero_fraction/total_size/Size_3*
T0	
?
0linear/zero_fraction/total_zero/zero_count_3/mulMulClinear/zero_fraction/total_zero/zero_count_3/zero_fraction/fraction4linear/zero_fraction/total_zero/zero_count_3/ToFloat*
T0*
_output_shapes
: 
?
2linear/zero_fraction/total_zero/zero_count_3/MergeMerge0linear/zero_fraction/total_zero/zero_count_3/mul2linear/zero_fraction/total_zero/zero_count_3/Const*
N*
_output_shapes
: : *
T0
i
'linear/zero_fraction/total_zero/Const_4Const*
value	B	 R *
dtype0	*
_output_shapes
: 
?
'linear/zero_fraction/total_zero/Equal_4Equal&linear/zero_fraction/total_size/Size_4'linear/zero_fraction/total_zero/Const_4*
_output_shapes
: *
T0	
?
3linear/zero_fraction/total_zero/zero_count_4/SwitchSwitch'linear/zero_fraction/total_zero/Equal_4'linear/zero_fraction/total_zero/Equal_4*
T0
*
_output_shapes
: : 
?
5linear/zero_fraction/total_zero/zero_count_4/switch_tIdentity5linear/zero_fraction/total_zero/zero_count_4/Switch:1*
T0
*
_output_shapes
: 
?
5linear/zero_fraction/total_zero/zero_count_4/switch_fIdentity3linear/zero_fraction/total_zero/zero_count_4/Switch*
T0
*
_output_shapes
: 
?
4linear/zero_fraction/total_zero/zero_count_4/pred_idIdentity'linear/zero_fraction/total_zero/Equal_4*
T0
*
_output_shapes
: 
?
2linear/zero_fraction/total_zero/zero_count_4/ConstConst6^linear/zero_fraction/total_zero/zero_count_4/switch_t*
_output_shapes
: *
dtype0*
valueB
 *    
?
Ilinear/zero_fraction/total_zero/zero_count_4/zero_fraction/ReadVariableOpReadVariableOpPlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/ReadVariableOp/Switch*
_output_shapes

:*
dtype0
?
Plinear/zero_fraction/total_zero/zero_count_4/zero_fraction/ReadVariableOp/SwitchSwitch(linear/linear_model/col_4/weights/part_04linear/zero_fraction/total_zero/zero_count_4/pred_id*
T0*
_output_shapes
: : *;
_class1
/-loc:@linear/linear_model/col_4/weights/part_0
?
?linear/zero_fraction/total_zero/zero_count_4/zero_fraction/SizeConst6^linear/zero_fraction/total_zero/zero_count_4/switch_f*
_output_shapes
: *
value	B	 RW*
dtype0	
?
Flinear/zero_fraction/total_zero/zero_count_4/zero_fraction/LessEqual/yConst6^linear/zero_fraction/total_zero/zero_count_4/switch_f*
_output_shapes
: *
valueB	 R????*
dtype0	
?
Dlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/LessEqual	LessEqual?linear/zero_fraction/total_zero/zero_count_4/zero_fraction/SizeFlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
?
Flinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/SwitchSwitchDlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/LessEqualDlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/LessEqual*
_output_shapes
: : *
T0

?
Hlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/switch_tIdentityHlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/Switch:1*
_output_shapes
: *
T0

?
Hlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/switch_fIdentityFlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/Switch*
_output_shapes
: *
T0

?
Glinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/pred_idIdentityDlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/LessEqual*
_output_shapes
: *
T0

?
Slinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/zerosConstI^linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/switch_t*
valueB
 *    *
_output_shapes
: *
dtype0
?
Vlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Slinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/zeros*
_output_shapes

:*
T0
?
]linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_4/zero_fraction/ReadVariableOp*(
_output_shapes
::
?
Rlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/CastCastVlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/NotEqual*

SrcT0
*

DstT0*
_output_shapes

:
?
Slinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/ConstConstI^linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/switch_t*
valueB"       *
_output_shapes
:*
dtype0
?
[linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/nonzero_countSumRlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/CastSlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/Const*
T0*
_output_shapes
: 
?
Dlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/CastCast[linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/nonzero_count*

DstT0	*

SrcT0*
_output_shapes
: 
?
Ulinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/zerosConstI^linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/switch_f*
dtype0*
_output_shapes
: *
valueB
 *    
?
Xlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchUlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/zeros*
_output_shapes

:*
T0
?
_linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/pred_id*
T0*(
_output_shapes
::*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_4/zero_fraction/ReadVariableOp
?
Tlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/CastCastXlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/NotEqual*

SrcT0
*

DstT0	*
_output_shapes

:
?
Ulinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/ConstConstI^linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/switch_f*
_output_shapes
:*
valueB"       *
dtype0
?
]linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/nonzero_countSumTlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/CastUlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 
?
Elinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/MergeMerge]linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/nonzero_countDlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/Cast*
T0	*
N*
_output_shapes
: : 
?
Qlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/counts_to_fraction/subSub?linear/zero_fraction/total_zero/zero_count_4/zero_fraction/SizeElinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/Merge*
T0	*
_output_shapes
: 
?
Rlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/counts_to_fraction/CastCastQlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/counts_to_fraction/sub*

DstT0*
_output_shapes
: *

SrcT0	
?
Tlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/counts_to_fraction/Cast_1Cast?linear/zero_fraction/total_zero/zero_count_4/zero_fraction/Size*

SrcT0	*
_output_shapes
: *

DstT0
?
Ulinear/zero_fraction/total_zero/zero_count_4/zero_fraction/counts_to_fraction/truedivRealDivRlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/counts_to_fraction/CastTlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
?
Clinear/zero_fraction/total_zero/zero_count_4/zero_fraction/fractionIdentityUlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 
?
4linear/zero_fraction/total_zero/zero_count_4/ToFloatCast;linear/zero_fraction/total_zero/zero_count_4/ToFloat/Switch*
_output_shapes
: *

SrcT0	*

DstT0
?
;linear/zero_fraction/total_zero/zero_count_4/ToFloat/SwitchSwitch&linear/zero_fraction/total_size/Size_44linear/zero_fraction/total_zero/zero_count_4/pred_id*
T0	*
_output_shapes
: : *9
_class/
-+loc:@linear/zero_fraction/total_size/Size_4
?
0linear/zero_fraction/total_zero/zero_count_4/mulMulClinear/zero_fraction/total_zero/zero_count_4/zero_fraction/fraction4linear/zero_fraction/total_zero/zero_count_4/ToFloat*
_output_shapes
: *
T0
?
2linear/zero_fraction/total_zero/zero_count_4/MergeMerge0linear/zero_fraction/total_zero/zero_count_4/mul2linear/zero_fraction/total_zero/zero_count_4/Const*
_output_shapes
: : *
N*
T0
?
$linear/zero_fraction/total_zero/AddNAddN0linear/zero_fraction/total_zero/zero_count/Merge2linear/zero_fraction/total_zero/zero_count_1/Merge2linear/zero_fraction/total_zero/zero_count_2/Merge2linear/zero_fraction/total_zero/zero_count_3/Merge2linear/zero_fraction/total_zero/zero_count_4/Merge*
T0*
N*
_output_shapes
: 
?
)linear/zero_fraction/compute/float32_sizeCast$linear/zero_fraction/total_size/AddN*
_output_shapes
: *

DstT0*

SrcT0	
?
$linear/zero_fraction/compute/truedivRealDiv$linear/zero_fraction/total_zero/AddN)linear/zero_fraction/compute/float32_size*
_output_shapes
: *
T0
|
)linear/zero_fraction/zero_fraction_or_nanIdentity$linear/zero_fraction/compute/truediv*
T0*
_output_shapes
: 
?
$linear/fraction_of_zero_weights/tagsConst*
_output_shapes
: *0
value'B% Blinear/fraction_of_zero_weights*
dtype0
?
linear/fraction_of_zero_weightsScalarSummary$linear/fraction_of_zero_weights/tags)linear/zero_fraction/zero_fraction_or_nan*
T0*
_output_shapes
: 
?
linear/zero_fraction_1/SizeSize:linear/linear_model/linear_model/linear_model/weighted_sum*
out_type0	*
T0*
_output_shapes
: 
h
"linear/zero_fraction_1/LessEqual/yConst*
dtype0	*
valueB	 R????*
_output_shapes
: 
?
 linear/zero_fraction_1/LessEqual	LessEquallinear/zero_fraction_1/Size"linear/zero_fraction_1/LessEqual/y*
_output_shapes
: *
T0	
?
"linear/zero_fraction_1/cond/SwitchSwitch linear/zero_fraction_1/LessEqual linear/zero_fraction_1/LessEqual*
_output_shapes
: : *
T0

w
$linear/zero_fraction_1/cond/switch_tIdentity$linear/zero_fraction_1/cond/Switch:1*
T0
*
_output_shapes
: 
u
$linear/zero_fraction_1/cond/switch_fIdentity"linear/zero_fraction_1/cond/Switch*
T0
*
_output_shapes
: 
r
#linear/zero_fraction_1/cond/pred_idIdentity linear/zero_fraction_1/LessEqual*
_output_shapes
: *
T0

?
/linear/zero_fraction_1/cond/count_nonzero/zerosConst%^linear/zero_fraction_1/cond/switch_t*
_output_shapes
: *
valueB
 *    *
dtype0
?
2linear/zero_fraction_1/cond/count_nonzero/NotEqualNotEqual;linear/zero_fraction_1/cond/count_nonzero/NotEqual/Switch:1/linear/zero_fraction_1/cond/count_nonzero/zeros*
T0*'
_output_shapes
:?????????
?
9linear/zero_fraction_1/cond/count_nonzero/NotEqual/SwitchSwitch:linear/linear_model/linear_model/linear_model/weighted_sum#linear/zero_fraction_1/cond/pred_id*
T0*:
_output_shapes(
&:?????????:?????????*M
_classC
A?loc:@linear/linear_model/linear_model/linear_model/weighted_sum
?
.linear/zero_fraction_1/cond/count_nonzero/CastCast2linear/zero_fraction_1/cond/count_nonzero/NotEqual*

SrcT0
*

DstT0*'
_output_shapes
:?????????
?
/linear/zero_fraction_1/cond/count_nonzero/ConstConst%^linear/zero_fraction_1/cond/switch_t*
_output_shapes
:*
valueB"       *
dtype0
?
7linear/zero_fraction_1/cond/count_nonzero/nonzero_countSum.linear/zero_fraction_1/cond/count_nonzero/Cast/linear/zero_fraction_1/cond/count_nonzero/Const*
T0*
_output_shapes
: 
?
 linear/zero_fraction_1/cond/CastCast7linear/zero_fraction_1/cond/count_nonzero/nonzero_count*

DstT0	*
_output_shapes
: *

SrcT0
?
1linear/zero_fraction_1/cond/count_nonzero_1/zerosConst%^linear/zero_fraction_1/cond/switch_f*
_output_shapes
: *
dtype0*
valueB
 *    
?
4linear/zero_fraction_1/cond/count_nonzero_1/NotEqualNotEqual;linear/zero_fraction_1/cond/count_nonzero_1/NotEqual/Switch1linear/zero_fraction_1/cond/count_nonzero_1/zeros*'
_output_shapes
:?????????*
T0
?
;linear/zero_fraction_1/cond/count_nonzero_1/NotEqual/SwitchSwitch:linear/linear_model/linear_model/linear_model/weighted_sum#linear/zero_fraction_1/cond/pred_id*
T0*M
_classC
A?loc:@linear/linear_model/linear_model/linear_model/weighted_sum*:
_output_shapes(
&:?????????:?????????
?
0linear/zero_fraction_1/cond/count_nonzero_1/CastCast4linear/zero_fraction_1/cond/count_nonzero_1/NotEqual*

DstT0	*'
_output_shapes
:?????????*

SrcT0

?
1linear/zero_fraction_1/cond/count_nonzero_1/ConstConst%^linear/zero_fraction_1/cond/switch_f*
dtype0*
_output_shapes
:*
valueB"       
?
9linear/zero_fraction_1/cond/count_nonzero_1/nonzero_countSum0linear/zero_fraction_1/cond/count_nonzero_1/Cast1linear/zero_fraction_1/cond/count_nonzero_1/Const*
_output_shapes
: *
T0	
?
!linear/zero_fraction_1/cond/MergeMerge9linear/zero_fraction_1/cond/count_nonzero_1/nonzero_count linear/zero_fraction_1/cond/Cast*
T0	*
N*
_output_shapes
: : 
?
-linear/zero_fraction_1/counts_to_fraction/subSublinear/zero_fraction_1/Size!linear/zero_fraction_1/cond/Merge*
T0	*
_output_shapes
: 
?
.linear/zero_fraction_1/counts_to_fraction/CastCast-linear/zero_fraction_1/counts_to_fraction/sub*
_output_shapes
: *

DstT0*

SrcT0	
?
0linear/zero_fraction_1/counts_to_fraction/Cast_1Castlinear/zero_fraction_1/Size*
_output_shapes
: *

DstT0*

SrcT0	
?
1linear/zero_fraction_1/counts_to_fraction/truedivRealDiv.linear/zero_fraction_1/counts_to_fraction/Cast0linear/zero_fraction_1/counts_to_fraction/Cast_1*
_output_shapes
: *
T0

linear/zero_fraction_1/fractionIdentity1linear/zero_fraction_1/counts_to_fraction/truediv*
_output_shapes
: *
T0
?
*linear/linear/fraction_of_zero_values/tagsConst*6
value-B+ B%linear/linear/fraction_of_zero_values*
dtype0*
_output_shapes
: 
?
%linear/linear/fraction_of_zero_valuesScalarSummary*linear/linear/fraction_of_zero_values/tagslinear/zero_fraction_1/fraction*
_output_shapes
: *
T0
u
linear/linear/activation/tagConst*)
value B Blinear/linear/activation*
_output_shapes
: *
dtype0
?
linear/linear/activationHistogramSummarylinear/linear/activation/tag:linear/linear_model/linear_model/linear_model/weighted_sum*
_output_shapes
: 
?
addAdddnn/logits/BiasAdd:linear/linear_model/linear_model/linear_model/weighted_sum*'
_output_shapes
:?????????*
T0
D
head/logits/ShapeShapeadd*
T0*
_output_shapes
:
g
%head/logits/assert_rank_at_least/rankConst*
dtype0*
value	B :*
_output_shapes
: 
W
Ohead/logits/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
H
@head/logits/assert_rank_at_least/static_checks_determined_all_okNoOp
I
head/predictions/ShapeShapeadd*
_output_shapes
:*
T0
n
$head/predictions/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
p
&head/predictions/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
p
&head/predictions/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
head/predictions/strided_sliceStridedSlicehead/predictions/Shape$head/predictions/strided_slice/stack&head/predictions/strided_slice/stack_1&head/predictions/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0
^
head/predictions/range/startConst*
_output_shapes
: *
value	B : *
dtype0
^
head/predictions/range/limitConst*
_output_shapes
: *
dtype0*
value	B :
^
head/predictions/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
?
head/predictions/rangeRangehead/predictions/range/starthead/predictions/range/limithead/predictions/range/delta*
_output_shapes
:
a
head/predictions/ExpandDims/dimConst*
_output_shapes
: *
value	B : *
dtype0
?
head/predictions/ExpandDims
ExpandDimshead/predictions/rangehead/predictions/ExpandDims/dim*
T0*
_output_shapes

:
c
!head/predictions/Tile/multiples/1Const*
dtype0*
_output_shapes
: *
value	B :
?
head/predictions/Tile/multiplesPackhead/predictions/strided_slice!head/predictions/Tile/multiples/1*
N*
_output_shapes
:*
T0
?
head/predictions/TileTilehead/predictions/ExpandDimshead/predictions/Tile/multiples*'
_output_shapes
:?????????*
T0
K
head/predictions/Shape_1Shapeadd*
_output_shapes
:*
T0
p
&head/predictions/strided_slice_1/stackConst*
_output_shapes
:*
valueB: *
dtype0
r
(head/predictions/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
r
(head/predictions/strided_slice_1/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
?
 head/predictions/strided_slice_1StridedSlicehead/predictions/Shape_1&head/predictions/strided_slice_1/stack(head/predictions/strided_slice_1/stack_1(head/predictions/strided_slice_1/stack_2*
Index0*
T0*
shrink_axis_mask*
_output_shapes
: 
?
#head/predictions/ExpandDims_1/inputConst*~
valueuBsB1B2B3B4B5B6B7B8B9B10B11B12B13B14B15B16B17B18B19B20B21B22B23B24B25B26B27B28B29*
dtype0*
_output_shapes
:
c
!head/predictions/ExpandDims_1/dimConst*
dtype0*
value	B : *
_output_shapes
: 
?
head/predictions/ExpandDims_1
ExpandDims#head/predictions/ExpandDims_1/input!head/predictions/ExpandDims_1/dim*
T0*
_output_shapes

:
e
#head/predictions/Tile_1/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :
?
!head/predictions/Tile_1/multiplesPack head/predictions/strided_slice_1#head/predictions/Tile_1/multiples/1*
_output_shapes
:*
N*
T0
?
head/predictions/Tile_1Tilehead/predictions/ExpandDims_1!head/predictions/Tile_1/multiples*'
_output_shapes
:?????????*
T0
o
$head/predictions/class_ids/dimensionConst*
valueB :
?????????*
_output_shapes
: *
dtype0
}
head/predictions/class_idsArgMaxadd$head/predictions/class_ids/dimension*#
_output_shapes
:?????????*
T0
l
!head/predictions/ExpandDims_2/dimConst*
dtype0*
_output_shapes
: *
valueB :
?????????
?
head/predictions/ExpandDims_2
ExpandDimshead/predictions/class_ids!head/predictions/ExpandDims_2/dim*'
_output_shapes
:?????????*
T0	
?
*head/predictions/class_string_lookup/ConstConst*~
valueuBsB1B2B3B4B5B6B7B8B9B10B11B12B13B14B15B16B17B18B19B20B21B22B23B24B25B26B27B28B29*
_output_shapes
:*
dtype0
k
)head/predictions/class_string_lookup/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
r
0head/predictions/class_string_lookup/range/startConst*
dtype0*
_output_shapes
: *
value	B : 
r
0head/predictions/class_string_lookup/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
?
*head/predictions/class_string_lookup/rangeRange0head/predictions/class_string_lookup/range/start)head/predictions/class_string_lookup/Size0head/predictions/class_string_lookup/range/delta*
_output_shapes
:
?
)head/predictions/class_string_lookup/CastCast*head/predictions/class_string_lookup/range*

DstT0	*
_output_shapes
:*

SrcT0
p
,head/predictions/class_string_lookup/Const_1Const*
dtype0*
_output_shapes
: *
valueB	 BUNK
z
/head/predictions/class_string_lookup/hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0	*
value_dtype0
?
Chead/predictions/class_string_lookup/table_init/LookupTableImportV2LookupTableImportV2/head/predictions/class_string_lookup/hash_table)head/predictions/class_string_lookup/Cast*head/predictions/class_string_lookup/Const*

Tout0*	
Tin0	
?
4head/predictions/hash_table_Lookup/LookupTableFindV2LookupTableFindV2/head/predictions/class_string_lookup/hash_tablehead/predictions/ExpandDims_2,head/predictions/class_string_lookup/Const_1*

Tout0*	
Tin0	*'
_output_shapes
:?????????
`
head/predictions/probabilitiesSoftmaxadd*'
_output_shapes
:?????????*
T0
X

head/ShapeShapehead/predictions/probabilities*
_output_shapes
:*
T0
b
head/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:
d
head/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
d
head/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
?
head/strided_sliceStridedSlice
head/Shapehead/strided_slice/stackhead/strided_slice/stack_1head/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
?
head/ExpandDims/inputConst*
dtype0*
_output_shapes
:*~
valueuBsB1B2B3B4B5B6B7B8B9B10B11B12B13B14B15B16B17B18B19B20B21B22B23B24B25B26B27B28B29
U
head/ExpandDims/dimConst*
dtype0*
value	B : *
_output_shapes
: 
r
head/ExpandDims
ExpandDimshead/ExpandDims/inputhead/ExpandDims/dim*
T0*
_output_shapes

:
W
head/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :
t
head/Tile/multiplesPackhead/strided_slicehead/Tile/multiples/1*
_output_shapes
:*
T0*
N
i
	head/TileTilehead/ExpandDimshead/Tile/multiples*
T0*'
_output_shapes
:?????????

initNoOp
]
init_all_tablesNoOpD^head/predictions/class_string_lookup/table_init/LookupTableImportV2

init_1NoOp
4

group_depsNoOp^init^init_1^init_all_tables
Y
save/filename/inputConst*
_output_shapes
: *
valueB Bmodel*
dtype0
n
save/filenamePlaceholderWithDefaultsave/filename/input*
shape: *
dtype0*
_output_shapes
: 
e

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
shape: *
_output_shapes
: 
r
save/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/bias/part_0*
dtype0*
_output_shapes
:
X
save/IdentityIdentitysave/Read/ReadVariableOp*
T0*
_output_shapes
:
^
save/Identity_1Identitysave/Identity"/device:CPU:0*
T0*
_output_shapes
:
z
save/Read_1/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/kernel/part_0*
_output_shapes

:	*
dtype0
`
save/Identity_2Identitysave/Read_1/ReadVariableOp*
_output_shapes

:	*
T0
d
save/Identity_3Identitysave/Identity_2"/device:CPU:0*
T0*
_output_shapes

:	
t
save/Read_2/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/bias/part_0*
dtype0*
_output_shapes
:
\
save/Identity_4Identitysave/Read_2/ReadVariableOp*
_output_shapes
:*
T0
`
save/Identity_5Identitysave/Identity_4"/device:CPU:0*
T0*
_output_shapes
:
z
save/Read_3/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/kernel/part_0*
_output_shapes

:*
dtype0
`
save/Identity_6Identitysave/Read_3/ReadVariableOp*
T0*
_output_shapes

:
d
save/Identity_7Identitysave/Identity_6"/device:CPU:0*
T0*
_output_shapes

:
t
save/Read_4/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/bias/part_0*
_output_shapes
:*
dtype0
\
save/Identity_8Identitysave/Read_4/ReadVariableOp*
_output_shapes
:*
T0
`
save/Identity_9Identitysave/Identity_8"/device:CPU:0*
T0*
_output_shapes
:
z
save/Read_5/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/kernel/part_0*
_output_shapes

:*
dtype0
a
save/Identity_10Identitysave/Read_5/ReadVariableOp*
T0*
_output_shapes

:
f
save/Identity_11Identitysave/Identity_10"/device:CPU:0*
_output_shapes

:*
T0
?
save/Read_6/ReadVariableOpReadVariableOpSdnn/input_from_feature_columns/input_layer/col_0_embedding/embedding_weights/part_0*
dtype0*
_output_shapes

:
a
save/Identity_12Identitysave/Read_6/ReadVariableOp*
T0*
_output_shapes

:
f
save/Identity_13Identitysave/Identity_12"/device:CPU:0*
_output_shapes

:*
T0
?
save/Read_7/ReadVariableOpReadVariableOpSdnn/input_from_feature_columns/input_layer/col_1_embedding/embedding_weights/part_0*
dtype0*
_output_shapes

:
a
save/Identity_14Identitysave/Read_7/ReadVariableOp*
T0*
_output_shapes

:
f
save/Identity_15Identitysave/Identity_14"/device:CPU:0*
_output_shapes

:*
T0
?
save/Read_8/ReadVariableOpReadVariableOpSdnn/input_from_feature_columns/input_layer/col_3_embedding/embedding_weights/part_0*
dtype0*
_output_shapes

:
a
save/Identity_16Identitysave/Read_8/ReadVariableOp*
T0*
_output_shapes

:
f
save/Identity_17Identitysave/Identity_16"/device:CPU:0*
T0*
_output_shapes

:
?
save/Read_9/ReadVariableOpReadVariableOpSdnn/input_from_feature_columns/input_layer/col_4_embedding/embedding_weights/part_0*
_output_shapes

:*
dtype0
a
save/Identity_18Identitysave/Read_9/ReadVariableOp*
_output_shapes

:*
T0
f
save/Identity_19Identitysave/Identity_18"/device:CPU:0*
_output_shapes

:*
T0
n
save/Read_10/ReadVariableOpReadVariableOpdnn/logits/bias/part_0*
dtype0*
_output_shapes
:
^
save/Identity_20Identitysave/Read_10/ReadVariableOp*
_output_shapes
:*
T0
b
save/Identity_21Identitysave/Identity_20"/device:CPU:0*
T0*
_output_shapes
:
t
save/Read_11/ReadVariableOpReadVariableOpdnn/logits/kernel/part_0*
dtype0*
_output_shapes

:
b
save/Identity_22Identitysave/Read_11/ReadVariableOp*
_output_shapes

:*
T0
f
save/Identity_23Identitysave/Identity_22"/device:CPU:0*
T0*
_output_shapes

:

save/Read_12/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*
_output_shapes
:*
dtype0
^
save/Identity_24Identitysave/Read_12/ReadVariableOp*
T0*
_output_shapes
:
b
save/Identity_25Identitysave/Identity_24"/device:CPU:0*
T0*
_output_shapes
:
?
save/Read_13/ReadVariableOpReadVariableOp(linear/linear_model/col_0/weights/part_0*
dtype0*
_output_shapes

:
b
save/Identity_26Identitysave/Read_13/ReadVariableOp*
_output_shapes

:*
T0
f
save/Identity_27Identitysave/Identity_26"/device:CPU:0*
_output_shapes

:*
T0
?
save/Read_14/ReadVariableOpReadVariableOp(linear/linear_model/col_1/weights/part_0*
_output_shapes

:*
dtype0
b
save/Identity_28Identitysave/Read_14/ReadVariableOp*
_output_shapes

:*
T0
f
save/Identity_29Identitysave/Identity_28"/device:CPU:0*
_output_shapes

:*
T0
?
save/Read_15/ReadVariableOpReadVariableOp(linear/linear_model/col_2/weights/part_0*
dtype0*
_output_shapes

:
b
save/Identity_30Identitysave/Read_15/ReadVariableOp*
_output_shapes

:*
T0
f
save/Identity_31Identitysave/Identity_30"/device:CPU:0*
T0*
_output_shapes

:
?
save/Read_16/ReadVariableOpReadVariableOp(linear/linear_model/col_3/weights/part_0*
_output_shapes

:*
dtype0
b
save/Identity_32Identitysave/Read_16/ReadVariableOp*
_output_shapes

:*
T0
f
save/Identity_33Identitysave/Identity_32"/device:CPU:0*
_output_shapes

:*
T0
?
save/Read_17/ReadVariableOpReadVariableOp(linear/linear_model/col_4/weights/part_0*
dtype0*
_output_shapes

:
b
save/Identity_34Identitysave/Read_17/ReadVariableOp*
_output_shapes

:*
T0
f
save/Identity_35Identitysave/Identity_34"/device:CPU:0*
_output_shapes

:*
T0
?
save/StringJoin/inputs_1Const*<
value3B1 B+_temp_95fd45cbbc7c475eb6e47b4e17065766/part*
_output_shapes
: *
dtype0
d
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
_output_shapes
: *
N
Q
save/num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
?
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
{
save/SaveV2/tensor_namesConst"/device:CPU:0*
dtype0* 
valueBBglobal_step*
_output_shapes
:
t
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
valueB
B *
_output_shapes
:*
dtype0
?
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesglobal_step"/device:CPU:0*
dtypes
2	
?
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*'
_class
loc:@save/ShardedFilename*
T0*
_output_shapes
: 
m
save/ShardedFilename_1/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B :
?
save/ShardedFilename_1ShardedFilenamesave/StringJoinsave/ShardedFilename_1/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
?
save/Read_18/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/bias/part_0"/device:CPU:0*
dtype0*
_output_shapes
:
m
save/Identity_36Identitysave/Read_18/ReadVariableOp"/device:CPU:0*
_output_shapes
:*
T0
b
save/Identity_37Identitysave/Identity_36"/device:CPU:0*
_output_shapes
:*
T0
?
save/Read_19/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/kernel/part_0"/device:CPU:0*
_output_shapes

:	*
dtype0
q
save/Identity_38Identitysave/Read_19/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:	
f
save/Identity_39Identitysave/Identity_38"/device:CPU:0*
T0*
_output_shapes

:	
?
save/Read_20/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/bias/part_0"/device:CPU:0*
_output_shapes
:*
dtype0
m
save/Identity_40Identitysave/Read_20/ReadVariableOp"/device:CPU:0*
_output_shapes
:*
T0
b
save/Identity_41Identitysave/Identity_40"/device:CPU:0*
_output_shapes
:*
T0
?
save/Read_21/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/kernel/part_0"/device:CPU:0*
_output_shapes

:*
dtype0
q
save/Identity_42Identitysave/Read_21/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_43Identitysave/Identity_42"/device:CPU:0*
_output_shapes

:*
T0
?
save/Read_22/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/bias/part_0"/device:CPU:0*
dtype0*
_output_shapes
:
m
save/Identity_44Identitysave/Read_22/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes
:
b
save/Identity_45Identitysave/Identity_44"/device:CPU:0*
T0*
_output_shapes
:
?
save/Read_23/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/kernel/part_0"/device:CPU:0*
_output_shapes

:*
dtype0
q
save/Identity_46Identitysave/Read_23/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_47Identitysave/Identity_46"/device:CPU:0*
T0*
_output_shapes

:
?
save/Read_24/ReadVariableOpReadVariableOpSdnn/input_from_feature_columns/input_layer/col_0_embedding/embedding_weights/part_0"/device:CPU:0*
_output_shapes

:*
dtype0
q
save/Identity_48Identitysave/Read_24/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_49Identitysave/Identity_48"/device:CPU:0*
_output_shapes

:*
T0
?
save/Read_25/ReadVariableOpReadVariableOpSdnn/input_from_feature_columns/input_layer/col_1_embedding/embedding_weights/part_0"/device:CPU:0*
_output_shapes

:*
dtype0
q
save/Identity_50Identitysave/Read_25/ReadVariableOp"/device:CPU:0*
_output_shapes

:*
T0
f
save/Identity_51Identitysave/Identity_50"/device:CPU:0*
_output_shapes

:*
T0
?
save/Read_26/ReadVariableOpReadVariableOpSdnn/input_from_feature_columns/input_layer/col_3_embedding/embedding_weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_52Identitysave/Read_26/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_53Identitysave/Identity_52"/device:CPU:0*
_output_shapes

:*
T0
?
save/Read_27/ReadVariableOpReadVariableOpSdnn/input_from_feature_columns/input_layer/col_4_embedding/embedding_weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_54Identitysave/Read_27/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_55Identitysave/Identity_54"/device:CPU:0*
T0*
_output_shapes

:
}
save/Read_28/ReadVariableOpReadVariableOpdnn/logits/bias/part_0"/device:CPU:0*
_output_shapes
:*
dtype0
m
save/Identity_56Identitysave/Read_28/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes
:
b
save/Identity_57Identitysave/Identity_56"/device:CPU:0*
_output_shapes
:*
T0
?
save/Read_29/ReadVariableOpReadVariableOpdnn/logits/kernel/part_0"/device:CPU:0*
_output_shapes

:*
dtype0
q
save/Identity_58Identitysave/Read_29/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_59Identitysave/Identity_58"/device:CPU:0*
_output_shapes

:*
T0
?
save/Read_30/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0"/device:CPU:0*
_output_shapes
:*
dtype0
m
save/Identity_60Identitysave/Read_30/ReadVariableOp"/device:CPU:0*
_output_shapes
:*
T0
b
save/Identity_61Identitysave/Identity_60"/device:CPU:0*
T0*
_output_shapes
:
?
save/Read_31/ReadVariableOpReadVariableOp(linear/linear_model/col_0/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_62Identitysave/Read_31/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_63Identitysave/Identity_62"/device:CPU:0*
_output_shapes

:*
T0
?
save/Read_32/ReadVariableOpReadVariableOp(linear/linear_model/col_1/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_64Identitysave/Read_32/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_65Identitysave/Identity_64"/device:CPU:0*
T0*
_output_shapes

:
?
save/Read_33/ReadVariableOpReadVariableOp(linear/linear_model/col_2/weights/part_0"/device:CPU:0*
_output_shapes

:*
dtype0
q
save/Identity_66Identitysave/Read_33/ReadVariableOp"/device:CPU:0*
_output_shapes

:*
T0
f
save/Identity_67Identitysave/Identity_66"/device:CPU:0*
_output_shapes

:*
T0
?
save/Read_34/ReadVariableOpReadVariableOp(linear/linear_model/col_3/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_68Identitysave/Read_34/ReadVariableOp"/device:CPU:0*
_output_shapes

:*
T0
f
save/Identity_69Identitysave/Identity_68"/device:CPU:0*
_output_shapes

:*
T0
?
save/Read_35/ReadVariableOpReadVariableOp(linear/linear_model/col_4/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_70Identitysave/Read_35/ReadVariableOp"/device:CPU:0*
_output_shapes

:*
T0
f
save/Identity_71Identitysave/Identity_70"/device:CPU:0*
T0*
_output_shapes

:
?
save/SaveV2_1/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*?
value?B?Bdnn/hiddenlayer_0/biasBdnn/hiddenlayer_0/kernelBdnn/hiddenlayer_1/biasBdnn/hiddenlayer_1/kernelBdnn/hiddenlayer_2/biasBdnn/hiddenlayer_2/kernelBLdnn/input_from_feature_columns/input_layer/col_0_embedding/embedding_weightsBLdnn/input_from_feature_columns/input_layer/col_1_embedding/embedding_weightsBLdnn/input_from_feature_columns/input_layer/col_3_embedding/embedding_weightsBLdnn/input_from_feature_columns/input_layer/col_4_embedding/embedding_weightsBdnn/logits/biasBdnn/logits/kernelB linear/linear_model/bias_weightsB!linear/linear_model/col_0/weightsB!linear/linear_model/col_1/weightsB!linear/linear_model/col_2/weightsB!linear/linear_model/col_3/weightsB!linear/linear_model/col_4/weights
?
save/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
dtype0*?
value?B?B30 0,30B9 30 0,9:0,30B30 0,30B30 30 0,30:0,30B30 0,30B30 30 0,30:0,30B3 1 0,3:0,1B2 1 0,2:0,1B3 1 0,3:0,1B3 1 0,3:0,1B29 0,29B30 29 0,30:0,29B29 0,29B3 29 0,3:0,29B2 29 0,2:0,29B5 29 0,5:0,29B3 29 0,3:0,29B3 29 0,3:0,29*
_output_shapes
:
?
save/SaveV2_1SaveV2save/ShardedFilename_1save/SaveV2_1/tensor_namessave/SaveV2_1/shape_and_slicessave/Identity_37save/Identity_39save/Identity_41save/Identity_43save/Identity_45save/Identity_47save/Identity_49save/Identity_51save/Identity_53save/Identity_55save/Identity_57save/Identity_59save/Identity_61save/Identity_63save/Identity_65save/Identity_67save/Identity_69save/Identity_71"/device:CPU:0* 
dtypes
2
?
save/control_dependency_1Identitysave/ShardedFilename_1^save/SaveV2_1"/device:CPU:0*
_output_shapes
: *)
_class
loc:@save/ShardedFilename_1*
T0
?
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilenamesave/ShardedFilename_1^save/control_dependency^save/control_dependency_1"/device:CPU:0*
_output_shapes
:*
N*
T0
u
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0
?
save/Identity_72Identity
save/Const^save/MergeV2Checkpoints^save/control_dependency^save/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
~
save/RestoreV2/tensor_namesConst"/device:CPU:0* 
valueBBglobal_step*
_output_shapes
:*
dtype0
w
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
valueB
B *
_output_shapes
:*
dtype0
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
dtypes
2	*
_output_shapes
:
s
save/AssignAssignglobal_stepsave/RestoreV2*
T0	*
_class
loc:@global_step*
_output_shapes
: 
(
save/restore_shardNoOp^save/Assign
?
save/RestoreV2_1/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*?
value?B?Bdnn/hiddenlayer_0/biasBdnn/hiddenlayer_0/kernelBdnn/hiddenlayer_1/biasBdnn/hiddenlayer_1/kernelBdnn/hiddenlayer_2/biasBdnn/hiddenlayer_2/kernelBLdnn/input_from_feature_columns/input_layer/col_0_embedding/embedding_weightsBLdnn/input_from_feature_columns/input_layer/col_1_embedding/embedding_weightsBLdnn/input_from_feature_columns/input_layer/col_3_embedding/embedding_weightsBLdnn/input_from_feature_columns/input_layer/col_4_embedding/embedding_weightsBdnn/logits/biasBdnn/logits/kernelB linear/linear_model/bias_weightsB!linear/linear_model/col_0/weightsB!linear/linear_model/col_1/weightsB!linear/linear_model/col_2/weightsB!linear/linear_model/col_3/weightsB!linear/linear_model/col_4/weights
?
!save/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B30 0,30B9 30 0,9:0,30B30 0,30B30 30 0,30:0,30B30 0,30B30 30 0,30:0,30B3 1 0,3:0,1B2 1 0,2:0,1B3 1 0,3:0,1B3 1 0,3:0,1B29 0,29B30 29 0,30:0,29B29 0,29B3 29 0,3:0,29B2 29 0,2:0,29B5 29 0,5:0,29B3 29 0,3:0,29B3 29 0,3:0,29
?
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices"/device:CPU:0*?
_output_shapes?
?::	::::::::::::::::* 
dtypes
2
b
save/Identity_73Identitysave/RestoreV2_1"/device:CPU:0*
T0*
_output_shapes
:
v
save/AssignVariableOpAssignVariableOpdnn/hiddenlayer_0/bias/part_0save/Identity_73"/device:CPU:0*
dtype0
h
save/Identity_74Identitysave/RestoreV2_1:1"/device:CPU:0*
_output_shapes

:	*
T0
z
save/AssignVariableOp_1AssignVariableOpdnn/hiddenlayer_0/kernel/part_0save/Identity_74"/device:CPU:0*
dtype0
d
save/Identity_75Identitysave/RestoreV2_1:2"/device:CPU:0*
_output_shapes
:*
T0
x
save/AssignVariableOp_2AssignVariableOpdnn/hiddenlayer_1/bias/part_0save/Identity_75"/device:CPU:0*
dtype0
h
save/Identity_76Identitysave/RestoreV2_1:3"/device:CPU:0*
T0*
_output_shapes

:
z
save/AssignVariableOp_3AssignVariableOpdnn/hiddenlayer_1/kernel/part_0save/Identity_76"/device:CPU:0*
dtype0
d
save/Identity_77Identitysave/RestoreV2_1:4"/device:CPU:0*
T0*
_output_shapes
:
x
save/AssignVariableOp_4AssignVariableOpdnn/hiddenlayer_2/bias/part_0save/Identity_77"/device:CPU:0*
dtype0
h
save/Identity_78Identitysave/RestoreV2_1:5"/device:CPU:0*
T0*
_output_shapes

:
z
save/AssignVariableOp_5AssignVariableOpdnn/hiddenlayer_2/kernel/part_0save/Identity_78"/device:CPU:0*
dtype0
h
save/Identity_79Identitysave/RestoreV2_1:6"/device:CPU:0*
T0*
_output_shapes

:
?
save/AssignVariableOp_6AssignVariableOpSdnn/input_from_feature_columns/input_layer/col_0_embedding/embedding_weights/part_0save/Identity_79"/device:CPU:0*
dtype0
h
save/Identity_80Identitysave/RestoreV2_1:7"/device:CPU:0*
T0*
_output_shapes

:
?
save/AssignVariableOp_7AssignVariableOpSdnn/input_from_feature_columns/input_layer/col_1_embedding/embedding_weights/part_0save/Identity_80"/device:CPU:0*
dtype0
h
save/Identity_81Identitysave/RestoreV2_1:8"/device:CPU:0*
T0*
_output_shapes

:
?
save/AssignVariableOp_8AssignVariableOpSdnn/input_from_feature_columns/input_layer/col_3_embedding/embedding_weights/part_0save/Identity_81"/device:CPU:0*
dtype0
h
save/Identity_82Identitysave/RestoreV2_1:9"/device:CPU:0*
T0*
_output_shapes

:
?
save/AssignVariableOp_9AssignVariableOpSdnn/input_from_feature_columns/input_layer/col_4_embedding/embedding_weights/part_0save/Identity_82"/device:CPU:0*
dtype0
e
save/Identity_83Identitysave/RestoreV2_1:10"/device:CPU:0*
T0*
_output_shapes
:
r
save/AssignVariableOp_10AssignVariableOpdnn/logits/bias/part_0save/Identity_83"/device:CPU:0*
dtype0
i
save/Identity_84Identitysave/RestoreV2_1:11"/device:CPU:0*
T0*
_output_shapes

:
t
save/AssignVariableOp_11AssignVariableOpdnn/logits/kernel/part_0save/Identity_84"/device:CPU:0*
dtype0
e
save/Identity_85Identitysave/RestoreV2_1:12"/device:CPU:0*
_output_shapes
:*
T0
?
save/AssignVariableOp_12AssignVariableOp'linear/linear_model/bias_weights/part_0save/Identity_85"/device:CPU:0*
dtype0
i
save/Identity_86Identitysave/RestoreV2_1:13"/device:CPU:0*
_output_shapes

:*
T0
?
save/AssignVariableOp_13AssignVariableOp(linear/linear_model/col_0/weights/part_0save/Identity_86"/device:CPU:0*
dtype0
i
save/Identity_87Identitysave/RestoreV2_1:14"/device:CPU:0*
T0*
_output_shapes

:
?
save/AssignVariableOp_14AssignVariableOp(linear/linear_model/col_1/weights/part_0save/Identity_87"/device:CPU:0*
dtype0
i
save/Identity_88Identitysave/RestoreV2_1:15"/device:CPU:0*
_output_shapes

:*
T0
?
save/AssignVariableOp_15AssignVariableOp(linear/linear_model/col_2/weights/part_0save/Identity_88"/device:CPU:0*
dtype0
i
save/Identity_89Identitysave/RestoreV2_1:16"/device:CPU:0*
T0*
_output_shapes

:
?
save/AssignVariableOp_16AssignVariableOp(linear/linear_model/col_3/weights/part_0save/Identity_89"/device:CPU:0*
dtype0
i
save/Identity_90Identitysave/RestoreV2_1:17"/device:CPU:0*
T0*
_output_shapes

:
?
save/AssignVariableOp_17AssignVariableOp(linear/linear_model/col_4/weights/part_0save/Identity_90"/device:CPU:0*
dtype0
?
save/restore_shard_1NoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_17^save/AssignVariableOp_2^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9"/device:CPU:0
2
save/restore_all/NoOpNoOp^save/restore_shard
E
save/restore_all/NoOp_1NoOp^save/restore_shard_1"/device:CPU:0
J
save/restore_allNoOp^save/restore_all/NoOp^save/restore_all/NoOp_1"&?
save/Const:0save/Identity_72:0save/restore_all (5 @F8"\
table_initializerG
E
Chead/predictions/class_string_lookup/table_init/LookupTableImportV2"m
global_step^\
Z
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0H"?
	summaries?
?
/dnn/dnn/hiddenlayer_0/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_0/activation:0
/dnn/dnn/hiddenlayer_1/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_1/activation:0
/dnn/dnn/hiddenlayer_2/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_2/activation:0
(dnn/dnn/logits/fraction_of_zero_values:0
dnn/dnn/logits/activation:0
linear/bias:0
!linear/fraction_of_zero_weights:0
'linear/linear/fraction_of_zero_values:0
linear/linear/activation:0"??
cond_context????
?
 dnn/zero_fraction/cond/cond_text dnn/zero_fraction/cond/pred_id:0!dnn/zero_fraction/cond/switch_t:0 *?
dnn/hiddenlayer_0/Relu:0
dnn/zero_fraction/cond/Cast:0
+dnn/zero_fraction/cond/count_nonzero/Cast:0
,dnn/zero_fraction/cond/count_nonzero/Const:0
6dnn/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
/dnn/zero_fraction/cond/count_nonzero/NotEqual:0
4dnn/zero_fraction/cond/count_nonzero/nonzero_count:0
,dnn/zero_fraction/cond/count_nonzero/zeros:0
 dnn/zero_fraction/cond/pred_id:0
!dnn/zero_fraction/cond/switch_t:0D
 dnn/zero_fraction/cond/pred_id:0 dnn/zero_fraction/cond/pred_id:0R
dnn/hiddenlayer_0/Relu:06dnn/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
?
"dnn/zero_fraction/cond/cond_text_1 dnn/zero_fraction/cond/pred_id:0!dnn/zero_fraction/cond/switch_f:0*?
dnn/hiddenlayer_0/Relu:0
-dnn/zero_fraction/cond/count_nonzero_1/Cast:0
.dnn/zero_fraction/cond/count_nonzero_1/Const:0
8dnn/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
1dnn/zero_fraction/cond/count_nonzero_1/NotEqual:0
6dnn/zero_fraction/cond/count_nonzero_1/nonzero_count:0
.dnn/zero_fraction/cond/count_nonzero_1/zeros:0
 dnn/zero_fraction/cond/pred_id:0
!dnn/zero_fraction/cond/switch_f:0D
 dnn/zero_fraction/cond/pred_id:0 dnn/zero_fraction/cond/pred_id:0T
dnn/hiddenlayer_0/Relu:08dnn/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
?
"dnn/zero_fraction_1/cond/cond_text"dnn/zero_fraction_1/cond/pred_id:0#dnn/zero_fraction_1/cond/switch_t:0 *?
dnn/hiddenlayer_1/Relu:0
dnn/zero_fraction_1/cond/Cast:0
-dnn/zero_fraction_1/cond/count_nonzero/Cast:0
.dnn/zero_fraction_1/cond/count_nonzero/Const:0
8dnn/zero_fraction_1/cond/count_nonzero/NotEqual/Switch:1
1dnn/zero_fraction_1/cond/count_nonzero/NotEqual:0
6dnn/zero_fraction_1/cond/count_nonzero/nonzero_count:0
.dnn/zero_fraction_1/cond/count_nonzero/zeros:0
"dnn/zero_fraction_1/cond/pred_id:0
#dnn/zero_fraction_1/cond/switch_t:0T
dnn/hiddenlayer_1/Relu:08dnn/zero_fraction_1/cond/count_nonzero/NotEqual/Switch:1H
"dnn/zero_fraction_1/cond/pred_id:0"dnn/zero_fraction_1/cond/pred_id:0
?
$dnn/zero_fraction_1/cond/cond_text_1"dnn/zero_fraction_1/cond/pred_id:0#dnn/zero_fraction_1/cond/switch_f:0*?
dnn/hiddenlayer_1/Relu:0
/dnn/zero_fraction_1/cond/count_nonzero_1/Cast:0
0dnn/zero_fraction_1/cond/count_nonzero_1/Const:0
:dnn/zero_fraction_1/cond/count_nonzero_1/NotEqual/Switch:0
3dnn/zero_fraction_1/cond/count_nonzero_1/NotEqual:0
8dnn/zero_fraction_1/cond/count_nonzero_1/nonzero_count:0
0dnn/zero_fraction_1/cond/count_nonzero_1/zeros:0
"dnn/zero_fraction_1/cond/pred_id:0
#dnn/zero_fraction_1/cond/switch_f:0V
dnn/hiddenlayer_1/Relu:0:dnn/zero_fraction_1/cond/count_nonzero_1/NotEqual/Switch:0H
"dnn/zero_fraction_1/cond/pred_id:0"dnn/zero_fraction_1/cond/pred_id:0
?
"dnn/zero_fraction_2/cond/cond_text"dnn/zero_fraction_2/cond/pred_id:0#dnn/zero_fraction_2/cond/switch_t:0 *?
dnn/hiddenlayer_2/Relu:0
dnn/zero_fraction_2/cond/Cast:0
-dnn/zero_fraction_2/cond/count_nonzero/Cast:0
.dnn/zero_fraction_2/cond/count_nonzero/Const:0
8dnn/zero_fraction_2/cond/count_nonzero/NotEqual/Switch:1
1dnn/zero_fraction_2/cond/count_nonzero/NotEqual:0
6dnn/zero_fraction_2/cond/count_nonzero/nonzero_count:0
.dnn/zero_fraction_2/cond/count_nonzero/zeros:0
"dnn/zero_fraction_2/cond/pred_id:0
#dnn/zero_fraction_2/cond/switch_t:0T
dnn/hiddenlayer_2/Relu:08dnn/zero_fraction_2/cond/count_nonzero/NotEqual/Switch:1H
"dnn/zero_fraction_2/cond/pred_id:0"dnn/zero_fraction_2/cond/pred_id:0
?
$dnn/zero_fraction_2/cond/cond_text_1"dnn/zero_fraction_2/cond/pred_id:0#dnn/zero_fraction_2/cond/switch_f:0*?
dnn/hiddenlayer_2/Relu:0
/dnn/zero_fraction_2/cond/count_nonzero_1/Cast:0
0dnn/zero_fraction_2/cond/count_nonzero_1/Const:0
:dnn/zero_fraction_2/cond/count_nonzero_1/NotEqual/Switch:0
3dnn/zero_fraction_2/cond/count_nonzero_1/NotEqual:0
8dnn/zero_fraction_2/cond/count_nonzero_1/nonzero_count:0
0dnn/zero_fraction_2/cond/count_nonzero_1/zeros:0
"dnn/zero_fraction_2/cond/pred_id:0
#dnn/zero_fraction_2/cond/switch_f:0V
dnn/hiddenlayer_2/Relu:0:dnn/zero_fraction_2/cond/count_nonzero_1/NotEqual/Switch:0H
"dnn/zero_fraction_2/cond/pred_id:0"dnn/zero_fraction_2/cond/pred_id:0
?
"dnn/zero_fraction_3/cond/cond_text"dnn/zero_fraction_3/cond/pred_id:0#dnn/zero_fraction_3/cond/switch_t:0 *?
dnn/logits/BiasAdd:0
dnn/zero_fraction_3/cond/Cast:0
-dnn/zero_fraction_3/cond/count_nonzero/Cast:0
.dnn/zero_fraction_3/cond/count_nonzero/Const:0
8dnn/zero_fraction_3/cond/count_nonzero/NotEqual/Switch:1
1dnn/zero_fraction_3/cond/count_nonzero/NotEqual:0
6dnn/zero_fraction_3/cond/count_nonzero/nonzero_count:0
.dnn/zero_fraction_3/cond/count_nonzero/zeros:0
"dnn/zero_fraction_3/cond/pred_id:0
#dnn/zero_fraction_3/cond/switch_t:0H
"dnn/zero_fraction_3/cond/pred_id:0"dnn/zero_fraction_3/cond/pred_id:0P
dnn/logits/BiasAdd:08dnn/zero_fraction_3/cond/count_nonzero/NotEqual/Switch:1
?
$dnn/zero_fraction_3/cond/cond_text_1"dnn/zero_fraction_3/cond/pred_id:0#dnn/zero_fraction_3/cond/switch_f:0*?
dnn/logits/BiasAdd:0
/dnn/zero_fraction_3/cond/count_nonzero_1/Cast:0
0dnn/zero_fraction_3/cond/count_nonzero_1/Const:0
:dnn/zero_fraction_3/cond/count_nonzero_1/NotEqual/Switch:0
3dnn/zero_fraction_3/cond/count_nonzero_1/NotEqual:0
8dnn/zero_fraction_3/cond/count_nonzero_1/nonzero_count:0
0dnn/zero_fraction_3/cond/count_nonzero_1/zeros:0
"dnn/zero_fraction_3/cond/pred_id:0
#dnn/zero_fraction_3/cond/switch_f:0H
"dnn/zero_fraction_3/cond/pred_id:0"dnn/zero_fraction_3/cond/pred_id:0R
dnn/logits/BiasAdd:0:dnn/zero_fraction_3/cond/count_nonzero_1/NotEqual/Switch:0
?
4linear/zero_fraction/total_zero/zero_count/cond_text4linear/zero_fraction/total_zero/zero_count/pred_id:05linear/zero_fraction/total_zero/zero_count/switch_t:0 *?
2linear/zero_fraction/total_zero/zero_count/Const:0
4linear/zero_fraction/total_zero/zero_count/pred_id:0
5linear/zero_fraction/total_zero/zero_count/switch_t:0l
4linear/zero_fraction/total_zero/zero_count/pred_id:04linear/zero_fraction/total_zero/zero_count/pred_id:0
?.
6linear/zero_fraction/total_zero/zero_count/cond_text_14linear/zero_fraction/total_zero/zero_count/pred_id:05linear/zero_fraction/total_zero/zero_count/switch_f:0*?
*linear/linear_model/col_0/weights/part_0:0
&linear/zero_fraction/total_size/Size:0
;linear/zero_fraction/total_zero/zero_count/ToFloat/Switch:0
4linear/zero_fraction/total_zero/zero_count/ToFloat:0
0linear/zero_fraction/total_zero/zero_count/mul:0
4linear/zero_fraction/total_zero/zero_count/pred_id:0
5linear/zero_fraction/total_zero/zero_count/switch_f:0
Flinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual/y:0
Dlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual:0
Plinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp/Switch:0
Ilinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp:0
?linear/zero_fraction/total_zero/zero_count/zero_fraction/Size:0
Dlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Cast:0
Elinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Merge:0
Elinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Merge:1
Flinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Switch:0
Flinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Switch:1
Rlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/Cast:0
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/Const:0
]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Vlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual:0
[linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/nonzero_count:0
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/zeros:0
Tlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/Cast:0
Ulinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/Const:0
_linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Xlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual:0
]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/zeros:0
Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0
Hlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_f:0
Hlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_t:0
Rlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/Cast:0
Tlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/Cast_1:0
Qlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/sub:0
Ulinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/truediv:0
Clinear/zero_fraction/total_zero/zero_count/zero_fraction/fraction:0l
4linear/zero_fraction/total_zero/zero_count/pred_id:04linear/zero_fraction/total_zero/zero_count/pred_id:0~
*linear/linear_model/col_0/weights/part_0:0Plinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp/Switch:0e
&linear/zero_fraction/total_size/Size:0;linear/zero_fraction/total_zero/zero_count/ToFloat/Switch:02?

?

Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/cond_textGlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0Hlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_t:0 *?
Ilinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp:0
Dlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Cast:0
Rlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/Cast:0
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/Const:0
]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Vlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual:0
[linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/nonzero_count:0
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/zeros:0
Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0
Hlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_t:0?
Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0?
Ilinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp:0]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual/Switch:12?

?

Ilinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/cond_text_1Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0Hlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_f:0*?
Ilinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp:0
Tlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/Cast:0
Ulinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/Const:0
_linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Xlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual:0
]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/zeros:0
Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0
Hlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_f:0?
Ilinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp:0_linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0?
Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0
?
6linear/zero_fraction/total_zero/zero_count_1/cond_text6linear/zero_fraction/total_zero/zero_count_1/pred_id:07linear/zero_fraction/total_zero/zero_count_1/switch_t:0 *?
4linear/zero_fraction/total_zero/zero_count_1/Const:0
6linear/zero_fraction/total_zero/zero_count_1/pred_id:0
7linear/zero_fraction/total_zero/zero_count_1/switch_t:0p
6linear/zero_fraction/total_zero/zero_count_1/pred_id:06linear/zero_fraction/total_zero/zero_count_1/pred_id:0
?/
8linear/zero_fraction/total_zero/zero_count_1/cond_text_16linear/zero_fraction/total_zero/zero_count_1/pred_id:07linear/zero_fraction/total_zero/zero_count_1/switch_f:0*?
*linear/linear_model/col_1/weights/part_0:0
(linear/zero_fraction/total_size/Size_1:0
=linear/zero_fraction/total_zero/zero_count_1/ToFloat/Switch:0
6linear/zero_fraction/total_zero/zero_count_1/ToFloat:0
2linear/zero_fraction/total_zero/zero_count_1/mul:0
6linear/zero_fraction/total_zero/zero_count_1/pred_id:0
7linear/zero_fraction/total_zero/zero_count_1/switch_f:0
Hlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual/y:0
Flinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual:0
Rlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp/Switch:0
Klinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp:0
Alinear/zero_fraction/total_zero/zero_count_1/zero_fraction/Size:0
Flinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Cast:0
Glinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Merge:0
Glinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Merge:1
Hlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Switch:0
Hlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Switch:1
Tlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/zeros:0
Vlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_f:0
Jlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_t:0
Tlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/Cast_1:0
Slinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/sub:0
Wlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/truediv:0
Elinear/zero_fraction/total_zero/zero_count_1/zero_fraction/fraction:0p
6linear/zero_fraction/total_zero/zero_count_1/pred_id:06linear/zero_fraction/total_zero/zero_count_1/pred_id:0i
(linear/zero_fraction/total_size/Size_1:0=linear/zero_fraction/total_zero/zero_count_1/ToFloat/Switch:0?
*linear/linear_model/col_1/weights/part_0:0Rlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp/Switch:02?

?

Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/cond_textIlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_t:0 *?	
Klinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp:0
Flinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Cast:0
Tlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_t:0?
Klinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp:0_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual/Switch:1?
Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:02?

?

Klinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/cond_text_1Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_f:0*?
Klinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp:0
Vlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_f:0?
Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0?
Klinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp:0alinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
?
6linear/zero_fraction/total_zero/zero_count_2/cond_text6linear/zero_fraction/total_zero/zero_count_2/pred_id:07linear/zero_fraction/total_zero/zero_count_2/switch_t:0 *?
4linear/zero_fraction/total_zero/zero_count_2/Const:0
6linear/zero_fraction/total_zero/zero_count_2/pred_id:0
7linear/zero_fraction/total_zero/zero_count_2/switch_t:0p
6linear/zero_fraction/total_zero/zero_count_2/pred_id:06linear/zero_fraction/total_zero/zero_count_2/pred_id:0
?/
8linear/zero_fraction/total_zero/zero_count_2/cond_text_16linear/zero_fraction/total_zero/zero_count_2/pred_id:07linear/zero_fraction/total_zero/zero_count_2/switch_f:0*?
*linear/linear_model/col_2/weights/part_0:0
(linear/zero_fraction/total_size/Size_2:0
=linear/zero_fraction/total_zero/zero_count_2/ToFloat/Switch:0
6linear/zero_fraction/total_zero/zero_count_2/ToFloat:0
2linear/zero_fraction/total_zero/zero_count_2/mul:0
6linear/zero_fraction/total_zero/zero_count_2/pred_id:0
7linear/zero_fraction/total_zero/zero_count_2/switch_f:0
Hlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/LessEqual/y:0
Flinear/zero_fraction/total_zero/zero_count_2/zero_fraction/LessEqual:0
Rlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOp/Switch:0
Klinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOp:0
Alinear/zero_fraction/total_zero/zero_count_2/zero_fraction/Size:0
Flinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/Cast:0
Glinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/Merge:0
Glinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/Merge:1
Hlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/Switch:0
Hlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/Switch:1
Tlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/zeros:0
Vlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_f:0
Jlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_t:0
Tlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/Cast_1:0
Slinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/sub:0
Wlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/truediv:0
Elinear/zero_fraction/total_zero/zero_count_2/zero_fraction/fraction:0p
6linear/zero_fraction/total_zero/zero_count_2/pred_id:06linear/zero_fraction/total_zero/zero_count_2/pred_id:0i
(linear/zero_fraction/total_size/Size_2:0=linear/zero_fraction/total_zero/zero_count_2/ToFloat/Switch:0?
*linear/linear_model/col_2/weights/part_0:0Rlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOp/Switch:02?

?

Ilinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/cond_textIlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_t:0 *?	
Klinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOp:0
Flinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/Cast:0
Tlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_t:0?
Ilinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_id:0?
Klinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOp:0_linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/NotEqual/Switch:12?

?

Klinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/cond_text_1Ilinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_f:0*?
Klinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOp:0
Vlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_f:0?
Ilinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_id:0?
Klinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOp:0alinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
?
6linear/zero_fraction/total_zero/zero_count_3/cond_text6linear/zero_fraction/total_zero/zero_count_3/pred_id:07linear/zero_fraction/total_zero/zero_count_3/switch_t:0 *?
4linear/zero_fraction/total_zero/zero_count_3/Const:0
6linear/zero_fraction/total_zero/zero_count_3/pred_id:0
7linear/zero_fraction/total_zero/zero_count_3/switch_t:0p
6linear/zero_fraction/total_zero/zero_count_3/pred_id:06linear/zero_fraction/total_zero/zero_count_3/pred_id:0
?/
8linear/zero_fraction/total_zero/zero_count_3/cond_text_16linear/zero_fraction/total_zero/zero_count_3/pred_id:07linear/zero_fraction/total_zero/zero_count_3/switch_f:0*?
*linear/linear_model/col_3/weights/part_0:0
(linear/zero_fraction/total_size/Size_3:0
=linear/zero_fraction/total_zero/zero_count_3/ToFloat/Switch:0
6linear/zero_fraction/total_zero/zero_count_3/ToFloat:0
2linear/zero_fraction/total_zero/zero_count_3/mul:0
6linear/zero_fraction/total_zero/zero_count_3/pred_id:0
7linear/zero_fraction/total_zero/zero_count_3/switch_f:0
Hlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/LessEqual/y:0
Flinear/zero_fraction/total_zero/zero_count_3/zero_fraction/LessEqual:0
Rlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOp/Switch:0
Klinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOp:0
Alinear/zero_fraction/total_zero/zero_count_3/zero_fraction/Size:0
Flinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/Cast:0
Glinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/Merge:0
Glinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/Merge:1
Hlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/Switch:0
Hlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/Switch:1
Tlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/zeros:0
Vlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_f:0
Jlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_t:0
Tlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/Cast_1:0
Slinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/sub:0
Wlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/truediv:0
Elinear/zero_fraction/total_zero/zero_count_3/zero_fraction/fraction:0i
(linear/zero_fraction/total_size/Size_3:0=linear/zero_fraction/total_zero/zero_count_3/ToFloat/Switch:0?
*linear/linear_model/col_3/weights/part_0:0Rlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOp/Switch:0p
6linear/zero_fraction/total_zero/zero_count_3/pred_id:06linear/zero_fraction/total_zero/zero_count_3/pred_id:02?

?

Ilinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/cond_textIlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_t:0 *?	
Klinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOp:0
Flinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/Cast:0
Tlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_t:0?
Klinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOp:0_linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/NotEqual/Switch:1?
Ilinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_id:02?

?

Klinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/cond_text_1Ilinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_f:0*?
Klinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOp:0
Vlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_f:0?
Klinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOp:0alinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0?
Ilinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_id:0
?
6linear/zero_fraction/total_zero/zero_count_4/cond_text6linear/zero_fraction/total_zero/zero_count_4/pred_id:07linear/zero_fraction/total_zero/zero_count_4/switch_t:0 *?
4linear/zero_fraction/total_zero/zero_count_4/Const:0
6linear/zero_fraction/total_zero/zero_count_4/pred_id:0
7linear/zero_fraction/total_zero/zero_count_4/switch_t:0p
6linear/zero_fraction/total_zero/zero_count_4/pred_id:06linear/zero_fraction/total_zero/zero_count_4/pred_id:0
?/
8linear/zero_fraction/total_zero/zero_count_4/cond_text_16linear/zero_fraction/total_zero/zero_count_4/pred_id:07linear/zero_fraction/total_zero/zero_count_4/switch_f:0*?
*linear/linear_model/col_4/weights/part_0:0
(linear/zero_fraction/total_size/Size_4:0
=linear/zero_fraction/total_zero/zero_count_4/ToFloat/Switch:0
6linear/zero_fraction/total_zero/zero_count_4/ToFloat:0
2linear/zero_fraction/total_zero/zero_count_4/mul:0
6linear/zero_fraction/total_zero/zero_count_4/pred_id:0
7linear/zero_fraction/total_zero/zero_count_4/switch_f:0
Hlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/LessEqual/y:0
Flinear/zero_fraction/total_zero/zero_count_4/zero_fraction/LessEqual:0
Rlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/ReadVariableOp/Switch:0
Klinear/zero_fraction/total_zero/zero_count_4/zero_fraction/ReadVariableOp:0
Alinear/zero_fraction/total_zero/zero_count_4/zero_fraction/Size:0
Flinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/Cast:0
Glinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/Merge:0
Glinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/Merge:1
Hlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/Switch:0
Hlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/Switch:1
Tlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/zeros:0
Vlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/switch_f:0
Jlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/switch_t:0
Tlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/counts_to_fraction/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/counts_to_fraction/Cast_1:0
Slinear/zero_fraction/total_zero/zero_count_4/zero_fraction/counts_to_fraction/sub:0
Wlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/counts_to_fraction/truediv:0
Elinear/zero_fraction/total_zero/zero_count_4/zero_fraction/fraction:0p
6linear/zero_fraction/total_zero/zero_count_4/pred_id:06linear/zero_fraction/total_zero/zero_count_4/pred_id:0?
*linear/linear_model/col_4/weights/part_0:0Rlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/ReadVariableOp/Switch:0i
(linear/zero_fraction/total_size/Size_4:0=linear/zero_fraction/total_zero/zero_count_4/ToFloat/Switch:02?

?

Ilinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/cond_textIlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/switch_t:0 *?	
Klinear/zero_fraction/total_zero/zero_count_4/zero_fraction/ReadVariableOp:0
Flinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/Cast:0
Tlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/switch_t:0?
Klinear/zero_fraction/total_zero/zero_count_4/zero_fraction/ReadVariableOp:0_linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/NotEqual/Switch:1?
Ilinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/pred_id:02?

?

Klinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/cond_text_1Ilinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/switch_f:0*?
Klinear/zero_fraction/total_zero/zero_count_4/zero_fraction/ReadVariableOp:0
Vlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/switch_f:0?
Klinear/zero_fraction/total_zero/zero_count_4/zero_fraction/ReadVariableOp:0alinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0?
Ilinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/pred_id:0
?
%linear/zero_fraction_1/cond/cond_text%linear/zero_fraction_1/cond/pred_id:0&linear/zero_fraction_1/cond/switch_t:0 *?
<linear/linear_model/linear_model/linear_model/weighted_sum:0
"linear/zero_fraction_1/cond/Cast:0
0linear/zero_fraction_1/cond/count_nonzero/Cast:0
1linear/zero_fraction_1/cond/count_nonzero/Const:0
;linear/zero_fraction_1/cond/count_nonzero/NotEqual/Switch:1
4linear/zero_fraction_1/cond/count_nonzero/NotEqual:0
9linear/zero_fraction_1/cond/count_nonzero/nonzero_count:0
1linear/zero_fraction_1/cond/count_nonzero/zeros:0
%linear/zero_fraction_1/cond/pred_id:0
&linear/zero_fraction_1/cond/switch_t:0N
%linear/zero_fraction_1/cond/pred_id:0%linear/zero_fraction_1/cond/pred_id:0{
<linear/linear_model/linear_model/linear_model/weighted_sum:0;linear/zero_fraction_1/cond/count_nonzero/NotEqual/Switch:1
?
'linear/zero_fraction_1/cond/cond_text_1%linear/zero_fraction_1/cond/pred_id:0&linear/zero_fraction_1/cond/switch_f:0*?
<linear/linear_model/linear_model/linear_model/weighted_sum:0
2linear/zero_fraction_1/cond/count_nonzero_1/Cast:0
3linear/zero_fraction_1/cond/count_nonzero_1/Const:0
=linear/zero_fraction_1/cond/count_nonzero_1/NotEqual/Switch:0
6linear/zero_fraction_1/cond/count_nonzero_1/NotEqual:0
;linear/zero_fraction_1/cond/count_nonzero_1/nonzero_count:0
3linear/zero_fraction_1/cond/count_nonzero_1/zeros:0
%linear/zero_fraction_1/cond/pred_id:0
&linear/zero_fraction_1/cond/switch_f:0}
<linear/linear_model/linear_model/linear_model/weighted_sum:0=linear/zero_fraction_1/cond/count_nonzero_1/NotEqual/Switch:0N
%linear/zero_fraction_1/cond/pred_id:0%linear/zero_fraction_1/cond/pred_id:0"?*
trainable_variables?*?*
?
Udnn/input_from_feature_columns/input_layer/col_0_embedding/embedding_weights/part_0:0Zdnn/input_from_feature_columns/input_layer/col_0_embedding/embedding_weights/part_0/Assignidnn/input_from_feature_columns/input_layer/col_0_embedding/embedding_weights/part_0/Read/ReadVariableOp:0"Z
Ldnn/input_from_feature_columns/input_layer/col_0_embedding/embedding_weights  "(2rdnn/input_from_feature_columns/input_layer/col_0_embedding/embedding_weights/part_0/Initializer/truncated_normal:08
?
Udnn/input_from_feature_columns/input_layer/col_1_embedding/embedding_weights/part_0:0Zdnn/input_from_feature_columns/input_layer/col_1_embedding/embedding_weights/part_0/Assignidnn/input_from_feature_columns/input_layer/col_1_embedding/embedding_weights/part_0/Read/ReadVariableOp:0"Z
Ldnn/input_from_feature_columns/input_layer/col_1_embedding/embedding_weights  "(2rdnn/input_from_feature_columns/input_layer/col_1_embedding/embedding_weights/part_0/Initializer/truncated_normal:08
?
Udnn/input_from_feature_columns/input_layer/col_3_embedding/embedding_weights/part_0:0Zdnn/input_from_feature_columns/input_layer/col_3_embedding/embedding_weights/part_0/Assignidnn/input_from_feature_columns/input_layer/col_3_embedding/embedding_weights/part_0/Read/ReadVariableOp:0"Z
Ldnn/input_from_feature_columns/input_layer/col_3_embedding/embedding_weights  "(2rdnn/input_from_feature_columns/input_layer/col_3_embedding/embedding_weights/part_0/Initializer/truncated_normal:08
?
Udnn/input_from_feature_columns/input_layer/col_4_embedding/embedding_weights/part_0:0Zdnn/input_from_feature_columns/input_layer/col_4_embedding/embedding_weights/part_0/Assignidnn/input_from_feature_columns/input_layer/col_4_embedding/embedding_weights/part_0/Read/ReadVariableOp:0"Z
Ldnn/input_from_feature_columns/input_layer/col_4_embedding/embedding_weights  "(2rdnn/input_from_feature_columns/input_layer/col_4_embedding/embedding_weights/part_0/Initializer/truncated_normal:08
?
!dnn/hiddenlayer_0/kernel/part_0:0&dnn/hiddenlayer_0/kernel/part_0/Assign5dnn/hiddenlayer_0/kernel/part_0/Read/ReadVariableOp:0"&
dnn/hiddenlayer_0/kernel	  "	(2<dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform:08
?
dnn/hiddenlayer_0/bias/part_0:0$dnn/hiddenlayer_0/bias/part_0/Assign3dnn/hiddenlayer_0/bias/part_0/Read/ReadVariableOp:0"!
dnn/hiddenlayer_0/bias "(21dnn/hiddenlayer_0/bias/part_0/Initializer/zeros:08
?
!dnn/hiddenlayer_1/kernel/part_0:0&dnn/hiddenlayer_1/kernel/part_0/Assign5dnn/hiddenlayer_1/kernel/part_0/Read/ReadVariableOp:0"&
dnn/hiddenlayer_1/kernel  "(2<dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform:08
?
dnn/hiddenlayer_1/bias/part_0:0$dnn/hiddenlayer_1/bias/part_0/Assign3dnn/hiddenlayer_1/bias/part_0/Read/ReadVariableOp:0"!
dnn/hiddenlayer_1/bias "(21dnn/hiddenlayer_1/bias/part_0/Initializer/zeros:08
?
!dnn/hiddenlayer_2/kernel/part_0:0&dnn/hiddenlayer_2/kernel/part_0/Assign5dnn/hiddenlayer_2/kernel/part_0/Read/ReadVariableOp:0"&
dnn/hiddenlayer_2/kernel  "(2<dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform:08
?
dnn/hiddenlayer_2/bias/part_0:0$dnn/hiddenlayer_2/bias/part_0/Assign3dnn/hiddenlayer_2/bias/part_0/Read/ReadVariableOp:0"!
dnn/hiddenlayer_2/bias "(21dnn/hiddenlayer_2/bias/part_0/Initializer/zeros:08
?
dnn/logits/kernel/part_0:0dnn/logits/kernel/part_0/Assign.dnn/logits/kernel/part_0/Read/ReadVariableOp:0"
dnn/logits/kernel  "(25dnn/logits/kernel/part_0/Initializer/random_uniform:08
?
dnn/logits/bias/part_0:0dnn/logits/bias/part_0/Assign,dnn/logits/bias/part_0/Read/ReadVariableOp:0"
dnn/logits/bias "(2*dnn/logits/bias/part_0/Initializer/zeros:08
?
*linear/linear_model/col_0/weights/part_0:0/linear/linear_model/col_0/weights/part_0/Assign>linear/linear_model/col_0/weights/part_0/Read/ReadVariableOp:0"/
!linear/linear_model/col_0/weights  "(2<linear/linear_model/col_0/weights/part_0/Initializer/zeros:08
?
*linear/linear_model/col_1/weights/part_0:0/linear/linear_model/col_1/weights/part_0/Assign>linear/linear_model/col_1/weights/part_0/Read/ReadVariableOp:0"/
!linear/linear_model/col_1/weights  "(2<linear/linear_model/col_1/weights/part_0/Initializer/zeros:08
?
*linear/linear_model/col_2/weights/part_0:0/linear/linear_model/col_2/weights/part_0/Assign>linear/linear_model/col_2/weights/part_0/Read/ReadVariableOp:0"/
!linear/linear_model/col_2/weights  "(2<linear/linear_model/col_2/weights/part_0/Initializer/zeros:08
?
*linear/linear_model/col_3/weights/part_0:0/linear/linear_model/col_3/weights/part_0/Assign>linear/linear_model/col_3/weights/part_0/Read/ReadVariableOp:0"/
!linear/linear_model/col_3/weights  "(2<linear/linear_model/col_3/weights/part_0/Initializer/zeros:08
?
*linear/linear_model/col_4/weights/part_0:0/linear/linear_model/col_4/weights/part_0/Assign>linear/linear_model/col_4/weights/part_0/Read/ReadVariableOp:0"/
!linear/linear_model/col_4/weights  "(2<linear/linear_model/col_4/weights/part_0/Initializer/zeros:08
?
)linear/linear_model/bias_weights/part_0:0.linear/linear_model/bias_weights/part_0/Assign=linear/linear_model/bias_weights/part_0/Read/ReadVariableOp:0"+
 linear/linear_model/bias_weights "(2;linear/linear_model/bias_weights/part_0/Initializer/zeros:08"?+
	variables?*?*
Z
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0H
?
Udnn/input_from_feature_columns/input_layer/col_0_embedding/embedding_weights/part_0:0Zdnn/input_from_feature_columns/input_layer/col_0_embedding/embedding_weights/part_0/Assignidnn/input_from_feature_columns/input_layer/col_0_embedding/embedding_weights/part_0/Read/ReadVariableOp:0"Z
Ldnn/input_from_feature_columns/input_layer/col_0_embedding/embedding_weights  "(2rdnn/input_from_feature_columns/input_layer/col_0_embedding/embedding_weights/part_0/Initializer/truncated_normal:08
?
Udnn/input_from_feature_columns/input_layer/col_1_embedding/embedding_weights/part_0:0Zdnn/input_from_feature_columns/input_layer/col_1_embedding/embedding_weights/part_0/Assignidnn/input_from_feature_columns/input_layer/col_1_embedding/embedding_weights/part_0/Read/ReadVariableOp:0"Z
Ldnn/input_from_feature_columns/input_layer/col_1_embedding/embedding_weights  "(2rdnn/input_from_feature_columns/input_layer/col_1_embedding/embedding_weights/part_0/Initializer/truncated_normal:08
?
Udnn/input_from_feature_columns/input_layer/col_3_embedding/embedding_weights/part_0:0Zdnn/input_from_feature_columns/input_layer/col_3_embedding/embedding_weights/part_0/Assignidnn/input_from_feature_columns/input_layer/col_3_embedding/embedding_weights/part_0/Read/ReadVariableOp:0"Z
Ldnn/input_from_feature_columns/input_layer/col_3_embedding/embedding_weights  "(2rdnn/input_from_feature_columns/input_layer/col_3_embedding/embedding_weights/part_0/Initializer/truncated_normal:08
?
Udnn/input_from_feature_columns/input_layer/col_4_embedding/embedding_weights/part_0:0Zdnn/input_from_feature_columns/input_layer/col_4_embedding/embedding_weights/part_0/Assignidnn/input_from_feature_columns/input_layer/col_4_embedding/embedding_weights/part_0/Read/ReadVariableOp:0"Z
Ldnn/input_from_feature_columns/input_layer/col_4_embedding/embedding_weights  "(2rdnn/input_from_feature_columns/input_layer/col_4_embedding/embedding_weights/part_0/Initializer/truncated_normal:08
?
!dnn/hiddenlayer_0/kernel/part_0:0&dnn/hiddenlayer_0/kernel/part_0/Assign5dnn/hiddenlayer_0/kernel/part_0/Read/ReadVariableOp:0"&
dnn/hiddenlayer_0/kernel	  "	(2<dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform:08
?
dnn/hiddenlayer_0/bias/part_0:0$dnn/hiddenlayer_0/bias/part_0/Assign3dnn/hiddenlayer_0/bias/part_0/Read/ReadVariableOp:0"!
dnn/hiddenlayer_0/bias "(21dnn/hiddenlayer_0/bias/part_0/Initializer/zeros:08
?
!dnn/hiddenlayer_1/kernel/part_0:0&dnn/hiddenlayer_1/kernel/part_0/Assign5dnn/hiddenlayer_1/kernel/part_0/Read/ReadVariableOp:0"&
dnn/hiddenlayer_1/kernel  "(2<dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform:08
?
dnn/hiddenlayer_1/bias/part_0:0$dnn/hiddenlayer_1/bias/part_0/Assign3dnn/hiddenlayer_1/bias/part_0/Read/ReadVariableOp:0"!
dnn/hiddenlayer_1/bias "(21dnn/hiddenlayer_1/bias/part_0/Initializer/zeros:08
?
!dnn/hiddenlayer_2/kernel/part_0:0&dnn/hiddenlayer_2/kernel/part_0/Assign5dnn/hiddenlayer_2/kernel/part_0/Read/ReadVariableOp:0"&
dnn/hiddenlayer_2/kernel  "(2<dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform:08
?
dnn/hiddenlayer_2/bias/part_0:0$dnn/hiddenlayer_2/bias/part_0/Assign3dnn/hiddenlayer_2/bias/part_0/Read/ReadVariableOp:0"!
dnn/hiddenlayer_2/bias "(21dnn/hiddenlayer_2/bias/part_0/Initializer/zeros:08
?
dnn/logits/kernel/part_0:0dnn/logits/kernel/part_0/Assign.dnn/logits/kernel/part_0/Read/ReadVariableOp:0"
dnn/logits/kernel  "(25dnn/logits/kernel/part_0/Initializer/random_uniform:08
?
dnn/logits/bias/part_0:0dnn/logits/bias/part_0/Assign,dnn/logits/bias/part_0/Read/ReadVariableOp:0"
dnn/logits/bias "(2*dnn/logits/bias/part_0/Initializer/zeros:08
?
*linear/linear_model/col_0/weights/part_0:0/linear/linear_model/col_0/weights/part_0/Assign>linear/linear_model/col_0/weights/part_0/Read/ReadVariableOp:0"/
!linear/linear_model/col_0/weights  "(2<linear/linear_model/col_0/weights/part_0/Initializer/zeros:08
?
*linear/linear_model/col_1/weights/part_0:0/linear/linear_model/col_1/weights/part_0/Assign>linear/linear_model/col_1/weights/part_0/Read/ReadVariableOp:0"/
!linear/linear_model/col_1/weights  "(2<linear/linear_model/col_1/weights/part_0/Initializer/zeros:08
?
*linear/linear_model/col_2/weights/part_0:0/linear/linear_model/col_2/weights/part_0/Assign>linear/linear_model/col_2/weights/part_0/Read/ReadVariableOp:0"/
!linear/linear_model/col_2/weights  "(2<linear/linear_model/col_2/weights/part_0/Initializer/zeros:08
?
*linear/linear_model/col_3/weights/part_0:0/linear/linear_model/col_3/weights/part_0/Assign>linear/linear_model/col_3/weights/part_0/Read/ReadVariableOp:0"/
!linear/linear_model/col_3/weights  "(2<linear/linear_model/col_3/weights/part_0/Initializer/zeros:08
?
*linear/linear_model/col_4/weights/part_0:0/linear/linear_model/col_4/weights/part_0/Assign>linear/linear_model/col_4/weights/part_0/Read/ReadVariableOp:0"/
!linear/linear_model/col_4/weights  "(2<linear/linear_model/col_4/weights/part_0/Initializer/zeros:08
?
)linear/linear_model/bias_weights/part_0:0.linear/linear_model/bias_weights/part_0/Assign=linear/linear_model/bias_weights/part_0/Read/ReadVariableOp:0"+
 linear/linear_model/bias_weights "(2;linear/linear_model/bias_weights/part_0/Initializer/zeros:08"%
saved_model_main_op


group_deps*?
predict?
2
key+
PlaceholderWithDefault:0?????????
+
csv_row 
Placeholder:0?????????*
key#
ExpandDims:0?????????H
probabilities7
 head/predictions/probabilities:0??????????
all_classes0
head/predictions/Tile_1:0?????????&
logits
add:0??????????
all_class_ids.
head/predictions/Tile:0?????????X
classesM
6head/predictions/hash_table_Lookup/LookupTableFindV2:0?????????C
	class_ids6
head/predictions/ExpandDims_2:0	?????????tensorflow/serving/predict