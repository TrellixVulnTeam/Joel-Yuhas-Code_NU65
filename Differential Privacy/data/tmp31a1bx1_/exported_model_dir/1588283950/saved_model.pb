Įż
Ļ/³/
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	
A
AddV2
x"T
y"T
z"T"
Ttype:
2	
h
All	
input

reduction_indices"Tidx

output
"
	keep_dimsbool( "
Tidxtype0:
2	

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
ø
AsString

input"T

output"
Ttype:
2		
"
	precisionint’’’’’’’’’"

scientificbool( "
shortestbool( "
widthint’’’’’’’’’"
fillstring 
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeint
B
AssignVariableOp
resource
value"dtype"
dtypetype
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
h
Equal
x"T
y"T
z
"
Ttype:
2	
"$
incompatible_shape_errorbool(
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
”
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype
.
Identity

input"T
output"T"	
Ttype
ŗ
If
cond"Tcond
input2Tin
output2Tout"
Tcondtype"
Tin
list(type)("
Tout
list(type)("
then_branchfunc"
else_branchfunc" 
output_shapeslist(shape)
 
É
InitializeTableFromTextFileV2
table_handle
filename"
	key_indexint(0ž’’’’’’’’"
value_indexint(0ž’’’’’’’’"+

vocab_sizeint’’’’’’’’’(0’’’’’’’’’"
	delimiterstring	
+
IsInf
x"T
y
"
Ttype:
2
:
Less
x"T
y"T
z
"
Ttype:
2	
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	

Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
k
NotEqual
x"T
y"T
z
"
Ttype:
2	
"$
incompatible_shape_errorbool(

OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisint’’’’’’’’’"	
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

ParseExampleV2

serialized	
names
sparse_keys

dense_keys
ragged_keys
dense_defaults2Tdense
sparse_indices	*
num_sparse
sparse_values2sparse_types
sparse_shapes	*
num_sparse
dense_values2Tdense#
ragged_values2ragged_value_types'
ragged_row_splits2ragged_split_types"
Tdense
list(type)(:
2	"

num_sparseint("%
sparse_types
list(type)(:
2	"+
ragged_value_types
list(type)(:
2	"*
ragged_split_types
list(type)(:
2	"
dense_shapeslist(shape)(
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
b
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:

2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
A
SelectV2
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
¼
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
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
ö
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
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape
9
VarIsInitializedOp
resource
is_initialized

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
Ttype"serve*2.1.02unknown8ķÜ

global_step/Initializer/zerosConst*
_class
loc:@global_step*
_output_shapes
: *
dtype0	*
value	B	 R 

global_stepVarHandleOp*
_class
loc:@global_step*
_output_shapes
: *
dtype0	*
shape: *
shared_nameglobal_step
g
,global_step/IsInitialized/VarIsInitializedOpVarIsInitializedOpglobal_step*
_output_shapes
: 
_
global_step/AssignAssignVariableOpglobal_stepglobal_step/Initializer/zeros*
dtype0	
c
global_step/Read/ReadVariableOpReadVariableOpglobal_step*
_output_shapes
: *
dtype0	
o
input_example_tensorPlaceholder*#
_output_shapes
:’’’’’’’’’*
dtype0*
shape:’’’’’’’’’
U
ParseExample/ConstConst*
_output_shapes
: *
dtype0*
valueB 
W
ParseExample/Const_1Const*
_output_shapes
: *
dtype0*
valueB 
W
ParseExample/Const_2Const*
_output_shapes
: *
dtype0*
valueB 
W
ParseExample/Const_3Const*
_output_shapes
: *
dtype0*
valueB 
W
ParseExample/Const_4Const*
_output_shapes
: *
dtype0*
valueB 
W
ParseExample/Const_5Const*
_output_shapes
: *
dtype0*
valueB 
W
ParseExample/Const_6Const*
_output_shapes
: *
dtype0*
valueB 
W
ParseExample/Const_7Const*
_output_shapes
: *
dtype0*
valueB 
W
ParseExample/Const_8Const*
_output_shapes
: *
dtype0*
valueB 
W
ParseExample/Const_9Const*
_output_shapes
: *
dtype0*
valueB 
X
ParseExample/Const_10Const*
_output_shapes
: *
dtype0*
valueB 
X
ParseExample/Const_11Const*
_output_shapes
: *
dtype0*
valueB 
d
!ParseExample/ParseExampleV2/namesConst*
_output_shapes
: *
dtype0*
valueB 
}
'ParseExample/ParseExampleV2/sparse_keysConst*
_output_shapes
:*
dtype0*"
valueBBeducation-num
ü
&ParseExample/ParseExampleV2/dense_keysConst*
_output_shapes
:*
dtype0*”
valueBBageBcapital-gainBcapital-lossB	educationBhours-per-weekBmarital-statusBnative-countryB
occupationBraceBrelationshipBsexB	workclass
j
'ParseExample/ParseExampleV2/ragged_keysConst*
_output_shapes
: *
dtype0*
valueB 

ParseExample/ParseExampleV2ParseExampleV2input_example_tensor!ParseExample/ParseExampleV2/names'ParseExample/ParseExampleV2/sparse_keys&ParseExample/ParseExampleV2/dense_keys'ParseExample/ParseExampleV2/ragged_keysParseExample/ConstParseExample/Const_1ParseExample/Const_2ParseExample/Const_3ParseExample/Const_4ParseExample/Const_5ParseExample/Const_6ParseExample/Const_7ParseExample/Const_8ParseExample/Const_9ParseExample/Const_10ParseExample/Const_11*
Tdense
2*ņ
_output_shapesß
Ü:’’’’’’’’’:’’’’’’’’’::’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’**
dense_shapes
: : : : : : : : : : : : *

num_sparse*
ragged_split_types
 *
ragged_value_types
 *
sparse_types
2
ø

asset_pathConst"/device:CPU:**
_output_shapes
: *
dtype0*o
valuefBd B^D:\Spooky\A-Documents\Code\Differential Privacy\data\tmp31a1bx1_\transform_fn\assets\workclass
ŗ
asset_path_1Const"/device:CPU:**
_output_shapes
: *
dtype0*o
valuefBd B^D:\Spooky\A-Documents\Code\Differential Privacy\data\tmp31a1bx1_\transform_fn\assets\education
æ
asset_path_2Const"/device:CPU:**
_output_shapes
: *
dtype0*t
valuekBi BcD:\Spooky\A-Documents\Code\Differential Privacy\data\tmp31a1bx1_\transform_fn\assets\marital-status
»
asset_path_3Const"/device:CPU:**
_output_shapes
: *
dtype0*p
valuegBe B_D:\Spooky\A-Documents\Code\Differential Privacy\data\tmp31a1bx1_\transform_fn\assets\occupation
½
asset_path_4Const"/device:CPU:**
_output_shapes
: *
dtype0*r
valueiBg BaD:\Spooky\A-Documents\Code\Differential Privacy\data\tmp31a1bx1_\transform_fn\assets\relationship
µ
asset_path_5Const"/device:CPU:**
_output_shapes
: *
dtype0*j
valueaB_ BYD:\Spooky\A-Documents\Code\Differential Privacy\data\tmp31a1bx1_\transform_fn\assets\race
“
asset_path_6Const"/device:CPU:**
_output_shapes
: *
dtype0*i
value`B^ BXD:\Spooky\A-Documents\Code\Differential Privacy\data\tmp31a1bx1_\transform_fn\assets\sex
æ
asset_path_7Const"/device:CPU:**
_output_shapes
: *
dtype0*t
valuekBi BcD:\Spooky\A-Documents\Code\Differential Privacy\data\tmp31a1bx1_\transform_fn\assets\native-country
A
IdentityIdentity
asset_path*
T0*
_output_shapes
: 
E

Identity_1Identityasset_path_1*
T0*
_output_shapes
: 
E

Identity_2Identityasset_path_2*
T0*
_output_shapes
: 
E

Identity_3Identityasset_path_3*
T0*
_output_shapes
: 
E

Identity_4Identityasset_path_4*
T0*
_output_shapes
: 
E

Identity_5Identityasset_path_5*
T0*
_output_shapes
: 
E

Identity_6Identityasset_path_6*
T0*
_output_shapes
: 
E

Identity_7Identityasset_path_7*
T0*
_output_shapes
: 
T
transform/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  Į
V
transform/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  “B
V
transform/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *    
V
transform/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *OĆG
V
transform/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *    
V
transform/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *  E
V
transform/Const_6Const*
_output_shapes
: *
dtype0*
valueB
 *  æ
V
transform/Const_7Const*
_output_shapes
: *
dtype0*
valueB
 *  ĘB
V
transform/Const_8Const*
_output_shapes
: *
dtype0*
valueB
 *  æ
V
transform/Const_9Const*
_output_shapes
: *
dtype0*
valueB
 *  A
T
transform/Const_10Const*
_output_shapes
: *
dtype0	*
value	B	 R	

transform/Const_11Const*
_output_shapes
: *
dtype0*Y
valuePBN BHC:\Users\Spooky\AppData\Local\Temp\tmpzx52st7o\tftransform_tmp\workclass
T
transform/Const_12Const*
_output_shapes
: *
dtype0	*
value	B	 R

transform/Const_13Const*
_output_shapes
: *
dtype0*Y
valuePBN BHC:\Users\Spooky\AppData\Local\Temp\tmpzx52st7o\tftransform_tmp\education
T
transform/Const_14Const*
_output_shapes
: *
dtype0	*
value	B	 R
 
transform/Const_15Const*
_output_shapes
: *
dtype0*^
valueUBS BMC:\Users\Spooky\AppData\Local\Temp\tmpzx52st7o\tftransform_tmp\marital-status
T
transform/Const_16Const*
_output_shapes
: *
dtype0	*
value	B	 R

transform/Const_17Const*
_output_shapes
: *
dtype0*Z
valueQBO BIC:\Users\Spooky\AppData\Local\Temp\tmpzx52st7o\tftransform_tmp\occupation
T
transform/Const_18Const*
_output_shapes
: *
dtype0	*
value	B	 R

transform/Const_19Const*
_output_shapes
: *
dtype0*\
valueSBQ BKC:\Users\Spooky\AppData\Local\Temp\tmpzx52st7o\tftransform_tmp\relationship
T
transform/Const_20Const*
_output_shapes
: *
dtype0	*
value	B	 R

transform/Const_21Const*
_output_shapes
: *
dtype0*T
valueKBI BCC:\Users\Spooky\AppData\Local\Temp\tmpzx52st7o\tftransform_tmp\race
T
transform/Const_22Const*
_output_shapes
: *
dtype0	*
value	B	 R

transform/Const_23Const*
_output_shapes
: *
dtype0*S
valueJBH BBC:\Users\Spooky\AppData\Local\Temp\tmpzx52st7o\tftransform_tmp\sex
T
transform/Const_24Const*
_output_shapes
: *
dtype0	*
value	B	 R*
 
transform/Const_25Const*
_output_shapes
: *
dtype0*^
valueUBS BMC:\Users\Spooky\AppData\Local\Temp\tmpzx52st7o\tftransform_tmp\native-country
y
transform/transform/inputs/agePlaceholder*#
_output_shapes
:’’’’’’’’’*
dtype0*
shape:’’’’’’’’’

)transform/transform/inputs/F_capital-gainPlaceholder*#
_output_shapes
:’’’’’’’’’*
dtype0*
shape:’’’’’’’’’

)transform/transform/inputs/F_capital-lossPlaceholder*#
_output_shapes
:’’’’’’’’’*
dtype0*
shape:’’’’’’’’’

$transform/transform/inputs/educationPlaceholder*#
_output_shapes
:’’’’’’’’’*
dtype0*
shape:’’’’’’’’’
y
0transform/transform/inputs/F_education-num/shapePlaceholder*
_output_shapes
:*
dtype0	*
shape:

1transform/transform/inputs/F_education-num/valuesPlaceholder*#
_output_shapes
:’’’’’’’’’*
dtype0*
shape:’’’’’’’’’

2transform/transform/inputs/F_education-num/indicesPlaceholder*'
_output_shapes
:’’’’’’’’’*
dtype0	*
shape:’’’’’’’’’

+transform/transform/inputs/F_hours-per-weekPlaceholder*#
_output_shapes
:’’’’’’’’’*
dtype0*
shape:’’’’’’’’’
{
 transform/transform/inputs/labelPlaceholder*#
_output_shapes
:’’’’’’’’’*
dtype0*
shape:’’’’’’’’’

+transform/transform/inputs/F_marital-statusPlaceholder*#
_output_shapes
:’’’’’’’’’*
dtype0*
shape:’’’’’’’’’

+transform/transform/inputs/F_native-countryPlaceholder*#
_output_shapes
:’’’’’’’’’*
dtype0*
shape:’’’’’’’’’

%transform/transform/inputs/occupationPlaceholder*#
_output_shapes
:’’’’’’’’’*
dtype0*
shape:’’’’’’’’’
z
transform/transform/inputs/racePlaceholder*#
_output_shapes
:’’’’’’’’’*
dtype0*
shape:’’’’’’’’’

'transform/transform/inputs/relationshipPlaceholder*#
_output_shapes
:’’’’’’’’’*
dtype0*
shape:’’’’’’’’’
y
transform/transform/inputs/sexPlaceholder*#
_output_shapes
:’’’’’’’’’*
dtype0*
shape:’’’’’’’’’

$transform/transform/inputs/workclassPlaceholder*#
_output_shapes
:’’’’’’’’’*
dtype0*
shape:’’’’’’’’’

*transform/transform/inputs/inputs/age_copyIdentityParseExample/ParseExampleV2:3*
T0*#
_output_shapes
:’’’’’’’’’

5transform/transform/inputs/inputs/F_capital-gain_copyIdentityParseExample/ParseExampleV2:4*
T0*#
_output_shapes
:’’’’’’’’’

5transform/transform/inputs/inputs/F_capital-loss_copyIdentityParseExample/ParseExampleV2:5*
T0*#
_output_shapes
:’’’’’’’’’

0transform/transform/inputs/inputs/education_copyIdentityParseExample/ParseExampleV2:6*
T0*#
_output_shapes
:’’’’’’’’’

>transform/transform/inputs/inputs/F_education-num/indices_copyIdentityParseExample/ParseExampleV2*
T0	*'
_output_shapes
:’’’’’’’’’

=transform/transform/inputs/inputs/F_education-num/values_copyIdentityParseExample/ParseExampleV2:1*
T0*#
_output_shapes
:’’’’’’’’’

<transform/transform/inputs/inputs/F_education-num/shape_copyIdentityParseExample/ParseExampleV2:2*
T0	*
_output_shapes
:

7transform/transform/inputs/inputs/F_hours-per-week_copyIdentityParseExample/ParseExampleV2:7*
T0*#
_output_shapes
:’’’’’’’’’

,transform/transform/inputs/inputs/label_copyIdentity transform/transform/inputs/label*
T0*#
_output_shapes
:’’’’’’’’’

7transform/transform/inputs/inputs/F_marital-status_copyIdentityParseExample/ParseExampleV2:8*
T0*#
_output_shapes
:’’’’’’’’’

7transform/transform/inputs/inputs/F_native-country_copyIdentityParseExample/ParseExampleV2:9*
T0*#
_output_shapes
:’’’’’’’’’

1transform/transform/inputs/inputs/occupation_copyIdentityParseExample/ParseExampleV2:10*
T0*#
_output_shapes
:’’’’’’’’’

+transform/transform/inputs/inputs/race_copyIdentityParseExample/ParseExampleV2:11*
T0*#
_output_shapes
:’’’’’’’’’

3transform/transform/inputs/inputs/relationship_copyIdentityParseExample/ParseExampleV2:12*
T0*#
_output_shapes
:’’’’’’’’’

*transform/transform/inputs/inputs/sex_copyIdentityParseExample/ParseExampleV2:13*
T0*#
_output_shapes
:’’’’’’’’’

0transform/transform/inputs/inputs/workclass_copyIdentityParseExample/ParseExampleV2:14*
T0*#
_output_shapes
:’’’’’’’’’
|
2transform/transform/scale_to_0_1/min_and_max/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
ø
0transform/transform/scale_to_0_1/min_and_max/MaxMax*transform/transform/inputs/inputs/age_copy2transform/transform/scale_to_0_1/min_and_max/Const*
T0*
_output_shapes
: 

7transform/transform/scale_to_0_1/min_and_max/zeros_like	ZerosLike*transform/transform/inputs/inputs/age_copy*
T0*#
_output_shapes
:’’’’’’’’’
Ź
0transform/transform/scale_to_0_1/min_and_max/subSub7transform/transform/scale_to_0_1/min_and_max/zeros_like*transform/transform/inputs/inputs/age_copy*
T0*#
_output_shapes
:’’’’’’’’’
~
4transform/transform/scale_to_0_1/min_and_max/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
Ā
2transform/transform/scale_to_0_1/min_and_max/Max_1Max0transform/transform/scale_to_0_1/min_and_max/sub4transform/transform/scale_to_0_1/min_and_max/Const_1*
T0*
_output_shapes
: 
u
2transform/transform/scale_to_0_1/min_and_max/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
w
4transform/transform/scale_to_0_1/min_and_max/Shape_1Const*
_output_shapes
: *
dtype0*
valueB 
×
Atransform/transform/scale_to_0_1/min_and_max/assert_equal_1/EqualEqual2transform/transform/scale_to_0_1/min_and_max/Shape4transform/transform/scale_to_0_1/min_and_max/Shape_1*
T0*
_output_shapes
: 

Atransform/transform/scale_to_0_1/min_and_max/assert_equal_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
ä
?transform/transform/scale_to_0_1/min_and_max/assert_equal_1/AllAllAtransform/transform/scale_to_0_1/min_and_max/assert_equal_1/EqualAtransform/transform/scale_to_0_1/min_and_max/assert_equal_1/Const*
_output_shapes
: 
“
Htransform/transform/scale_to_0_1/min_and_max/assert_equal_1/Assert/ConstConst*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:
²
Jtransform/transform/scale_to_0_1/min_and_max/assert_equal_1/Assert/Const_1Const*
_output_shapes
: *
dtype0*8
value/B- B'x (scale_to_0_1/min_and_max/Shape:0) = 
“
Jtransform/transform/scale_to_0_1/min_and_max/assert_equal_1/Assert/Const_2Const*
_output_shapes
: *
dtype0*:
value1B/ B)y (scale_to_0_1/min_and_max/Shape_1:0) = 
¼
Ptransform/transform/scale_to_0_1/min_and_max/assert_equal_1/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:
ø
Ptransform/transform/scale_to_0_1/min_and_max/assert_equal_1/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*8
value/B- B'x (scale_to_0_1/min_and_max/Shape:0) = 
ŗ
Ptransform/transform/scale_to_0_1/min_and_max/assert_equal_1/Assert/Assert/data_3Const*
_output_shapes
: *
dtype0*:
value1B/ B)y (scale_to_0_1/min_and_max/Shape_1:0) = 

Itransform/transform/scale_to_0_1/min_and_max/assert_equal_1/Assert/AssertAssert?transform/transform/scale_to_0_1/min_and_max/assert_equal_1/AllPtransform/transform/scale_to_0_1/min_and_max/assert_equal_1/Assert/Assert/data_0Ptransform/transform/scale_to_0_1/min_and_max/assert_equal_1/Assert/Assert/data_12transform/transform/scale_to_0_1/min_and_max/ShapePtransform/transform/scale_to_0_1/min_and_max/assert_equal_1/Assert/Assert/data_34transform/transform/scale_to_0_1/min_and_max/Shape_1*
T	
2
ā
5transform/transform/scale_to_0_1/min_and_max/IdentityIdentity2transform/transform/scale_to_0_1/min_and_max/Max_1J^transform/transform/scale_to_0_1/min_and_max/assert_equal_1/Assert/Assert*
T0*
_output_shapes
: 
ā
7transform/transform/scale_to_0_1/min_and_max/Identity_1Identity0transform/transform/scale_to_0_1/min_and_max/MaxJ^transform/transform/scale_to_0_1/min_and_max/assert_equal_1/Assert/Assert*
T0*
_output_shapes
: 
y
4transform/transform/scale_to_0_1/min_and_max/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *  Ą’

2transform/transform/scale_to_0_1/min_and_max/IsInfIsInf5transform/transform/scale_to_0_1/min_and_max/Identity*
T0*
_output_shapes
: 
Ē
0transform/transform/scale_to_0_1/min_and_max/addAddV25transform/transform/scale_to_0_1/min_and_max/Identity4transform/transform/scale_to_0_1/min_and_max/Const_2*
T0*
_output_shapes
: 
’
5transform/transform/scale_to_0_1/min_and_max/SelectV2SelectV22transform/transform/scale_to_0_1/min_and_max/IsInf0transform/transform/scale_to_0_1/min_and_max/add5transform/transform/scale_to_0_1/min_and_max/Identity*
T0*
_output_shapes
: 
y
4transform/transform/scale_to_0_1/min_and_max/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *  Ą’

4transform/transform/scale_to_0_1/min_and_max/IsInf_1IsInf7transform/transform/scale_to_0_1/min_and_max/Identity_1*
T0*
_output_shapes
: 
Ė
2transform/transform/scale_to_0_1/min_and_max/add_1AddV27transform/transform/scale_to_0_1/min_and_max/Identity_14transform/transform/scale_to_0_1/min_and_max/Const_3*
T0*
_output_shapes
: 

7transform/transform/scale_to_0_1/min_and_max/SelectV2_1SelectV24transform/transform/scale_to_0_1/min_and_max/IsInf_12transform/transform/scale_to_0_1/min_and_max/add_17transform/transform/scale_to_0_1/min_and_max/Identity_1*
T0*
_output_shapes
: 
y
8transform/transform/scale_to_0_1/min_and_max/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 
{
:transform/transform/scale_to_0_1/min_and_max/Placeholder_1Placeholder*
_output_shapes
: *
dtype0*
shape: 
y
4transform/transform/scale_to_0_1/min_and_max/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    
”
2transform/transform/scale_to_0_1/min_and_max/sub_1Sub4transform/transform/scale_to_0_1/min_and_max/sub_1/xtransform/Const*
T0*
_output_shapes
: 

&transform/transform/scale_to_0_1/ShapeShape*transform/transform/inputs/inputs/age_copy*
T0*
_output_shapes
:
¹
$transform/transform/scale_to_0_1/subSub*transform/transform/inputs/inputs/age_copy2transform/transform/scale_to_0_1/min_and_max/sub_1*
T0*#
_output_shapes
:’’’’’’’’’

%transform/transform/scale_to_0_1/LessLess2transform/transform/scale_to_0_1/min_and_max/sub_1transform/Const_1*
T0*
_output_shapes
: 

+transform/transform/scale_to_0_1/zeros_like	ZerosLike$transform/transform/scale_to_0_1/sub*
T0*#
_output_shapes
:’’’’’’’’’

%transform/transform/scale_to_0_1/CastCast%transform/transform/scale_to_0_1/Less*

DstT0*

SrcT0
*
_output_shapes
: 
Æ
$transform/transform/scale_to_0_1/addAddV2+transform/transform/scale_to_0_1/zeros_like%transform/transform/scale_to_0_1/Cast*
T0*#
_output_shapes
:’’’’’’’’’

'transform/transform/scale_to_0_1/Cast_1Cast$transform/transform/scale_to_0_1/add*

DstT0
*

SrcT0*#
_output_shapes
:’’’’’’’’’

&transform/transform/scale_to_0_1/sub_1Subtransform/Const_12transform/transform/scale_to_0_1/min_and_max/sub_1*
T0*
_output_shapes
: 
Æ
(transform/transform/scale_to_0_1/truedivRealDiv$transform/transform/scale_to_0_1/sub&transform/transform/scale_to_0_1/sub_1*
T0*#
_output_shapes
:’’’’’’’’’
p
+transform/transform/scale_to_0_1/Fill/valueConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
°
%transform/transform/scale_to_0_1/FillFill&transform/transform/scale_to_0_1/Shape+transform/transform/scale_to_0_1/Fill/value*
T0*#
_output_shapes
:’’’’’’’’’
Ż
)transform/transform/scale_to_0_1/SelectV2SelectV2'transform/transform/scale_to_0_1/Cast_1(transform/transform/scale_to_0_1/truediv%transform/transform/scale_to_0_1/Fill*
T0*#
_output_shapes
:’’’’’’’’’
k
&transform/transform/scale_to_0_1/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
¬
$transform/transform/scale_to_0_1/mulMul)transform/transform/scale_to_0_1/SelectV2&transform/transform/scale_to_0_1/mul/y*
T0*#
_output_shapes
:’’’’’’’’’
m
(transform/transform/scale_to_0_1/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
­
&transform/transform/scale_to_0_1/add_1AddV2$transform/transform/scale_to_0_1/mul(transform/transform/scale_to_0_1/add_1/y*
T0*#
_output_shapes
:’’’’’’’’’
~
4transform/transform/scale_to_0_1_1/min_and_max/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
Ē
2transform/transform/scale_to_0_1_1/min_and_max/MaxMax5transform/transform/inputs/inputs/F_capital-gain_copy4transform/transform/scale_to_0_1_1/min_and_max/Const*
T0*
_output_shapes
: 
«
9transform/transform/scale_to_0_1_1/min_and_max/zeros_like	ZerosLike5transform/transform/inputs/inputs/F_capital-gain_copy*
T0*#
_output_shapes
:’’’’’’’’’
Ł
2transform/transform/scale_to_0_1_1/min_and_max/subSub9transform/transform/scale_to_0_1_1/min_and_max/zeros_like5transform/transform/inputs/inputs/F_capital-gain_copy*
T0*#
_output_shapes
:’’’’’’’’’

6transform/transform/scale_to_0_1_1/min_and_max/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
Č
4transform/transform/scale_to_0_1_1/min_and_max/Max_1Max2transform/transform/scale_to_0_1_1/min_and_max/sub6transform/transform/scale_to_0_1_1/min_and_max/Const_1*
T0*
_output_shapes
: 
w
4transform/transform/scale_to_0_1_1/min_and_max/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
y
6transform/transform/scale_to_0_1_1/min_and_max/Shape_1Const*
_output_shapes
: *
dtype0*
valueB 
Ż
Ctransform/transform/scale_to_0_1_1/min_and_max/assert_equal_1/EqualEqual4transform/transform/scale_to_0_1_1/min_and_max/Shape6transform/transform/scale_to_0_1_1/min_and_max/Shape_1*
T0*
_output_shapes
: 

Ctransform/transform/scale_to_0_1_1/min_and_max/assert_equal_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
ź
Atransform/transform/scale_to_0_1_1/min_and_max/assert_equal_1/AllAllCtransform/transform/scale_to_0_1_1/min_and_max/assert_equal_1/EqualCtransform/transform/scale_to_0_1_1/min_and_max/assert_equal_1/Const*
_output_shapes
: 
¶
Jtransform/transform/scale_to_0_1_1/min_and_max/assert_equal_1/Assert/ConstConst*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:
¶
Ltransform/transform/scale_to_0_1_1/min_and_max/assert_equal_1/Assert/Const_1Const*
_output_shapes
: *
dtype0*:
value1B/ B)x (scale_to_0_1_1/min_and_max/Shape:0) = 
ø
Ltransform/transform/scale_to_0_1_1/min_and_max/assert_equal_1/Assert/Const_2Const*
_output_shapes
: *
dtype0*<
value3B1 B+y (scale_to_0_1_1/min_and_max/Shape_1:0) = 
¾
Rtransform/transform/scale_to_0_1_1/min_and_max/assert_equal_1/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:
¼
Rtransform/transform/scale_to_0_1_1/min_and_max/assert_equal_1/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*:
value1B/ B)x (scale_to_0_1_1/min_and_max/Shape:0) = 
¾
Rtransform/transform/scale_to_0_1_1/min_and_max/assert_equal_1/Assert/Assert/data_3Const*
_output_shapes
: *
dtype0*<
value3B1 B+y (scale_to_0_1_1/min_and_max/Shape_1:0) = 

Ktransform/transform/scale_to_0_1_1/min_and_max/assert_equal_1/Assert/AssertAssertAtransform/transform/scale_to_0_1_1/min_and_max/assert_equal_1/AllRtransform/transform/scale_to_0_1_1/min_and_max/assert_equal_1/Assert/Assert/data_0Rtransform/transform/scale_to_0_1_1/min_and_max/assert_equal_1/Assert/Assert/data_14transform/transform/scale_to_0_1_1/min_and_max/ShapeRtransform/transform/scale_to_0_1_1/min_and_max/assert_equal_1/Assert/Assert/data_36transform/transform/scale_to_0_1_1/min_and_max/Shape_1*
T	
2
č
7transform/transform/scale_to_0_1_1/min_and_max/IdentityIdentity4transform/transform/scale_to_0_1_1/min_and_max/Max_1L^transform/transform/scale_to_0_1_1/min_and_max/assert_equal_1/Assert/Assert*
T0*
_output_shapes
: 
č
9transform/transform/scale_to_0_1_1/min_and_max/Identity_1Identity2transform/transform/scale_to_0_1_1/min_and_max/MaxL^transform/transform/scale_to_0_1_1/min_and_max/assert_equal_1/Assert/Assert*
T0*
_output_shapes
: 
{
6transform/transform/scale_to_0_1_1/min_and_max/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *  Ą’

4transform/transform/scale_to_0_1_1/min_and_max/IsInfIsInf7transform/transform/scale_to_0_1_1/min_and_max/Identity*
T0*
_output_shapes
: 
Ķ
2transform/transform/scale_to_0_1_1/min_and_max/addAddV27transform/transform/scale_to_0_1_1/min_and_max/Identity6transform/transform/scale_to_0_1_1/min_and_max/Const_2*
T0*
_output_shapes
: 

7transform/transform/scale_to_0_1_1/min_and_max/SelectV2SelectV24transform/transform/scale_to_0_1_1/min_and_max/IsInf2transform/transform/scale_to_0_1_1/min_and_max/add7transform/transform/scale_to_0_1_1/min_and_max/Identity*
T0*
_output_shapes
: 
{
6transform/transform/scale_to_0_1_1/min_and_max/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *  Ą’

6transform/transform/scale_to_0_1_1/min_and_max/IsInf_1IsInf9transform/transform/scale_to_0_1_1/min_and_max/Identity_1*
T0*
_output_shapes
: 
Ń
4transform/transform/scale_to_0_1_1/min_and_max/add_1AddV29transform/transform/scale_to_0_1_1/min_and_max/Identity_16transform/transform/scale_to_0_1_1/min_and_max/Const_3*
T0*
_output_shapes
: 

9transform/transform/scale_to_0_1_1/min_and_max/SelectV2_1SelectV26transform/transform/scale_to_0_1_1/min_and_max/IsInf_14transform/transform/scale_to_0_1_1/min_and_max/add_19transform/transform/scale_to_0_1_1/min_and_max/Identity_1*
T0*
_output_shapes
: 
{
:transform/transform/scale_to_0_1_1/min_and_max/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 
}
<transform/transform/scale_to_0_1_1/min_and_max/Placeholder_1Placeholder*
_output_shapes
: *
dtype0*
shape: 
{
6transform/transform/scale_to_0_1_1/min_and_max/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    
§
4transform/transform/scale_to_0_1_1/min_and_max/sub_1Sub6transform/transform/scale_to_0_1_1/min_and_max/sub_1/xtransform/Const_2*
T0*
_output_shapes
: 

(transform/transform/scale_to_0_1_1/ShapeShape5transform/transform/inputs/inputs/F_capital-gain_copy*
T0*
_output_shapes
:
Č
&transform/transform/scale_to_0_1_1/subSub5transform/transform/inputs/inputs/F_capital-gain_copy4transform/transform/scale_to_0_1_1/min_and_max/sub_1*
T0*#
_output_shapes
:’’’’’’’’’

'transform/transform/scale_to_0_1_1/LessLess4transform/transform/scale_to_0_1_1/min_and_max/sub_1transform/Const_3*
T0*
_output_shapes
: 

-transform/transform/scale_to_0_1_1/zeros_like	ZerosLike&transform/transform/scale_to_0_1_1/sub*
T0*#
_output_shapes
:’’’’’’’’’

'transform/transform/scale_to_0_1_1/CastCast'transform/transform/scale_to_0_1_1/Less*

DstT0*

SrcT0
*
_output_shapes
: 
µ
&transform/transform/scale_to_0_1_1/addAddV2-transform/transform/scale_to_0_1_1/zeros_like'transform/transform/scale_to_0_1_1/Cast*
T0*#
_output_shapes
:’’’’’’’’’

)transform/transform/scale_to_0_1_1/Cast_1Cast&transform/transform/scale_to_0_1_1/add*

DstT0
*

SrcT0*#
_output_shapes
:’’’’’’’’’

(transform/transform/scale_to_0_1_1/sub_1Subtransform/Const_34transform/transform/scale_to_0_1_1/min_and_max/sub_1*
T0*
_output_shapes
: 
µ
*transform/transform/scale_to_0_1_1/truedivRealDiv&transform/transform/scale_to_0_1_1/sub(transform/transform/scale_to_0_1_1/sub_1*
T0*#
_output_shapes
:’’’’’’’’’
r
-transform/transform/scale_to_0_1_1/Fill/valueConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
¶
'transform/transform/scale_to_0_1_1/FillFill(transform/transform/scale_to_0_1_1/Shape-transform/transform/scale_to_0_1_1/Fill/value*
T0*#
_output_shapes
:’’’’’’’’’
å
+transform/transform/scale_to_0_1_1/SelectV2SelectV2)transform/transform/scale_to_0_1_1/Cast_1*transform/transform/scale_to_0_1_1/truediv'transform/transform/scale_to_0_1_1/Fill*
T0*#
_output_shapes
:’’’’’’’’’
m
(transform/transform/scale_to_0_1_1/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
²
&transform/transform/scale_to_0_1_1/mulMul+transform/transform/scale_to_0_1_1/SelectV2(transform/transform/scale_to_0_1_1/mul/y*
T0*#
_output_shapes
:’’’’’’’’’
o
*transform/transform/scale_to_0_1_1/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
³
(transform/transform/scale_to_0_1_1/add_1AddV2&transform/transform/scale_to_0_1_1/mul*transform/transform/scale_to_0_1_1/add_1/y*
T0*#
_output_shapes
:’’’’’’’’’
~
4transform/transform/scale_to_0_1_2/min_and_max/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
Ē
2transform/transform/scale_to_0_1_2/min_and_max/MaxMax5transform/transform/inputs/inputs/F_capital-loss_copy4transform/transform/scale_to_0_1_2/min_and_max/Const*
T0*
_output_shapes
: 
«
9transform/transform/scale_to_0_1_2/min_and_max/zeros_like	ZerosLike5transform/transform/inputs/inputs/F_capital-loss_copy*
T0*#
_output_shapes
:’’’’’’’’’
Ł
2transform/transform/scale_to_0_1_2/min_and_max/subSub9transform/transform/scale_to_0_1_2/min_and_max/zeros_like5transform/transform/inputs/inputs/F_capital-loss_copy*
T0*#
_output_shapes
:’’’’’’’’’

6transform/transform/scale_to_0_1_2/min_and_max/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
Č
4transform/transform/scale_to_0_1_2/min_and_max/Max_1Max2transform/transform/scale_to_0_1_2/min_and_max/sub6transform/transform/scale_to_0_1_2/min_and_max/Const_1*
T0*
_output_shapes
: 
w
4transform/transform/scale_to_0_1_2/min_and_max/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
y
6transform/transform/scale_to_0_1_2/min_and_max/Shape_1Const*
_output_shapes
: *
dtype0*
valueB 
Ż
Ctransform/transform/scale_to_0_1_2/min_and_max/assert_equal_1/EqualEqual4transform/transform/scale_to_0_1_2/min_and_max/Shape6transform/transform/scale_to_0_1_2/min_and_max/Shape_1*
T0*
_output_shapes
: 

Ctransform/transform/scale_to_0_1_2/min_and_max/assert_equal_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
ź
Atransform/transform/scale_to_0_1_2/min_and_max/assert_equal_1/AllAllCtransform/transform/scale_to_0_1_2/min_and_max/assert_equal_1/EqualCtransform/transform/scale_to_0_1_2/min_and_max/assert_equal_1/Const*
_output_shapes
: 
¶
Jtransform/transform/scale_to_0_1_2/min_and_max/assert_equal_1/Assert/ConstConst*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:
¶
Ltransform/transform/scale_to_0_1_2/min_and_max/assert_equal_1/Assert/Const_1Const*
_output_shapes
: *
dtype0*:
value1B/ B)x (scale_to_0_1_2/min_and_max/Shape:0) = 
ø
Ltransform/transform/scale_to_0_1_2/min_and_max/assert_equal_1/Assert/Const_2Const*
_output_shapes
: *
dtype0*<
value3B1 B+y (scale_to_0_1_2/min_and_max/Shape_1:0) = 
¾
Rtransform/transform/scale_to_0_1_2/min_and_max/assert_equal_1/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:
¼
Rtransform/transform/scale_to_0_1_2/min_and_max/assert_equal_1/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*:
value1B/ B)x (scale_to_0_1_2/min_and_max/Shape:0) = 
¾
Rtransform/transform/scale_to_0_1_2/min_and_max/assert_equal_1/Assert/Assert/data_3Const*
_output_shapes
: *
dtype0*<
value3B1 B+y (scale_to_0_1_2/min_and_max/Shape_1:0) = 

Ktransform/transform/scale_to_0_1_2/min_and_max/assert_equal_1/Assert/AssertAssertAtransform/transform/scale_to_0_1_2/min_and_max/assert_equal_1/AllRtransform/transform/scale_to_0_1_2/min_and_max/assert_equal_1/Assert/Assert/data_0Rtransform/transform/scale_to_0_1_2/min_and_max/assert_equal_1/Assert/Assert/data_14transform/transform/scale_to_0_1_2/min_and_max/ShapeRtransform/transform/scale_to_0_1_2/min_and_max/assert_equal_1/Assert/Assert/data_36transform/transform/scale_to_0_1_2/min_and_max/Shape_1*
T	
2
č
7transform/transform/scale_to_0_1_2/min_and_max/IdentityIdentity4transform/transform/scale_to_0_1_2/min_and_max/Max_1L^transform/transform/scale_to_0_1_2/min_and_max/assert_equal_1/Assert/Assert*
T0*
_output_shapes
: 
č
9transform/transform/scale_to_0_1_2/min_and_max/Identity_1Identity2transform/transform/scale_to_0_1_2/min_and_max/MaxL^transform/transform/scale_to_0_1_2/min_and_max/assert_equal_1/Assert/Assert*
T0*
_output_shapes
: 
{
6transform/transform/scale_to_0_1_2/min_and_max/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *  Ą’

4transform/transform/scale_to_0_1_2/min_and_max/IsInfIsInf7transform/transform/scale_to_0_1_2/min_and_max/Identity*
T0*
_output_shapes
: 
Ķ
2transform/transform/scale_to_0_1_2/min_and_max/addAddV27transform/transform/scale_to_0_1_2/min_and_max/Identity6transform/transform/scale_to_0_1_2/min_and_max/Const_2*
T0*
_output_shapes
: 

7transform/transform/scale_to_0_1_2/min_and_max/SelectV2SelectV24transform/transform/scale_to_0_1_2/min_and_max/IsInf2transform/transform/scale_to_0_1_2/min_and_max/add7transform/transform/scale_to_0_1_2/min_and_max/Identity*
T0*
_output_shapes
: 
{
6transform/transform/scale_to_0_1_2/min_and_max/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *  Ą’

6transform/transform/scale_to_0_1_2/min_and_max/IsInf_1IsInf9transform/transform/scale_to_0_1_2/min_and_max/Identity_1*
T0*
_output_shapes
: 
Ń
4transform/transform/scale_to_0_1_2/min_and_max/add_1AddV29transform/transform/scale_to_0_1_2/min_and_max/Identity_16transform/transform/scale_to_0_1_2/min_and_max/Const_3*
T0*
_output_shapes
: 

9transform/transform/scale_to_0_1_2/min_and_max/SelectV2_1SelectV26transform/transform/scale_to_0_1_2/min_and_max/IsInf_14transform/transform/scale_to_0_1_2/min_and_max/add_19transform/transform/scale_to_0_1_2/min_and_max/Identity_1*
T0*
_output_shapes
: 
{
:transform/transform/scale_to_0_1_2/min_and_max/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 
}
<transform/transform/scale_to_0_1_2/min_and_max/Placeholder_1Placeholder*
_output_shapes
: *
dtype0*
shape: 
{
6transform/transform/scale_to_0_1_2/min_and_max/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    
§
4transform/transform/scale_to_0_1_2/min_and_max/sub_1Sub6transform/transform/scale_to_0_1_2/min_and_max/sub_1/xtransform/Const_4*
T0*
_output_shapes
: 

(transform/transform/scale_to_0_1_2/ShapeShape5transform/transform/inputs/inputs/F_capital-loss_copy*
T0*
_output_shapes
:
Č
&transform/transform/scale_to_0_1_2/subSub5transform/transform/inputs/inputs/F_capital-loss_copy4transform/transform/scale_to_0_1_2/min_and_max/sub_1*
T0*#
_output_shapes
:’’’’’’’’’

'transform/transform/scale_to_0_1_2/LessLess4transform/transform/scale_to_0_1_2/min_and_max/sub_1transform/Const_5*
T0*
_output_shapes
: 

-transform/transform/scale_to_0_1_2/zeros_like	ZerosLike&transform/transform/scale_to_0_1_2/sub*
T0*#
_output_shapes
:’’’’’’’’’

'transform/transform/scale_to_0_1_2/CastCast'transform/transform/scale_to_0_1_2/Less*

DstT0*

SrcT0
*
_output_shapes
: 
µ
&transform/transform/scale_to_0_1_2/addAddV2-transform/transform/scale_to_0_1_2/zeros_like'transform/transform/scale_to_0_1_2/Cast*
T0*#
_output_shapes
:’’’’’’’’’

)transform/transform/scale_to_0_1_2/Cast_1Cast&transform/transform/scale_to_0_1_2/add*

DstT0
*

SrcT0*#
_output_shapes
:’’’’’’’’’

(transform/transform/scale_to_0_1_2/sub_1Subtransform/Const_54transform/transform/scale_to_0_1_2/min_and_max/sub_1*
T0*
_output_shapes
: 
µ
*transform/transform/scale_to_0_1_2/truedivRealDiv&transform/transform/scale_to_0_1_2/sub(transform/transform/scale_to_0_1_2/sub_1*
T0*#
_output_shapes
:’’’’’’’’’
r
-transform/transform/scale_to_0_1_2/Fill/valueConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
¶
'transform/transform/scale_to_0_1_2/FillFill(transform/transform/scale_to_0_1_2/Shape-transform/transform/scale_to_0_1_2/Fill/value*
T0*#
_output_shapes
:’’’’’’’’’
å
+transform/transform/scale_to_0_1_2/SelectV2SelectV2)transform/transform/scale_to_0_1_2/Cast_1*transform/transform/scale_to_0_1_2/truediv'transform/transform/scale_to_0_1_2/Fill*
T0*#
_output_shapes
:’’’’’’’’’
m
(transform/transform/scale_to_0_1_2/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
²
&transform/transform/scale_to_0_1_2/mulMul+transform/transform/scale_to_0_1_2/SelectV2(transform/transform/scale_to_0_1_2/mul/y*
T0*#
_output_shapes
:’’’’’’’’’
o
*transform/transform/scale_to_0_1_2/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
³
(transform/transform/scale_to_0_1_2/add_1AddV2&transform/transform/scale_to_0_1_2/mul*transform/transform/scale_to_0_1_2/add_1/y*
T0*#
_output_shapes
:’’’’’’’’’
~
4transform/transform/scale_to_0_1_3/min_and_max/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
É
2transform/transform/scale_to_0_1_3/min_and_max/MaxMax7transform/transform/inputs/inputs/F_hours-per-week_copy4transform/transform/scale_to_0_1_3/min_and_max/Const*
T0*
_output_shapes
: 
­
9transform/transform/scale_to_0_1_3/min_and_max/zeros_like	ZerosLike7transform/transform/inputs/inputs/F_hours-per-week_copy*
T0*#
_output_shapes
:’’’’’’’’’
Ū
2transform/transform/scale_to_0_1_3/min_and_max/subSub9transform/transform/scale_to_0_1_3/min_and_max/zeros_like7transform/transform/inputs/inputs/F_hours-per-week_copy*
T0*#
_output_shapes
:’’’’’’’’’

6transform/transform/scale_to_0_1_3/min_and_max/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
Č
4transform/transform/scale_to_0_1_3/min_and_max/Max_1Max2transform/transform/scale_to_0_1_3/min_and_max/sub6transform/transform/scale_to_0_1_3/min_and_max/Const_1*
T0*
_output_shapes
: 
w
4transform/transform/scale_to_0_1_3/min_and_max/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
y
6transform/transform/scale_to_0_1_3/min_and_max/Shape_1Const*
_output_shapes
: *
dtype0*
valueB 
Ż
Ctransform/transform/scale_to_0_1_3/min_and_max/assert_equal_1/EqualEqual4transform/transform/scale_to_0_1_3/min_and_max/Shape6transform/transform/scale_to_0_1_3/min_and_max/Shape_1*
T0*
_output_shapes
: 

Ctransform/transform/scale_to_0_1_3/min_and_max/assert_equal_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
ź
Atransform/transform/scale_to_0_1_3/min_and_max/assert_equal_1/AllAllCtransform/transform/scale_to_0_1_3/min_and_max/assert_equal_1/EqualCtransform/transform/scale_to_0_1_3/min_and_max/assert_equal_1/Const*
_output_shapes
: 
¶
Jtransform/transform/scale_to_0_1_3/min_and_max/assert_equal_1/Assert/ConstConst*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:
¶
Ltransform/transform/scale_to_0_1_3/min_and_max/assert_equal_1/Assert/Const_1Const*
_output_shapes
: *
dtype0*:
value1B/ B)x (scale_to_0_1_3/min_and_max/Shape:0) = 
ø
Ltransform/transform/scale_to_0_1_3/min_and_max/assert_equal_1/Assert/Const_2Const*
_output_shapes
: *
dtype0*<
value3B1 B+y (scale_to_0_1_3/min_and_max/Shape_1:0) = 
¾
Rtransform/transform/scale_to_0_1_3/min_and_max/assert_equal_1/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:
¼
Rtransform/transform/scale_to_0_1_3/min_and_max/assert_equal_1/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*:
value1B/ B)x (scale_to_0_1_3/min_and_max/Shape:0) = 
¾
Rtransform/transform/scale_to_0_1_3/min_and_max/assert_equal_1/Assert/Assert/data_3Const*
_output_shapes
: *
dtype0*<
value3B1 B+y (scale_to_0_1_3/min_and_max/Shape_1:0) = 

Ktransform/transform/scale_to_0_1_3/min_and_max/assert_equal_1/Assert/AssertAssertAtransform/transform/scale_to_0_1_3/min_and_max/assert_equal_1/AllRtransform/transform/scale_to_0_1_3/min_and_max/assert_equal_1/Assert/Assert/data_0Rtransform/transform/scale_to_0_1_3/min_and_max/assert_equal_1/Assert/Assert/data_14transform/transform/scale_to_0_1_3/min_and_max/ShapeRtransform/transform/scale_to_0_1_3/min_and_max/assert_equal_1/Assert/Assert/data_36transform/transform/scale_to_0_1_3/min_and_max/Shape_1*
T	
2
č
7transform/transform/scale_to_0_1_3/min_and_max/IdentityIdentity4transform/transform/scale_to_0_1_3/min_and_max/Max_1L^transform/transform/scale_to_0_1_3/min_and_max/assert_equal_1/Assert/Assert*
T0*
_output_shapes
: 
č
9transform/transform/scale_to_0_1_3/min_and_max/Identity_1Identity2transform/transform/scale_to_0_1_3/min_and_max/MaxL^transform/transform/scale_to_0_1_3/min_and_max/assert_equal_1/Assert/Assert*
T0*
_output_shapes
: 
{
6transform/transform/scale_to_0_1_3/min_and_max/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *  Ą’

4transform/transform/scale_to_0_1_3/min_and_max/IsInfIsInf7transform/transform/scale_to_0_1_3/min_and_max/Identity*
T0*
_output_shapes
: 
Ķ
2transform/transform/scale_to_0_1_3/min_and_max/addAddV27transform/transform/scale_to_0_1_3/min_and_max/Identity6transform/transform/scale_to_0_1_3/min_and_max/Const_2*
T0*
_output_shapes
: 

7transform/transform/scale_to_0_1_3/min_and_max/SelectV2SelectV24transform/transform/scale_to_0_1_3/min_and_max/IsInf2transform/transform/scale_to_0_1_3/min_and_max/add7transform/transform/scale_to_0_1_3/min_and_max/Identity*
T0*
_output_shapes
: 
{
6transform/transform/scale_to_0_1_3/min_and_max/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *  Ą’

6transform/transform/scale_to_0_1_3/min_and_max/IsInf_1IsInf9transform/transform/scale_to_0_1_3/min_and_max/Identity_1*
T0*
_output_shapes
: 
Ń
4transform/transform/scale_to_0_1_3/min_and_max/add_1AddV29transform/transform/scale_to_0_1_3/min_and_max/Identity_16transform/transform/scale_to_0_1_3/min_and_max/Const_3*
T0*
_output_shapes
: 

9transform/transform/scale_to_0_1_3/min_and_max/SelectV2_1SelectV26transform/transform/scale_to_0_1_3/min_and_max/IsInf_14transform/transform/scale_to_0_1_3/min_and_max/add_19transform/transform/scale_to_0_1_3/min_and_max/Identity_1*
T0*
_output_shapes
: 
{
:transform/transform/scale_to_0_1_3/min_and_max/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 
}
<transform/transform/scale_to_0_1_3/min_and_max/Placeholder_1Placeholder*
_output_shapes
: *
dtype0*
shape: 
{
6transform/transform/scale_to_0_1_3/min_and_max/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    
§
4transform/transform/scale_to_0_1_3/min_and_max/sub_1Sub6transform/transform/scale_to_0_1_3/min_and_max/sub_1/xtransform/Const_6*
T0*
_output_shapes
: 

(transform/transform/scale_to_0_1_3/ShapeShape7transform/transform/inputs/inputs/F_hours-per-week_copy*
T0*
_output_shapes
:
Ź
&transform/transform/scale_to_0_1_3/subSub7transform/transform/inputs/inputs/F_hours-per-week_copy4transform/transform/scale_to_0_1_3/min_and_max/sub_1*
T0*#
_output_shapes
:’’’’’’’’’

'transform/transform/scale_to_0_1_3/LessLess4transform/transform/scale_to_0_1_3/min_and_max/sub_1transform/Const_7*
T0*
_output_shapes
: 

-transform/transform/scale_to_0_1_3/zeros_like	ZerosLike&transform/transform/scale_to_0_1_3/sub*
T0*#
_output_shapes
:’’’’’’’’’

'transform/transform/scale_to_0_1_3/CastCast'transform/transform/scale_to_0_1_3/Less*

DstT0*

SrcT0
*
_output_shapes
: 
µ
&transform/transform/scale_to_0_1_3/addAddV2-transform/transform/scale_to_0_1_3/zeros_like'transform/transform/scale_to_0_1_3/Cast*
T0*#
_output_shapes
:’’’’’’’’’

)transform/transform/scale_to_0_1_3/Cast_1Cast&transform/transform/scale_to_0_1_3/add*

DstT0
*

SrcT0*#
_output_shapes
:’’’’’’’’’

(transform/transform/scale_to_0_1_3/sub_1Subtransform/Const_74transform/transform/scale_to_0_1_3/min_and_max/sub_1*
T0*
_output_shapes
: 
µ
*transform/transform/scale_to_0_1_3/truedivRealDiv&transform/transform/scale_to_0_1_3/sub(transform/transform/scale_to_0_1_3/sub_1*
T0*#
_output_shapes
:’’’’’’’’’
r
-transform/transform/scale_to_0_1_3/Fill/valueConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
¶
'transform/transform/scale_to_0_1_3/FillFill(transform/transform/scale_to_0_1_3/Shape-transform/transform/scale_to_0_1_3/Fill/value*
T0*#
_output_shapes
:’’’’’’’’’
å
+transform/transform/scale_to_0_1_3/SelectV2SelectV2)transform/transform/scale_to_0_1_3/Cast_1*transform/transform/scale_to_0_1_3/truediv'transform/transform/scale_to_0_1_3/Fill*
T0*#
_output_shapes
:’’’’’’’’’
m
(transform/transform/scale_to_0_1_3/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
²
&transform/transform/scale_to_0_1_3/mulMul+transform/transform/scale_to_0_1_3/SelectV2(transform/transform/scale_to_0_1_3/mul/y*
T0*#
_output_shapes
:’’’’’’’’’
o
*transform/transform/scale_to_0_1_3/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
³
(transform/transform/scale_to_0_1_3/add_1AddV2&transform/transform/scale_to_0_1_3/mul*transform/transform/scale_to_0_1_3/add_1/y*
T0*#
_output_shapes
:’’’’’’’’’
q
'transform/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
s
)transform/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
s
)transform/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
“
!transform/transform/strided_sliceStridedSlice<transform/transform/inputs/inputs/F_education-num/shape_copy'transform/transform/strided_slice/stack)transform/transform/strided_slice/stack_1)transform/transform/strided_slice/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
p
.transform/transform/SparseTensor/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
µ
,transform/transform/SparseTensor/dense_shapePack!transform/transform/strided_slice.transform/transform/SparseTensor/dense_shape/1*
N*
T0	*
_output_shapes
:
t
/transform/transform/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
Ņ
!transform/transform/SparseToDenseSparseToDense>transform/transform/inputs/inputs/F_education-num/indices_copy,transform/transform/SparseTensor/dense_shape=transform/transform/inputs/inputs/F_education-num/values_copy/transform/transform/SparseToDense/default_value*
T0*
Tindices0	*'
_output_shapes
:’’’’’’’’’

transform/transform/SqueezeSqueeze!transform/transform/SparseToDense*
T0*#
_output_shapes
:’’’’’’’’’*
squeeze_dims

~
4transform/transform/scale_to_0_1_4/min_and_max/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
­
2transform/transform/scale_to_0_1_4/min_and_max/MaxMaxtransform/transform/Squeeze4transform/transform/scale_to_0_1_4/min_and_max/Const*
T0*
_output_shapes
: 

9transform/transform/scale_to_0_1_4/min_and_max/zeros_like	ZerosLiketransform/transform/Squeeze*
T0*#
_output_shapes
:’’’’’’’’’
æ
2transform/transform/scale_to_0_1_4/min_and_max/subSub9transform/transform/scale_to_0_1_4/min_and_max/zeros_liketransform/transform/Squeeze*
T0*#
_output_shapes
:’’’’’’’’’

6transform/transform/scale_to_0_1_4/min_and_max/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
Č
4transform/transform/scale_to_0_1_4/min_and_max/Max_1Max2transform/transform/scale_to_0_1_4/min_and_max/sub6transform/transform/scale_to_0_1_4/min_and_max/Const_1*
T0*
_output_shapes
: 
w
4transform/transform/scale_to_0_1_4/min_and_max/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
y
6transform/transform/scale_to_0_1_4/min_and_max/Shape_1Const*
_output_shapes
: *
dtype0*
valueB 
Ż
Ctransform/transform/scale_to_0_1_4/min_and_max/assert_equal_1/EqualEqual4transform/transform/scale_to_0_1_4/min_and_max/Shape6transform/transform/scale_to_0_1_4/min_and_max/Shape_1*
T0*
_output_shapes
: 

Ctransform/transform/scale_to_0_1_4/min_and_max/assert_equal_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
ź
Atransform/transform/scale_to_0_1_4/min_and_max/assert_equal_1/AllAllCtransform/transform/scale_to_0_1_4/min_and_max/assert_equal_1/EqualCtransform/transform/scale_to_0_1_4/min_and_max/assert_equal_1/Const*
_output_shapes
: 
¶
Jtransform/transform/scale_to_0_1_4/min_and_max/assert_equal_1/Assert/ConstConst*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:
¶
Ltransform/transform/scale_to_0_1_4/min_and_max/assert_equal_1/Assert/Const_1Const*
_output_shapes
: *
dtype0*:
value1B/ B)x (scale_to_0_1_4/min_and_max/Shape:0) = 
ø
Ltransform/transform/scale_to_0_1_4/min_and_max/assert_equal_1/Assert/Const_2Const*
_output_shapes
: *
dtype0*<
value3B1 B+y (scale_to_0_1_4/min_and_max/Shape_1:0) = 
¾
Rtransform/transform/scale_to_0_1_4/min_and_max/assert_equal_1/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:
¼
Rtransform/transform/scale_to_0_1_4/min_and_max/assert_equal_1/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*:
value1B/ B)x (scale_to_0_1_4/min_and_max/Shape:0) = 
¾
Rtransform/transform/scale_to_0_1_4/min_and_max/assert_equal_1/Assert/Assert/data_3Const*
_output_shapes
: *
dtype0*<
value3B1 B+y (scale_to_0_1_4/min_and_max/Shape_1:0) = 

Ktransform/transform/scale_to_0_1_4/min_and_max/assert_equal_1/Assert/AssertAssertAtransform/transform/scale_to_0_1_4/min_and_max/assert_equal_1/AllRtransform/transform/scale_to_0_1_4/min_and_max/assert_equal_1/Assert/Assert/data_0Rtransform/transform/scale_to_0_1_4/min_and_max/assert_equal_1/Assert/Assert/data_14transform/transform/scale_to_0_1_4/min_and_max/ShapeRtransform/transform/scale_to_0_1_4/min_and_max/assert_equal_1/Assert/Assert/data_36transform/transform/scale_to_0_1_4/min_and_max/Shape_1*
T	
2
č
7transform/transform/scale_to_0_1_4/min_and_max/IdentityIdentity4transform/transform/scale_to_0_1_4/min_and_max/Max_1L^transform/transform/scale_to_0_1_4/min_and_max/assert_equal_1/Assert/Assert*
T0*
_output_shapes
: 
č
9transform/transform/scale_to_0_1_4/min_and_max/Identity_1Identity2transform/transform/scale_to_0_1_4/min_and_max/MaxL^transform/transform/scale_to_0_1_4/min_and_max/assert_equal_1/Assert/Assert*
T0*
_output_shapes
: 
{
6transform/transform/scale_to_0_1_4/min_and_max/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *  Ą’

4transform/transform/scale_to_0_1_4/min_and_max/IsInfIsInf7transform/transform/scale_to_0_1_4/min_and_max/Identity*
T0*
_output_shapes
: 
Ķ
2transform/transform/scale_to_0_1_4/min_and_max/addAddV27transform/transform/scale_to_0_1_4/min_and_max/Identity6transform/transform/scale_to_0_1_4/min_and_max/Const_2*
T0*
_output_shapes
: 

7transform/transform/scale_to_0_1_4/min_and_max/SelectV2SelectV24transform/transform/scale_to_0_1_4/min_and_max/IsInf2transform/transform/scale_to_0_1_4/min_and_max/add7transform/transform/scale_to_0_1_4/min_and_max/Identity*
T0*
_output_shapes
: 
{
6transform/transform/scale_to_0_1_4/min_and_max/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *  Ą’

6transform/transform/scale_to_0_1_4/min_and_max/IsInf_1IsInf9transform/transform/scale_to_0_1_4/min_and_max/Identity_1*
T0*
_output_shapes
: 
Ń
4transform/transform/scale_to_0_1_4/min_and_max/add_1AddV29transform/transform/scale_to_0_1_4/min_and_max/Identity_16transform/transform/scale_to_0_1_4/min_and_max/Const_3*
T0*
_output_shapes
: 

9transform/transform/scale_to_0_1_4/min_and_max/SelectV2_1SelectV26transform/transform/scale_to_0_1_4/min_and_max/IsInf_14transform/transform/scale_to_0_1_4/min_and_max/add_19transform/transform/scale_to_0_1_4/min_and_max/Identity_1*
T0*
_output_shapes
: 
{
:transform/transform/scale_to_0_1_4/min_and_max/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 
}
<transform/transform/scale_to_0_1_4/min_and_max/Placeholder_1Placeholder*
_output_shapes
: *
dtype0*
shape: 
{
6transform/transform/scale_to_0_1_4/min_and_max/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    
§
4transform/transform/scale_to_0_1_4/min_and_max/sub_1Sub6transform/transform/scale_to_0_1_4/min_and_max/sub_1/xtransform/Const_8*
T0*
_output_shapes
: 
s
(transform/transform/scale_to_0_1_4/ShapeShapetransform/transform/Squeeze*
T0*
_output_shapes
:
®
&transform/transform/scale_to_0_1_4/subSubtransform/transform/Squeeze4transform/transform/scale_to_0_1_4/min_and_max/sub_1*
T0*#
_output_shapes
:’’’’’’’’’

'transform/transform/scale_to_0_1_4/LessLess4transform/transform/scale_to_0_1_4/min_and_max/sub_1transform/Const_9*
T0*
_output_shapes
: 

-transform/transform/scale_to_0_1_4/zeros_like	ZerosLike&transform/transform/scale_to_0_1_4/sub*
T0*#
_output_shapes
:’’’’’’’’’

'transform/transform/scale_to_0_1_4/CastCast'transform/transform/scale_to_0_1_4/Less*

DstT0*

SrcT0
*
_output_shapes
: 
µ
&transform/transform/scale_to_0_1_4/addAddV2-transform/transform/scale_to_0_1_4/zeros_like'transform/transform/scale_to_0_1_4/Cast*
T0*#
_output_shapes
:’’’’’’’’’

)transform/transform/scale_to_0_1_4/Cast_1Cast&transform/transform/scale_to_0_1_4/add*

DstT0
*

SrcT0*#
_output_shapes
:’’’’’’’’’

(transform/transform/scale_to_0_1_4/sub_1Subtransform/Const_94transform/transform/scale_to_0_1_4/min_and_max/sub_1*
T0*
_output_shapes
: 
µ
*transform/transform/scale_to_0_1_4/truedivRealDiv&transform/transform/scale_to_0_1_4/sub(transform/transform/scale_to_0_1_4/sub_1*
T0*#
_output_shapes
:’’’’’’’’’
r
-transform/transform/scale_to_0_1_4/Fill/valueConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
¶
'transform/transform/scale_to_0_1_4/FillFill(transform/transform/scale_to_0_1_4/Shape-transform/transform/scale_to_0_1_4/Fill/value*
T0*#
_output_shapes
:’’’’’’’’’
å
+transform/transform/scale_to_0_1_4/SelectV2SelectV2)transform/transform/scale_to_0_1_4/Cast_1*transform/transform/scale_to_0_1_4/truediv'transform/transform/scale_to_0_1_4/Fill*
T0*#
_output_shapes
:’’’’’’’’’
m
(transform/transform/scale_to_0_1_4/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
²
&transform/transform/scale_to_0_1_4/mulMul+transform/transform/scale_to_0_1_4/SelectV2(transform/transform/scale_to_0_1_4/mul/y*
T0*#
_output_shapes
:’’’’’’’’’
o
*transform/transform/scale_to_0_1_4/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
³
(transform/transform/scale_to_0_1_4/add_1AddV2&transform/transform/scale_to_0_1_4/mul*transform/transform/scale_to_0_1_4/add_1/y*
T0*#
_output_shapes
:’’’’’’’’’

,transform/transform/vocabulary/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’
æ
&transform/transform/vocabulary/ReshapeReshape0transform/transform/inputs/inputs/workclass_copy,transform/transform/vocabulary/Reshape/shape*
T0*#
_output_shapes
:’’’’’’’’’
}
<transform/transform/vocabulary/workclass_unpruned_vocab_sizePlaceholder*
_output_shapes
: *
dtype0	*
shape: 
k
*transform/transform/vocabulary/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 

.transform/transform/vocabulary_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’
Ć
(transform/transform/vocabulary_1/ReshapeReshape0transform/transform/inputs/inputs/education_copy.transform/transform/vocabulary_1/Reshape/shape*
T0*#
_output_shapes
:’’’’’’’’’

>transform/transform/vocabulary_1/education_unpruned_vocab_sizePlaceholder*
_output_shapes
: *
dtype0	*
shape: 
m
,transform/transform/vocabulary_1/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 

.transform/transform/vocabulary_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’
Ź
(transform/transform/vocabulary_2/ReshapeReshape7transform/transform/inputs/inputs/F_marital-status_copy.transform/transform/vocabulary_2/Reshape/shape*
T0*#
_output_shapes
:’’’’’’’’’

Ctransform/transform/vocabulary_2/marital-status_unpruned_vocab_sizePlaceholder*
_output_shapes
: *
dtype0	*
shape: 
m
,transform/transform/vocabulary_2/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 

.transform/transform/vocabulary_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’
Ä
(transform/transform/vocabulary_3/ReshapeReshape1transform/transform/inputs/inputs/occupation_copy.transform/transform/vocabulary_3/Reshape/shape*
T0*#
_output_shapes
:’’’’’’’’’

?transform/transform/vocabulary_3/occupation_unpruned_vocab_sizePlaceholder*
_output_shapes
: *
dtype0	*
shape: 
m
,transform/transform/vocabulary_3/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 

.transform/transform/vocabulary_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’
Ę
(transform/transform/vocabulary_4/ReshapeReshape3transform/transform/inputs/inputs/relationship_copy.transform/transform/vocabulary_4/Reshape/shape*
T0*#
_output_shapes
:’’’’’’’’’

Atransform/transform/vocabulary_4/relationship_unpruned_vocab_sizePlaceholder*
_output_shapes
: *
dtype0	*
shape: 
m
,transform/transform/vocabulary_4/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 

.transform/transform/vocabulary_5/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’
¾
(transform/transform/vocabulary_5/ReshapeReshape+transform/transform/inputs/inputs/race_copy.transform/transform/vocabulary_5/Reshape/shape*
T0*#
_output_shapes
:’’’’’’’’’
z
9transform/transform/vocabulary_5/race_unpruned_vocab_sizePlaceholder*
_output_shapes
: *
dtype0	*
shape: 
m
,transform/transform/vocabulary_5/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 

.transform/transform/vocabulary_6/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’
½
(transform/transform/vocabulary_6/ReshapeReshape*transform/transform/inputs/inputs/sex_copy.transform/transform/vocabulary_6/Reshape/shape*
T0*#
_output_shapes
:’’’’’’’’’
y
8transform/transform/vocabulary_6/sex_unpruned_vocab_sizePlaceholder*
_output_shapes
: *
dtype0	*
shape: 
m
,transform/transform/vocabulary_6/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 

.transform/transform/vocabulary_7/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’
Ź
(transform/transform/vocabulary_7/ReshapeReshape7transform/transform/inputs/inputs/F_native-country_copy.transform/transform/vocabulary_7/Reshape/shape*
T0*#
_output_shapes
:’’’’’’’’’

Ctransform/transform/vocabulary_7/native-country_unpruned_vocab_sizePlaceholder*
_output_shapes
: *
dtype0	*
shape: 
m
,transform/transform/vocabulary_7/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 
a
transform/transform/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
a
transform/transform/range/limitConst*
_output_shapes
: *
dtype0*
value	B :
a
transform/transform/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :
”
transform/transform/rangeRangetransform/transform/range/starttransform/transform/range/limittransform/transform/range/delta*
_output_shapes
:
o
transform/transform/CastCasttransform/transform/range*

DstT0	*

SrcT0*
_output_shapes
:
l
transform/transform/keysConst*
_output_shapes
:*
dtype0* 
valueBB>50KB<=50K
d
transform/transform/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
’’’’’’’’’
«
transform/transform/hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*@
shared_name1/hash_table_82fbd9af-646a-4ca7-8720-ceef06cc9857*
value_dtype0	
ø
6transform/transform/key_value_init/LookupTableImportV2LookupTableImportV2transform/transform/hash_tabletransform/transform/keystransform/transform/Cast*	
Tin0*

Tout0	
ń
7transform/transform/hash_table_Lookup/LookupTableFindV2LookupTableFindV2transform/transform/hash_table,transform/transform/inputs/inputs/label_copytransform/transform/Const*	
Tin0*

Tout0	*#
_output_shapes
:’’’’’’’’’
 
transform/transform/initNoOp
"
transform/transform/init_1NoOp

transform/initNoOp
Č
8linear/linear_model/age/weights/part_0/Initializer/zerosConst*9
_class/
-+loc:@linear/linear_model/age/weights/part_0*
_output_shapes

:*
dtype0*
valueB*    
ć
&linear/linear_model/age/weights/part_0VarHandleOp*9
_class/
-+loc:@linear/linear_model/age/weights/part_0*
_output_shapes
: *
dtype0*
shape
:*7
shared_name(&linear/linear_model/age/weights/part_0

Glinear/linear_model/age/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp&linear/linear_model/age/weights/part_0*
_output_shapes
: 
°
-linear/linear_model/age/weights/part_0/AssignAssignVariableOp&linear/linear_model/age/weights/part_08linear/linear_model/age/weights/part_0/Initializer/zeros*
dtype0
”
:linear/linear_model/age/weights/part_0/Read/ReadVariableOpReadVariableOp&linear/linear_model/age/weights/part_0*
_output_shapes

:*
dtype0
Ś
Alinear/linear_model/capital-gain/weights/part_0/Initializer/zerosConst*B
_class8
64loc:@linear/linear_model/capital-gain/weights/part_0*
_output_shapes

:*
dtype0*
valueB*    
ž
/linear/linear_model/capital-gain/weights/part_0VarHandleOp*B
_class8
64loc:@linear/linear_model/capital-gain/weights/part_0*
_output_shapes
: *
dtype0*
shape
:*@
shared_name1/linear/linear_model/capital-gain/weights/part_0
Æ
Plinear/linear_model/capital-gain/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp/linear/linear_model/capital-gain/weights/part_0*
_output_shapes
: 
Ė
6linear/linear_model/capital-gain/weights/part_0/AssignAssignVariableOp/linear/linear_model/capital-gain/weights/part_0Alinear/linear_model/capital-gain/weights/part_0/Initializer/zeros*
dtype0
³
Clinear/linear_model/capital-gain/weights/part_0/Read/ReadVariableOpReadVariableOp/linear/linear_model/capital-gain/weights/part_0*
_output_shapes

:*
dtype0
Ś
Alinear/linear_model/capital-loss/weights/part_0/Initializer/zerosConst*B
_class8
64loc:@linear/linear_model/capital-loss/weights/part_0*
_output_shapes

:*
dtype0*
valueB*    
ž
/linear/linear_model/capital-loss/weights/part_0VarHandleOp*B
_class8
64loc:@linear/linear_model/capital-loss/weights/part_0*
_output_shapes
: *
dtype0*
shape
:*@
shared_name1/linear/linear_model/capital-loss/weights/part_0
Æ
Plinear/linear_model/capital-loss/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp/linear/linear_model/capital-loss/weights/part_0*
_output_shapes
: 
Ė
6linear/linear_model/capital-loss/weights/part_0/AssignAssignVariableOp/linear/linear_model/capital-loss/weights/part_0Alinear/linear_model/capital-loss/weights/part_0/Initializer/zeros*
dtype0
³
Clinear/linear_model/capital-loss/weights/part_0/Read/ReadVariableOpReadVariableOp/linear/linear_model/capital-loss/weights/part_0*
_output_shapes

:*
dtype0
č
Hlinear/linear_model/education_indicator/weights/part_0/Initializer/zerosConst*I
_class?
=;loc:@linear/linear_model/education_indicator/weights/part_0*
_output_shapes

:*
dtype0*
valueB*    

6linear/linear_model/education_indicator/weights/part_0VarHandleOp*I
_class?
=;loc:@linear/linear_model/education_indicator/weights/part_0*
_output_shapes
: *
dtype0*
shape
:*G
shared_name86linear/linear_model/education_indicator/weights/part_0
½
Wlinear/linear_model/education_indicator/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp6linear/linear_model/education_indicator/weights/part_0*
_output_shapes
: 
ą
=linear/linear_model/education_indicator/weights/part_0/AssignAssignVariableOp6linear/linear_model/education_indicator/weights/part_0Hlinear/linear_model/education_indicator/weights/part_0/Initializer/zeros*
dtype0
Į
Jlinear/linear_model/education_indicator/weights/part_0/Read/ReadVariableOpReadVariableOp6linear/linear_model/education_indicator/weights/part_0*
_output_shapes

:*
dtype0
Ž
Clinear/linear_model/hours-per-week/weights/part_0/Initializer/zerosConst*D
_class:
86loc:@linear/linear_model/hours-per-week/weights/part_0*
_output_shapes

:*
dtype0*
valueB*    

1linear/linear_model/hours-per-week/weights/part_0VarHandleOp*D
_class:
86loc:@linear/linear_model/hours-per-week/weights/part_0*
_output_shapes
: *
dtype0*
shape
:*B
shared_name31linear/linear_model/hours-per-week/weights/part_0
³
Rlinear/linear_model/hours-per-week/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp1linear/linear_model/hours-per-week/weights/part_0*
_output_shapes
: 
Ń
8linear/linear_model/hours-per-week/weights/part_0/AssignAssignVariableOp1linear/linear_model/hours-per-week/weights/part_0Clinear/linear_model/hours-per-week/weights/part_0/Initializer/zeros*
dtype0
·
Elinear/linear_model/hours-per-week/weights/part_0/Read/ReadVariableOpReadVariableOp1linear/linear_model/hours-per-week/weights/part_0*
_output_shapes

:*
dtype0
ņ
Mlinear/linear_model/marital-status_indicator/weights/part_0/Initializer/zerosConst*N
_classD
B@loc:@linear/linear_model/marital-status_indicator/weights/part_0*
_output_shapes

:*
dtype0*
valueB*    
¢
;linear/linear_model/marital-status_indicator/weights/part_0VarHandleOp*N
_classD
B@loc:@linear/linear_model/marital-status_indicator/weights/part_0*
_output_shapes
: *
dtype0*
shape
:*L
shared_name=;linear/linear_model/marital-status_indicator/weights/part_0
Ē
\linear/linear_model/marital-status_indicator/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp;linear/linear_model/marital-status_indicator/weights/part_0*
_output_shapes
: 
ļ
Blinear/linear_model/marital-status_indicator/weights/part_0/AssignAssignVariableOp;linear/linear_model/marital-status_indicator/weights/part_0Mlinear/linear_model/marital-status_indicator/weights/part_0/Initializer/zeros*
dtype0
Ė
Olinear/linear_model/marital-status_indicator/weights/part_0/Read/ReadVariableOpReadVariableOp;linear/linear_model/marital-status_indicator/weights/part_0*
_output_shapes

:*
dtype0
ņ
Mlinear/linear_model/native-country_indicator/weights/part_0/Initializer/zerosConst*N
_classD
B@loc:@linear/linear_model/native-country_indicator/weights/part_0*
_output_shapes

:**
dtype0*
valueB**    
¢
;linear/linear_model/native-country_indicator/weights/part_0VarHandleOp*N
_classD
B@loc:@linear/linear_model/native-country_indicator/weights/part_0*
_output_shapes
: *
dtype0*
shape
:**L
shared_name=;linear/linear_model/native-country_indicator/weights/part_0
Ē
\linear/linear_model/native-country_indicator/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp;linear/linear_model/native-country_indicator/weights/part_0*
_output_shapes
: 
ļ
Blinear/linear_model/native-country_indicator/weights/part_0/AssignAssignVariableOp;linear/linear_model/native-country_indicator/weights/part_0Mlinear/linear_model/native-country_indicator/weights/part_0/Initializer/zeros*
dtype0
Ė
Olinear/linear_model/native-country_indicator/weights/part_0/Read/ReadVariableOpReadVariableOp;linear/linear_model/native-country_indicator/weights/part_0*
_output_shapes

:**
dtype0
ź
Ilinear/linear_model/occupation_indicator/weights/part_0/Initializer/zerosConst*J
_class@
><loc:@linear/linear_model/occupation_indicator/weights/part_0*
_output_shapes

:*
dtype0*
valueB*    

7linear/linear_model/occupation_indicator/weights/part_0VarHandleOp*J
_class@
><loc:@linear/linear_model/occupation_indicator/weights/part_0*
_output_shapes
: *
dtype0*
shape
:*H
shared_name97linear/linear_model/occupation_indicator/weights/part_0
æ
Xlinear/linear_model/occupation_indicator/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp7linear/linear_model/occupation_indicator/weights/part_0*
_output_shapes
: 
ć
>linear/linear_model/occupation_indicator/weights/part_0/AssignAssignVariableOp7linear/linear_model/occupation_indicator/weights/part_0Ilinear/linear_model/occupation_indicator/weights/part_0/Initializer/zeros*
dtype0
Ć
Klinear/linear_model/occupation_indicator/weights/part_0/Read/ReadVariableOpReadVariableOp7linear/linear_model/occupation_indicator/weights/part_0*
_output_shapes

:*
dtype0
Ž
Clinear/linear_model/race_indicator/weights/part_0/Initializer/zerosConst*D
_class:
86loc:@linear/linear_model/race_indicator/weights/part_0*
_output_shapes

:*
dtype0*
valueB*    

1linear/linear_model/race_indicator/weights/part_0VarHandleOp*D
_class:
86loc:@linear/linear_model/race_indicator/weights/part_0*
_output_shapes
: *
dtype0*
shape
:*B
shared_name31linear/linear_model/race_indicator/weights/part_0
³
Rlinear/linear_model/race_indicator/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp1linear/linear_model/race_indicator/weights/part_0*
_output_shapes
: 
Ń
8linear/linear_model/race_indicator/weights/part_0/AssignAssignVariableOp1linear/linear_model/race_indicator/weights/part_0Clinear/linear_model/race_indicator/weights/part_0/Initializer/zeros*
dtype0
·
Elinear/linear_model/race_indicator/weights/part_0/Read/ReadVariableOpReadVariableOp1linear/linear_model/race_indicator/weights/part_0*
_output_shapes

:*
dtype0
ī
Klinear/linear_model/relationship_indicator/weights/part_0/Initializer/zerosConst*L
_classB
@>loc:@linear/linear_model/relationship_indicator/weights/part_0*
_output_shapes

:*
dtype0*
valueB*    

9linear/linear_model/relationship_indicator/weights/part_0VarHandleOp*L
_classB
@>loc:@linear/linear_model/relationship_indicator/weights/part_0*
_output_shapes
: *
dtype0*
shape
:*J
shared_name;9linear/linear_model/relationship_indicator/weights/part_0
Ć
Zlinear/linear_model/relationship_indicator/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp9linear/linear_model/relationship_indicator/weights/part_0*
_output_shapes
: 
é
@linear/linear_model/relationship_indicator/weights/part_0/AssignAssignVariableOp9linear/linear_model/relationship_indicator/weights/part_0Klinear/linear_model/relationship_indicator/weights/part_0/Initializer/zeros*
dtype0
Ē
Mlinear/linear_model/relationship_indicator/weights/part_0/Read/ReadVariableOpReadVariableOp9linear/linear_model/relationship_indicator/weights/part_0*
_output_shapes

:*
dtype0
Ü
Blinear/linear_model/sex_indicator/weights/part_0/Initializer/zerosConst*C
_class9
75loc:@linear/linear_model/sex_indicator/weights/part_0*
_output_shapes

:*
dtype0*
valueB*    

0linear/linear_model/sex_indicator/weights/part_0VarHandleOp*C
_class9
75loc:@linear/linear_model/sex_indicator/weights/part_0*
_output_shapes
: *
dtype0*
shape
:*A
shared_name20linear/linear_model/sex_indicator/weights/part_0
±
Qlinear/linear_model/sex_indicator/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp0linear/linear_model/sex_indicator/weights/part_0*
_output_shapes
: 
Ī
7linear/linear_model/sex_indicator/weights/part_0/AssignAssignVariableOp0linear/linear_model/sex_indicator/weights/part_0Blinear/linear_model/sex_indicator/weights/part_0/Initializer/zeros*
dtype0
µ
Dlinear/linear_model/sex_indicator/weights/part_0/Read/ReadVariableOpReadVariableOp0linear/linear_model/sex_indicator/weights/part_0*
_output_shapes

:*
dtype0
č
Hlinear/linear_model/workclass_indicator/weights/part_0/Initializer/zerosConst*I
_class?
=;loc:@linear/linear_model/workclass_indicator/weights/part_0*
_output_shapes

:	*
dtype0*
valueB	*    

6linear/linear_model/workclass_indicator/weights/part_0VarHandleOp*I
_class?
=;loc:@linear/linear_model/workclass_indicator/weights/part_0*
_output_shapes
: *
dtype0*
shape
:	*G
shared_name86linear/linear_model/workclass_indicator/weights/part_0
½
Wlinear/linear_model/workclass_indicator/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp6linear/linear_model/workclass_indicator/weights/part_0*
_output_shapes
: 
ą
=linear/linear_model/workclass_indicator/weights/part_0/AssignAssignVariableOp6linear/linear_model/workclass_indicator/weights/part_0Hlinear/linear_model/workclass_indicator/weights/part_0/Initializer/zeros*
dtype0
Į
Jlinear/linear_model/workclass_indicator/weights/part_0/Read/ReadVariableOpReadVariableOp6linear/linear_model/workclass_indicator/weights/part_0*
_output_shapes

:	*
dtype0
Ā
9linear/linear_model/bias_weights/part_0/Initializer/zerosConst*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
_output_shapes
:*
dtype0*
valueB*    
ā
'linear/linear_model/bias_weights/part_0VarHandleOp*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'linear/linear_model/bias_weights/part_0

Hlinear/linear_model/bias_weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp'linear/linear_model/bias_weights/part_0*
_output_shapes
: 
³
.linear/linear_model/bias_weights/part_0/AssignAssignVariableOp'linear/linear_model/bias_weights/part_09linear/linear_model/bias_weights/part_0/Initializer/zeros*
dtype0

;linear/linear_model/bias_weights/part_0/Read/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*
_output_shapes
:*
dtype0

@linear/linear_model/linear_model/linear_model/age/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’
ę
<linear/linear_model/linear_model/linear_model/age/ExpandDims
ExpandDims&transform/transform/scale_to_0_1/add_1@linear/linear_model/linear_model/linear_model/age/ExpandDims/dim*
T0*'
_output_shapes
:’’’’’’’’’
£
7linear/linear_model/linear_model/linear_model/age/ShapeShape<linear/linear_model/linear_model/linear_model/age/ExpandDims*
T0*
_output_shapes
:

Elinear/linear_model/linear_model/linear_model/age/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 

Glinear/linear_model/linear_model/linear_model/age/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

Glinear/linear_model/linear_model/linear_model/age/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
§
?linear/linear_model/linear_model/linear_model/age/strided_sliceStridedSlice7linear/linear_model/linear_model/linear_model/age/ShapeElinear/linear_model/linear_model/linear_model/age/strided_slice/stackGlinear/linear_model/linear_model/linear_model/age/strided_slice/stack_1Glinear/linear_model/linear_model/linear_model/age/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

Alinear/linear_model/linear_model/linear_model/age/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
ł
?linear/linear_model/linear_model/linear_model/age/Reshape/shapePack?linear/linear_model/linear_model/linear_model/age/strided_sliceAlinear/linear_model/linear_model/linear_model/age/Reshape/shape/1*
N*
T0*
_output_shapes
:
õ
9linear/linear_model/linear_model/linear_model/age/ReshapeReshape<linear/linear_model/linear_model/linear_model/age/ExpandDims?linear/linear_model/linear_model/linear_model/age/Reshape/shape*
T0*'
_output_shapes
:’’’’’’’’’

.linear/linear_model/age/weights/ReadVariableOpReadVariableOp&linear/linear_model/age/weights/part_0*
_output_shapes

:*
dtype0

linear/linear_model/age/weightsIdentity.linear/linear_model/age/weights/ReadVariableOp*
T0*
_output_shapes

:
Ö
>linear/linear_model/linear_model/linear_model/age/weighted_sumMatMul9linear/linear_model/linear_model/linear_model/age/Reshapelinear/linear_model/age/weights*
T0*'
_output_shapes
:’’’’’’’’’

Ilinear/linear_model/linear_model/linear_model/capital-gain/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’
ś
Elinear/linear_model/linear_model/linear_model/capital-gain/ExpandDims
ExpandDims(transform/transform/scale_to_0_1_1/add_1Ilinear/linear_model/linear_model/linear_model/capital-gain/ExpandDims/dim*
T0*'
_output_shapes
:’’’’’’’’’
µ
@linear/linear_model/linear_model/linear_model/capital-gain/ShapeShapeElinear/linear_model/linear_model/linear_model/capital-gain/ExpandDims*
T0*
_output_shapes
:

Nlinear/linear_model/linear_model/linear_model/capital-gain/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 

Plinear/linear_model/linear_model/linear_model/capital-gain/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

Plinear/linear_model/linear_model/linear_model/capital-gain/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Ō
Hlinear/linear_model/linear_model/linear_model/capital-gain/strided_sliceStridedSlice@linear/linear_model/linear_model/linear_model/capital-gain/ShapeNlinear/linear_model/linear_model/linear_model/capital-gain/strided_slice/stackPlinear/linear_model/linear_model/linear_model/capital-gain/strided_slice/stack_1Plinear/linear_model/linear_model/linear_model/capital-gain/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

Jlinear/linear_model/linear_model/linear_model/capital-gain/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :

Hlinear/linear_model/linear_model/linear_model/capital-gain/Reshape/shapePackHlinear/linear_model/linear_model/linear_model/capital-gain/strided_sliceJlinear/linear_model/linear_model/linear_model/capital-gain/Reshape/shape/1*
N*
T0*
_output_shapes
:

Blinear/linear_model/linear_model/linear_model/capital-gain/ReshapeReshapeElinear/linear_model/linear_model/linear_model/capital-gain/ExpandDimsHlinear/linear_model/linear_model/linear_model/capital-gain/Reshape/shape*
T0*'
_output_shapes
:’’’’’’’’’
§
7linear/linear_model/capital-gain/weights/ReadVariableOpReadVariableOp/linear/linear_model/capital-gain/weights/part_0*
_output_shapes

:*
dtype0

(linear/linear_model/capital-gain/weightsIdentity7linear/linear_model/capital-gain/weights/ReadVariableOp*
T0*
_output_shapes

:
ń
Glinear/linear_model/linear_model/linear_model/capital-gain/weighted_sumMatMulBlinear/linear_model/linear_model/linear_model/capital-gain/Reshape(linear/linear_model/capital-gain/weights*
T0*'
_output_shapes
:’’’’’’’’’

Ilinear/linear_model/linear_model/linear_model/capital-loss/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’
ś
Elinear/linear_model/linear_model/linear_model/capital-loss/ExpandDims
ExpandDims(transform/transform/scale_to_0_1_2/add_1Ilinear/linear_model/linear_model/linear_model/capital-loss/ExpandDims/dim*
T0*'
_output_shapes
:’’’’’’’’’
µ
@linear/linear_model/linear_model/linear_model/capital-loss/ShapeShapeElinear/linear_model/linear_model/linear_model/capital-loss/ExpandDims*
T0*
_output_shapes
:

Nlinear/linear_model/linear_model/linear_model/capital-loss/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 

Plinear/linear_model/linear_model/linear_model/capital-loss/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

Plinear/linear_model/linear_model/linear_model/capital-loss/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Ō
Hlinear/linear_model/linear_model/linear_model/capital-loss/strided_sliceStridedSlice@linear/linear_model/linear_model/linear_model/capital-loss/ShapeNlinear/linear_model/linear_model/linear_model/capital-loss/strided_slice/stackPlinear/linear_model/linear_model/linear_model/capital-loss/strided_slice/stack_1Plinear/linear_model/linear_model/linear_model/capital-loss/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

Jlinear/linear_model/linear_model/linear_model/capital-loss/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :

Hlinear/linear_model/linear_model/linear_model/capital-loss/Reshape/shapePackHlinear/linear_model/linear_model/linear_model/capital-loss/strided_sliceJlinear/linear_model/linear_model/linear_model/capital-loss/Reshape/shape/1*
N*
T0*
_output_shapes
:

Blinear/linear_model/linear_model/linear_model/capital-loss/ReshapeReshapeElinear/linear_model/linear_model/linear_model/capital-loss/ExpandDimsHlinear/linear_model/linear_model/linear_model/capital-loss/Reshape/shape*
T0*'
_output_shapes
:’’’’’’’’’
§
7linear/linear_model/capital-loss/weights/ReadVariableOpReadVariableOp/linear/linear_model/capital-loss/weights/part_0*
_output_shapes

:*
dtype0

(linear/linear_model/capital-loss/weightsIdentity7linear/linear_model/capital-loss/weights/ReadVariableOp*
T0*
_output_shapes

:
ń
Glinear/linear_model/linear_model/linear_model/capital-loss/weighted_sumMatMulBlinear/linear_model/linear_model/linear_model/capital-loss/Reshape(linear/linear_model/capital-loss/weights*
T0*'
_output_shapes
:’’’’’’’’’

Plinear/linear_model/linear_model/linear_model/education_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’

Llinear/linear_model/linear_model/linear_model/education_indicator/ExpandDims
ExpandDims0transform/transform/inputs/inputs/education_copyPlinear/linear_model/linear_model/linear_model/education_indicator/ExpandDims/dim*
T0*'
_output_shapes
:’’’’’’’’’
”
`linear/linear_model/linear_model/linear_model/education_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B 
Č
Zlinear/linear_model/linear_model/linear_model/education_indicator/to_sparse_input/NotEqualNotEqualLlinear/linear_model/linear_model/linear_model/education_indicator/ExpandDims`linear/linear_model/linear_model/linear_model/education_indicator/to_sparse_input/ignore_value/x*
T0*'
_output_shapes
:’’’’’’’’’
ē
Ylinear/linear_model/linear_model/linear_model/education_indicator/to_sparse_input/indicesWhereZlinear/linear_model/linear_model/linear_model/education_indicator/to_sparse_input/NotEqual*'
_output_shapes
:’’’’’’’’’
Ń
Xlinear/linear_model/linear_model/linear_model/education_indicator/to_sparse_input/valuesGatherNdLlinear/linear_model/linear_model/linear_model/education_indicator/ExpandDimsYlinear/linear_model/linear_model/linear_model/education_indicator/to_sparse_input/indices*
Tindices0	*
Tparams0*#
_output_shapes
:’’’’’’’’’
é
]linear/linear_model/linear_model/linear_model/education_indicator/to_sparse_input/dense_shapeShapeLlinear/linear_model/linear_model/linear_model/education_indicator/ExpandDims*
T0*
_output_shapes
:*
out_type0	

hlinear/linear_model/linear_model/linear_model/education_indicator/education_lookup/hash_table/asset_pathConst"/device:CPU:**
_output_shapes
: *
dtype0*o
valuefBd B^D:\Spooky\A-Documents\Code\Differential Privacy\data\tmp31a1bx1_\transform_fn\assets\education
®
clinear/linear_model/linear_model/linear_model/education_indicator/education_lookup/hash_table/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
’’’’’’’’’
¹
hlinear/linear_model/linear_model/linear_model/education_indicator/education_lookup/hash_table/hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_nametrhash_table_D:\Spooky\A-Documents\Code\Differential Privacy\data\tmp31a1bx1_\transform_fn\assets\education_16_-2_-1*
value_dtype0	
Ä
linear/linear_model/linear_model/linear_model/education_indicator/education_lookup/hash_table/table_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV2hlinear/linear_model/linear_model/linear_model/education_indicator/education_lookup/hash_table/hash_tablehlinear/linear_model/linear_model/linear_model/education_indicator/education_lookup/hash_table/asset_path*
	key_indexž’’’’’’’’*
value_index’’’’’’’’’*

vocab_size
ß
elinear/linear_model/linear_model/linear_model/education_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2hlinear/linear_model/linear_model/linear_model/education_indicator/education_lookup/hash_table/hash_tableXlinear/linear_model/linear_model/linear_model/education_indicator/to_sparse_input/valuesclinear/linear_model/linear_model/linear_model/education_indicator/education_lookup/hash_table/Const*	
Tin0*

Tout0	*#
_output_shapes
:’’’’’’’’’
Ø
]linear/linear_model/linear_model/linear_model/education_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
’’’’’’’’’
¢
Olinear/linear_model/linear_model/linear_model/education_indicator/SparseToDenseSparseToDenseYlinear/linear_model/linear_model/linear_model/education_indicator/to_sparse_input/indices]linear/linear_model/linear_model/linear_model/education_indicator/to_sparse_input/dense_shapeelinear/linear_model/linear_model/linear_model/education_indicator/hash_table_Lookup/LookupTableFindV2]linear/linear_model/linear_model/linear_model/education_indicator/SparseToDense/default_value*
T0	*
Tindices0	*'
_output_shapes
:’’’’’’’’’

Olinear/linear_model/linear_model/linear_model/education_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?

Qlinear/linear_model/linear_model/linear_model/education_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    

Olinear/linear_model/linear_model/linear_model/education_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :

Rlinear/linear_model/linear_model/linear_model/education_indicator/one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  ?

Slinear/linear_model/linear_model/linear_model/education_indicator/one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
Ō
Ilinear/linear_model/linear_model/linear_model/education_indicator/one_hotOneHotOlinear/linear_model/linear_model/linear_model/education_indicator/SparseToDenseOlinear/linear_model/linear_model/linear_model/education_indicator/one_hot/depthRlinear/linear_model/linear_model/linear_model/education_indicator/one_hot/on_valueSlinear/linear_model/linear_model/linear_model/education_indicator/one_hot/off_value*
T0*+
_output_shapes
:’’’’’’’’’
Ŗ
Wlinear/linear_model/linear_model/linear_model/education_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
ž’’’’’’’’
¢
Elinear/linear_model/linear_model/linear_model/education_indicator/SumSumIlinear/linear_model/linear_model/linear_model/education_indicator/one_hotWlinear/linear_model/linear_model/linear_model/education_indicator/Sum/reduction_indices*
T0*'
_output_shapes
:’’’’’’’’’
¼
Glinear/linear_model/linear_model/linear_model/education_indicator/ShapeShapeElinear/linear_model/linear_model/linear_model/education_indicator/Sum*
T0*
_output_shapes
:

Ulinear/linear_model/linear_model/linear_model/education_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
”
Wlinear/linear_model/linear_model/linear_model/education_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
”
Wlinear/linear_model/linear_model/linear_model/education_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
÷
Olinear/linear_model/linear_model/linear_model/education_indicator/strided_sliceStridedSliceGlinear/linear_model/linear_model/linear_model/education_indicator/ShapeUlinear/linear_model/linear_model/linear_model/education_indicator/strided_slice/stackWlinear/linear_model/linear_model/linear_model/education_indicator/strided_slice/stack_1Wlinear/linear_model/linear_model/linear_model/education_indicator/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

Qlinear/linear_model/linear_model/linear_model/education_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
©
Olinear/linear_model/linear_model/linear_model/education_indicator/Reshape/shapePackOlinear/linear_model/linear_model/linear_model/education_indicator/strided_sliceQlinear/linear_model/linear_model/linear_model/education_indicator/Reshape/shape/1*
N*
T0*
_output_shapes
:

Ilinear/linear_model/linear_model/linear_model/education_indicator/ReshapeReshapeElinear/linear_model/linear_model/linear_model/education_indicator/SumOlinear/linear_model/linear_model/linear_model/education_indicator/Reshape/shape*
T0*'
_output_shapes
:’’’’’’’’’
µ
>linear/linear_model/education_indicator/weights/ReadVariableOpReadVariableOp6linear/linear_model/education_indicator/weights/part_0*
_output_shapes

:*
dtype0
¤
/linear/linear_model/education_indicator/weightsIdentity>linear/linear_model/education_indicator/weights/ReadVariableOp*
T0*
_output_shapes

:

Nlinear/linear_model/linear_model/linear_model/education_indicator/weighted_sumMatMulIlinear/linear_model/linear_model/linear_model/education_indicator/Reshape/linear/linear_model/education_indicator/weights*
T0*'
_output_shapes
:’’’’’’’’’

Klinear/linear_model/linear_model/linear_model/hours-per-week/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’
ž
Glinear/linear_model/linear_model/linear_model/hours-per-week/ExpandDims
ExpandDims(transform/transform/scale_to_0_1_3/add_1Klinear/linear_model/linear_model/linear_model/hours-per-week/ExpandDims/dim*
T0*'
_output_shapes
:’’’’’’’’’
¹
Blinear/linear_model/linear_model/linear_model/hours-per-week/ShapeShapeGlinear/linear_model/linear_model/linear_model/hours-per-week/ExpandDims*
T0*
_output_shapes
:

Plinear/linear_model/linear_model/linear_model/hours-per-week/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 

Rlinear/linear_model/linear_model/linear_model/hours-per-week/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

Rlinear/linear_model/linear_model/linear_model/hours-per-week/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Ž
Jlinear/linear_model/linear_model/linear_model/hours-per-week/strided_sliceStridedSliceBlinear/linear_model/linear_model/linear_model/hours-per-week/ShapePlinear/linear_model/linear_model/linear_model/hours-per-week/strided_slice/stackRlinear/linear_model/linear_model/linear_model/hours-per-week/strided_slice/stack_1Rlinear/linear_model/linear_model/linear_model/hours-per-week/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

Llinear/linear_model/linear_model/linear_model/hours-per-week/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :

Jlinear/linear_model/linear_model/linear_model/hours-per-week/Reshape/shapePackJlinear/linear_model/linear_model/linear_model/hours-per-week/strided_sliceLlinear/linear_model/linear_model/linear_model/hours-per-week/Reshape/shape/1*
N*
T0*
_output_shapes
:

Dlinear/linear_model/linear_model/linear_model/hours-per-week/ReshapeReshapeGlinear/linear_model/linear_model/linear_model/hours-per-week/ExpandDimsJlinear/linear_model/linear_model/linear_model/hours-per-week/Reshape/shape*
T0*'
_output_shapes
:’’’’’’’’’
«
9linear/linear_model/hours-per-week/weights/ReadVariableOpReadVariableOp1linear/linear_model/hours-per-week/weights/part_0*
_output_shapes

:*
dtype0

*linear/linear_model/hours-per-week/weightsIdentity9linear/linear_model/hours-per-week/weights/ReadVariableOp*
T0*
_output_shapes

:
÷
Ilinear/linear_model/linear_model/linear_model/hours-per-week/weighted_sumMatMulDlinear/linear_model/linear_model/linear_model/hours-per-week/Reshape*linear/linear_model/hours-per-week/weights*
T0*'
_output_shapes
:’’’’’’’’’
 
Ulinear/linear_model/linear_model/linear_model/marital-status_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’
”
Qlinear/linear_model/linear_model/linear_model/marital-status_indicator/ExpandDims
ExpandDims7transform/transform/inputs/inputs/F_marital-status_copyUlinear/linear_model/linear_model/linear_model/marital-status_indicator/ExpandDims/dim*
T0*'
_output_shapes
:’’’’’’’’’
¦
elinear/linear_model/linear_model/linear_model/marital-status_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B 
×
_linear/linear_model/linear_model/linear_model/marital-status_indicator/to_sparse_input/NotEqualNotEqualQlinear/linear_model/linear_model/linear_model/marital-status_indicator/ExpandDimselinear/linear_model/linear_model/linear_model/marital-status_indicator/to_sparse_input/ignore_value/x*
T0*'
_output_shapes
:’’’’’’’’’
ń
^linear/linear_model/linear_model/linear_model/marital-status_indicator/to_sparse_input/indicesWhere_linear/linear_model/linear_model/linear_model/marital-status_indicator/to_sparse_input/NotEqual*'
_output_shapes
:’’’’’’’’’
ą
]linear/linear_model/linear_model/linear_model/marital-status_indicator/to_sparse_input/valuesGatherNdQlinear/linear_model/linear_model/linear_model/marital-status_indicator/ExpandDims^linear/linear_model/linear_model/linear_model/marital-status_indicator/to_sparse_input/indices*
Tindices0	*
Tparams0*#
_output_shapes
:’’’’’’’’’
ó
blinear/linear_model/linear_model/linear_model/marital-status_indicator/to_sparse_input/dense_shapeShapeQlinear/linear_model/linear_model/linear_model/marital-status_indicator/ExpandDims*
T0*
_output_shapes
:*
out_type0	
„
rlinear/linear_model/linear_model/linear_model/marital-status_indicator/marital-status_lookup/hash_table/asset_pathConst"/device:CPU:**
_output_shapes
: *
dtype0*t
valuekBi BcD:\Spooky\A-Documents\Code\Differential Privacy\data\tmp31a1bx1_\transform_fn\assets\marital-status
ø
mlinear/linear_model/linear_model/linear_model/marital-status_indicator/marital-status_lookup/hash_table/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
’’’’’’’’’
Ē
rlinear/linear_model/linear_model/linear_model/marital-status_indicator/marital-status_lookup/hash_table/hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_namexvhash_table_D:\Spooky\A-Documents\Code\Differential Privacy\data\tmp31a1bx1_\transform_fn\assets\marital-status_7_-2_-1*
value_dtype0	
ā
linear/linear_model/linear_model/linear_model/marital-status_indicator/marital-status_lookup/hash_table/table_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV2rlinear/linear_model/linear_model/linear_model/marital-status_indicator/marital-status_lookup/hash_table/hash_tablerlinear/linear_model/linear_model/linear_model/marital-status_indicator/marital-status_lookup/hash_table/asset_path*
	key_indexž’’’’’’’’*
value_index’’’’’’’’’*

vocab_size
ż
jlinear/linear_model/linear_model/linear_model/marital-status_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2rlinear/linear_model/linear_model/linear_model/marital-status_indicator/marital-status_lookup/hash_table/hash_table]linear/linear_model/linear_model/linear_model/marital-status_indicator/to_sparse_input/valuesmlinear/linear_model/linear_model/linear_model/marital-status_indicator/marital-status_lookup/hash_table/Const*	
Tin0*

Tout0	*#
_output_shapes
:’’’’’’’’’
­
blinear/linear_model/linear_model/linear_model/marital-status_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
’’’’’’’’’
»
Tlinear/linear_model/linear_model/linear_model/marital-status_indicator/SparseToDenseSparseToDense^linear/linear_model/linear_model/linear_model/marital-status_indicator/to_sparse_input/indicesblinear/linear_model/linear_model/linear_model/marital-status_indicator/to_sparse_input/dense_shapejlinear/linear_model/linear_model/linear_model/marital-status_indicator/hash_table_Lookup/LookupTableFindV2blinear/linear_model/linear_model/linear_model/marital-status_indicator/SparseToDense/default_value*
T0	*
Tindices0	*'
_output_shapes
:’’’’’’’’’

Tlinear/linear_model/linear_model/linear_model/marital-status_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?

Vlinear/linear_model/linear_model/linear_model/marital-status_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    

Tlinear/linear_model/linear_model/linear_model/marital-status_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :

Wlinear/linear_model/linear_model/linear_model/marital-status_indicator/one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  ?

Xlinear/linear_model/linear_model/linear_model/marital-status_indicator/one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
ķ
Nlinear/linear_model/linear_model/linear_model/marital-status_indicator/one_hotOneHotTlinear/linear_model/linear_model/linear_model/marital-status_indicator/SparseToDenseTlinear/linear_model/linear_model/linear_model/marital-status_indicator/one_hot/depthWlinear/linear_model/linear_model/linear_model/marital-status_indicator/one_hot/on_valueXlinear/linear_model/linear_model/linear_model/marital-status_indicator/one_hot/off_value*
T0*+
_output_shapes
:’’’’’’’’’
Æ
\linear/linear_model/linear_model/linear_model/marital-status_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
ž’’’’’’’’
±
Jlinear/linear_model/linear_model/linear_model/marital-status_indicator/SumSumNlinear/linear_model/linear_model/linear_model/marital-status_indicator/one_hot\linear/linear_model/linear_model/linear_model/marital-status_indicator/Sum/reduction_indices*
T0*'
_output_shapes
:’’’’’’’’’
Ę
Llinear/linear_model/linear_model/linear_model/marital-status_indicator/ShapeShapeJlinear/linear_model/linear_model/linear_model/marital-status_indicator/Sum*
T0*
_output_shapes
:
¤
Zlinear/linear_model/linear_model/linear_model/marital-status_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
¦
\linear/linear_model/linear_model/linear_model/marital-status_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
¦
\linear/linear_model/linear_model/linear_model/marital-status_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:

Tlinear/linear_model/linear_model/linear_model/marital-status_indicator/strided_sliceStridedSliceLlinear/linear_model/linear_model/linear_model/marital-status_indicator/ShapeZlinear/linear_model/linear_model/linear_model/marital-status_indicator/strided_slice/stack\linear/linear_model/linear_model/linear_model/marital-status_indicator/strided_slice/stack_1\linear/linear_model/linear_model/linear_model/marital-status_indicator/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

Vlinear/linear_model/linear_model/linear_model/marital-status_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
ø
Tlinear/linear_model/linear_model/linear_model/marital-status_indicator/Reshape/shapePackTlinear/linear_model/linear_model/linear_model/marital-status_indicator/strided_sliceVlinear/linear_model/linear_model/linear_model/marital-status_indicator/Reshape/shape/1*
N*
T0*
_output_shapes
:
­
Nlinear/linear_model/linear_model/linear_model/marital-status_indicator/ReshapeReshapeJlinear/linear_model/linear_model/linear_model/marital-status_indicator/SumTlinear/linear_model/linear_model/linear_model/marital-status_indicator/Reshape/shape*
T0*'
_output_shapes
:’’’’’’’’’
æ
Clinear/linear_model/marital-status_indicator/weights/ReadVariableOpReadVariableOp;linear/linear_model/marital-status_indicator/weights/part_0*
_output_shapes

:*
dtype0
®
4linear/linear_model/marital-status_indicator/weightsIdentityClinear/linear_model/marital-status_indicator/weights/ReadVariableOp*
T0*
_output_shapes

:

Slinear/linear_model/linear_model/linear_model/marital-status_indicator/weighted_sumMatMulNlinear/linear_model/linear_model/linear_model/marital-status_indicator/Reshape4linear/linear_model/marital-status_indicator/weights*
T0*'
_output_shapes
:’’’’’’’’’
 
Ulinear/linear_model/linear_model/linear_model/native-country_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’
”
Qlinear/linear_model/linear_model/linear_model/native-country_indicator/ExpandDims
ExpandDims7transform/transform/inputs/inputs/F_native-country_copyUlinear/linear_model/linear_model/linear_model/native-country_indicator/ExpandDims/dim*
T0*'
_output_shapes
:’’’’’’’’’
¦
elinear/linear_model/linear_model/linear_model/native-country_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B 
×
_linear/linear_model/linear_model/linear_model/native-country_indicator/to_sparse_input/NotEqualNotEqualQlinear/linear_model/linear_model/linear_model/native-country_indicator/ExpandDimselinear/linear_model/linear_model/linear_model/native-country_indicator/to_sparse_input/ignore_value/x*
T0*'
_output_shapes
:’’’’’’’’’
ń
^linear/linear_model/linear_model/linear_model/native-country_indicator/to_sparse_input/indicesWhere_linear/linear_model/linear_model/linear_model/native-country_indicator/to_sparse_input/NotEqual*'
_output_shapes
:’’’’’’’’’
ą
]linear/linear_model/linear_model/linear_model/native-country_indicator/to_sparse_input/valuesGatherNdQlinear/linear_model/linear_model/linear_model/native-country_indicator/ExpandDims^linear/linear_model/linear_model/linear_model/native-country_indicator/to_sparse_input/indices*
Tindices0	*
Tparams0*#
_output_shapes
:’’’’’’’’’
ó
blinear/linear_model/linear_model/linear_model/native-country_indicator/to_sparse_input/dense_shapeShapeQlinear/linear_model/linear_model/linear_model/native-country_indicator/ExpandDims*
T0*
_output_shapes
:*
out_type0	
„
rlinear/linear_model/linear_model/linear_model/native-country_indicator/native-country_lookup/hash_table/asset_pathConst"/device:CPU:**
_output_shapes
: *
dtype0*t
valuekBi BcD:\Spooky\A-Documents\Code\Differential Privacy\data\tmp31a1bx1_\transform_fn\assets\native-country
ø
mlinear/linear_model/linear_model/linear_model/native-country_indicator/native-country_lookup/hash_table/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
’’’’’’’’’
Č
rlinear/linear_model/linear_model/linear_model/native-country_indicator/native-country_lookup/hash_table/hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_nameywhash_table_D:\Spooky\A-Documents\Code\Differential Privacy\data\tmp31a1bx1_\transform_fn\assets\native-country_42_-2_-1*
value_dtype0	
ā
linear/linear_model/linear_model/linear_model/native-country_indicator/native-country_lookup/hash_table/table_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV2rlinear/linear_model/linear_model/linear_model/native-country_indicator/native-country_lookup/hash_table/hash_tablerlinear/linear_model/linear_model/linear_model/native-country_indicator/native-country_lookup/hash_table/asset_path*
	key_indexž’’’’’’’’*
value_index’’’’’’’’’*

vocab_size*
ż
jlinear/linear_model/linear_model/linear_model/native-country_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2rlinear/linear_model/linear_model/linear_model/native-country_indicator/native-country_lookup/hash_table/hash_table]linear/linear_model/linear_model/linear_model/native-country_indicator/to_sparse_input/valuesmlinear/linear_model/linear_model/linear_model/native-country_indicator/native-country_lookup/hash_table/Const*	
Tin0*

Tout0	*#
_output_shapes
:’’’’’’’’’
­
blinear/linear_model/linear_model/linear_model/native-country_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
’’’’’’’’’
»
Tlinear/linear_model/linear_model/linear_model/native-country_indicator/SparseToDenseSparseToDense^linear/linear_model/linear_model/linear_model/native-country_indicator/to_sparse_input/indicesblinear/linear_model/linear_model/linear_model/native-country_indicator/to_sparse_input/dense_shapejlinear/linear_model/linear_model/linear_model/native-country_indicator/hash_table_Lookup/LookupTableFindV2blinear/linear_model/linear_model/linear_model/native-country_indicator/SparseToDense/default_value*
T0	*
Tindices0	*'
_output_shapes
:’’’’’’’’’

Tlinear/linear_model/linear_model/linear_model/native-country_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?

Vlinear/linear_model/linear_model/linear_model/native-country_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    

Tlinear/linear_model/linear_model/linear_model/native-country_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :*

Wlinear/linear_model/linear_model/linear_model/native-country_indicator/one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  ?

Xlinear/linear_model/linear_model/linear_model/native-country_indicator/one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
ķ
Nlinear/linear_model/linear_model/linear_model/native-country_indicator/one_hotOneHotTlinear/linear_model/linear_model/linear_model/native-country_indicator/SparseToDenseTlinear/linear_model/linear_model/linear_model/native-country_indicator/one_hot/depthWlinear/linear_model/linear_model/linear_model/native-country_indicator/one_hot/on_valueXlinear/linear_model/linear_model/linear_model/native-country_indicator/one_hot/off_value*
T0*+
_output_shapes
:’’’’’’’’’*
Æ
\linear/linear_model/linear_model/linear_model/native-country_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
ž’’’’’’’’
±
Jlinear/linear_model/linear_model/linear_model/native-country_indicator/SumSumNlinear/linear_model/linear_model/linear_model/native-country_indicator/one_hot\linear/linear_model/linear_model/linear_model/native-country_indicator/Sum/reduction_indices*
T0*'
_output_shapes
:’’’’’’’’’*
Ę
Llinear/linear_model/linear_model/linear_model/native-country_indicator/ShapeShapeJlinear/linear_model/linear_model/linear_model/native-country_indicator/Sum*
T0*
_output_shapes
:
¤
Zlinear/linear_model/linear_model/linear_model/native-country_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
¦
\linear/linear_model/linear_model/linear_model/native-country_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
¦
\linear/linear_model/linear_model/linear_model/native-country_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:

Tlinear/linear_model/linear_model/linear_model/native-country_indicator/strided_sliceStridedSliceLlinear/linear_model/linear_model/linear_model/native-country_indicator/ShapeZlinear/linear_model/linear_model/linear_model/native-country_indicator/strided_slice/stack\linear/linear_model/linear_model/linear_model/native-country_indicator/strided_slice/stack_1\linear/linear_model/linear_model/linear_model/native-country_indicator/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

Vlinear/linear_model/linear_model/linear_model/native-country_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :*
ø
Tlinear/linear_model/linear_model/linear_model/native-country_indicator/Reshape/shapePackTlinear/linear_model/linear_model/linear_model/native-country_indicator/strided_sliceVlinear/linear_model/linear_model/linear_model/native-country_indicator/Reshape/shape/1*
N*
T0*
_output_shapes
:
­
Nlinear/linear_model/linear_model/linear_model/native-country_indicator/ReshapeReshapeJlinear/linear_model/linear_model/linear_model/native-country_indicator/SumTlinear/linear_model/linear_model/linear_model/native-country_indicator/Reshape/shape*
T0*'
_output_shapes
:’’’’’’’’’*
æ
Clinear/linear_model/native-country_indicator/weights/ReadVariableOpReadVariableOp;linear/linear_model/native-country_indicator/weights/part_0*
_output_shapes

:**
dtype0
®
4linear/linear_model/native-country_indicator/weightsIdentityClinear/linear_model/native-country_indicator/weights/ReadVariableOp*
T0*
_output_shapes

:*

Slinear/linear_model/linear_model/linear_model/native-country_indicator/weighted_sumMatMulNlinear/linear_model/linear_model/linear_model/native-country_indicator/Reshape4linear/linear_model/native-country_indicator/weights*
T0*'
_output_shapes
:’’’’’’’’’

Qlinear/linear_model/linear_model/linear_model/occupation_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’

Mlinear/linear_model/linear_model/linear_model/occupation_indicator/ExpandDims
ExpandDims1transform/transform/inputs/inputs/occupation_copyQlinear/linear_model/linear_model/linear_model/occupation_indicator/ExpandDims/dim*
T0*'
_output_shapes
:’’’’’’’’’
¢
alinear/linear_model/linear_model/linear_model/occupation_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B 
Ė
[linear/linear_model/linear_model/linear_model/occupation_indicator/to_sparse_input/NotEqualNotEqualMlinear/linear_model/linear_model/linear_model/occupation_indicator/ExpandDimsalinear/linear_model/linear_model/linear_model/occupation_indicator/to_sparse_input/ignore_value/x*
T0*'
_output_shapes
:’’’’’’’’’
é
Zlinear/linear_model/linear_model/linear_model/occupation_indicator/to_sparse_input/indicesWhere[linear/linear_model/linear_model/linear_model/occupation_indicator/to_sparse_input/NotEqual*'
_output_shapes
:’’’’’’’’’
Ō
Ylinear/linear_model/linear_model/linear_model/occupation_indicator/to_sparse_input/valuesGatherNdMlinear/linear_model/linear_model/linear_model/occupation_indicator/ExpandDimsZlinear/linear_model/linear_model/linear_model/occupation_indicator/to_sparse_input/indices*
Tindices0	*
Tparams0*#
_output_shapes
:’’’’’’’’’
ė
^linear/linear_model/linear_model/linear_model/occupation_indicator/to_sparse_input/dense_shapeShapeMlinear/linear_model/linear_model/linear_model/occupation_indicator/ExpandDims*
T0*
_output_shapes
:*
out_type0	

jlinear/linear_model/linear_model/linear_model/occupation_indicator/occupation_lookup/hash_table/asset_pathConst"/device:CPU:**
_output_shapes
: *
dtype0*p
valuegBe B_D:\Spooky\A-Documents\Code\Differential Privacy\data\tmp31a1bx1_\transform_fn\assets\occupation
°
elinear/linear_model/linear_model/linear_model/occupation_indicator/occupation_lookup/hash_table/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
’’’’’’’’’
¼
jlinear/linear_model/linear_model/linear_model/occupation_indicator/occupation_lookup/hash_table/hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_nameushash_table_D:\Spooky\A-Documents\Code\Differential Privacy\data\tmp31a1bx1_\transform_fn\assets\occupation_15_-2_-1*
value_dtype0	
Ź
linear/linear_model/linear_model/linear_model/occupation_indicator/occupation_lookup/hash_table/table_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV2jlinear/linear_model/linear_model/linear_model/occupation_indicator/occupation_lookup/hash_table/hash_tablejlinear/linear_model/linear_model/linear_model/occupation_indicator/occupation_lookup/hash_table/asset_path*
	key_indexž’’’’’’’’*
value_index’’’’’’’’’*

vocab_size
å
flinear/linear_model/linear_model/linear_model/occupation_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2jlinear/linear_model/linear_model/linear_model/occupation_indicator/occupation_lookup/hash_table/hash_tableYlinear/linear_model/linear_model/linear_model/occupation_indicator/to_sparse_input/valueselinear/linear_model/linear_model/linear_model/occupation_indicator/occupation_lookup/hash_table/Const*	
Tin0*

Tout0	*#
_output_shapes
:’’’’’’’’’
©
^linear/linear_model/linear_model/linear_model/occupation_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
’’’’’’’’’
§
Plinear/linear_model/linear_model/linear_model/occupation_indicator/SparseToDenseSparseToDenseZlinear/linear_model/linear_model/linear_model/occupation_indicator/to_sparse_input/indices^linear/linear_model/linear_model/linear_model/occupation_indicator/to_sparse_input/dense_shapeflinear/linear_model/linear_model/linear_model/occupation_indicator/hash_table_Lookup/LookupTableFindV2^linear/linear_model/linear_model/linear_model/occupation_indicator/SparseToDense/default_value*
T0	*
Tindices0	*'
_output_shapes
:’’’’’’’’’

Plinear/linear_model/linear_model/linear_model/occupation_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?

Rlinear/linear_model/linear_model/linear_model/occupation_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    

Plinear/linear_model/linear_model/linear_model/occupation_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :

Slinear/linear_model/linear_model/linear_model/occupation_indicator/one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  ?

Tlinear/linear_model/linear_model/linear_model/occupation_indicator/one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
Ł
Jlinear/linear_model/linear_model/linear_model/occupation_indicator/one_hotOneHotPlinear/linear_model/linear_model/linear_model/occupation_indicator/SparseToDensePlinear/linear_model/linear_model/linear_model/occupation_indicator/one_hot/depthSlinear/linear_model/linear_model/linear_model/occupation_indicator/one_hot/on_valueTlinear/linear_model/linear_model/linear_model/occupation_indicator/one_hot/off_value*
T0*+
_output_shapes
:’’’’’’’’’
«
Xlinear/linear_model/linear_model/linear_model/occupation_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
ž’’’’’’’’
„
Flinear/linear_model/linear_model/linear_model/occupation_indicator/SumSumJlinear/linear_model/linear_model/linear_model/occupation_indicator/one_hotXlinear/linear_model/linear_model/linear_model/occupation_indicator/Sum/reduction_indices*
T0*'
_output_shapes
:’’’’’’’’’
¾
Hlinear/linear_model/linear_model/linear_model/occupation_indicator/ShapeShapeFlinear/linear_model/linear_model/linear_model/occupation_indicator/Sum*
T0*
_output_shapes
:
 
Vlinear/linear_model/linear_model/linear_model/occupation_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
¢
Xlinear/linear_model/linear_model/linear_model/occupation_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
¢
Xlinear/linear_model/linear_model/linear_model/occupation_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ü
Plinear/linear_model/linear_model/linear_model/occupation_indicator/strided_sliceStridedSliceHlinear/linear_model/linear_model/linear_model/occupation_indicator/ShapeVlinear/linear_model/linear_model/linear_model/occupation_indicator/strided_slice/stackXlinear/linear_model/linear_model/linear_model/occupation_indicator/strided_slice/stack_1Xlinear/linear_model/linear_model/linear_model/occupation_indicator/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

Rlinear/linear_model/linear_model/linear_model/occupation_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
¬
Plinear/linear_model/linear_model/linear_model/occupation_indicator/Reshape/shapePackPlinear/linear_model/linear_model/linear_model/occupation_indicator/strided_sliceRlinear/linear_model/linear_model/linear_model/occupation_indicator/Reshape/shape/1*
N*
T0*
_output_shapes
:
”
Jlinear/linear_model/linear_model/linear_model/occupation_indicator/ReshapeReshapeFlinear/linear_model/linear_model/linear_model/occupation_indicator/SumPlinear/linear_model/linear_model/linear_model/occupation_indicator/Reshape/shape*
T0*'
_output_shapes
:’’’’’’’’’
·
?linear/linear_model/occupation_indicator/weights/ReadVariableOpReadVariableOp7linear/linear_model/occupation_indicator/weights/part_0*
_output_shapes

:*
dtype0
¦
0linear/linear_model/occupation_indicator/weightsIdentity?linear/linear_model/occupation_indicator/weights/ReadVariableOp*
T0*
_output_shapes

:

Olinear/linear_model/linear_model/linear_model/occupation_indicator/weighted_sumMatMulJlinear/linear_model/linear_model/linear_model/occupation_indicator/Reshape0linear/linear_model/occupation_indicator/weights*
T0*'
_output_shapes
:’’’’’’’’’

Klinear/linear_model/linear_model/linear_model/race_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’

Glinear/linear_model/linear_model/linear_model/race_indicator/ExpandDims
ExpandDims+transform/transform/inputs/inputs/race_copyKlinear/linear_model/linear_model/linear_model/race_indicator/ExpandDims/dim*
T0*'
_output_shapes
:’’’’’’’’’

[linear/linear_model/linear_model/linear_model/race_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B 
¹
Ulinear/linear_model/linear_model/linear_model/race_indicator/to_sparse_input/NotEqualNotEqualGlinear/linear_model/linear_model/linear_model/race_indicator/ExpandDims[linear/linear_model/linear_model/linear_model/race_indicator/to_sparse_input/ignore_value/x*
T0*'
_output_shapes
:’’’’’’’’’
Ż
Tlinear/linear_model/linear_model/linear_model/race_indicator/to_sparse_input/indicesWhereUlinear/linear_model/linear_model/linear_model/race_indicator/to_sparse_input/NotEqual*'
_output_shapes
:’’’’’’’’’
Ā
Slinear/linear_model/linear_model/linear_model/race_indicator/to_sparse_input/valuesGatherNdGlinear/linear_model/linear_model/linear_model/race_indicator/ExpandDimsTlinear/linear_model/linear_model/linear_model/race_indicator/to_sparse_input/indices*
Tindices0	*
Tparams0*#
_output_shapes
:’’’’’’’’’
ß
Xlinear/linear_model/linear_model/linear_model/race_indicator/to_sparse_input/dense_shapeShapeGlinear/linear_model/linear_model/linear_model/race_indicator/ExpandDims*
T0*
_output_shapes
:*
out_type0	

^linear/linear_model/linear_model/linear_model/race_indicator/race_lookup/hash_table/asset_pathConst"/device:CPU:**
_output_shapes
: *
dtype0*j
valueaB_ BYD:\Spooky\A-Documents\Code\Differential Privacy\data\tmp31a1bx1_\transform_fn\assets\race
¤
Ylinear/linear_model/linear_model/linear_model/race_indicator/race_lookup/hash_table/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
’’’’’’’’’
Ø
^linear/linear_model/linear_model/linear_model/race_indicator/race_lookup/hash_table/hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*}
shared_namenlhash_table_D:\Spooky\A-Documents\Code\Differential Privacy\data\tmp31a1bx1_\transform_fn\assets\race_5_-2_-1*
value_dtype0	
„
|linear/linear_model/linear_model/linear_model/race_indicator/race_lookup/hash_table/table_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV2^linear/linear_model/linear_model/linear_model/race_indicator/race_lookup/hash_table/hash_table^linear/linear_model/linear_model/linear_model/race_indicator/race_lookup/hash_table/asset_path*
	key_indexž’’’’’’’’*
value_index’’’’’’’’’*

vocab_size
Į
`linear/linear_model/linear_model/linear_model/race_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2^linear/linear_model/linear_model/linear_model/race_indicator/race_lookup/hash_table/hash_tableSlinear/linear_model/linear_model/linear_model/race_indicator/to_sparse_input/valuesYlinear/linear_model/linear_model/linear_model/race_indicator/race_lookup/hash_table/Const*	
Tin0*

Tout0	*#
_output_shapes
:’’’’’’’’’
£
Xlinear/linear_model/linear_model/linear_model/race_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
’’’’’’’’’

Jlinear/linear_model/linear_model/linear_model/race_indicator/SparseToDenseSparseToDenseTlinear/linear_model/linear_model/linear_model/race_indicator/to_sparse_input/indicesXlinear/linear_model/linear_model/linear_model/race_indicator/to_sparse_input/dense_shape`linear/linear_model/linear_model/linear_model/race_indicator/hash_table_Lookup/LookupTableFindV2Xlinear/linear_model/linear_model/linear_model/race_indicator/SparseToDense/default_value*
T0	*
Tindices0	*'
_output_shapes
:’’’’’’’’’

Jlinear/linear_model/linear_model/linear_model/race_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?

Llinear/linear_model/linear_model/linear_model/race_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    

Jlinear/linear_model/linear_model/linear_model/race_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :

Mlinear/linear_model/linear_model/linear_model/race_indicator/one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  ?

Nlinear/linear_model/linear_model/linear_model/race_indicator/one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
»
Dlinear/linear_model/linear_model/linear_model/race_indicator/one_hotOneHotJlinear/linear_model/linear_model/linear_model/race_indicator/SparseToDenseJlinear/linear_model/linear_model/linear_model/race_indicator/one_hot/depthMlinear/linear_model/linear_model/linear_model/race_indicator/one_hot/on_valueNlinear/linear_model/linear_model/linear_model/race_indicator/one_hot/off_value*
T0*+
_output_shapes
:’’’’’’’’’
„
Rlinear/linear_model/linear_model/linear_model/race_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
ž’’’’’’’’

@linear/linear_model/linear_model/linear_model/race_indicator/SumSumDlinear/linear_model/linear_model/linear_model/race_indicator/one_hotRlinear/linear_model/linear_model/linear_model/race_indicator/Sum/reduction_indices*
T0*'
_output_shapes
:’’’’’’’’’
²
Blinear/linear_model/linear_model/linear_model/race_indicator/ShapeShape@linear/linear_model/linear_model/linear_model/race_indicator/Sum*
T0*
_output_shapes
:

Plinear/linear_model/linear_model/linear_model/race_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 

Rlinear/linear_model/linear_model/linear_model/race_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

Rlinear/linear_model/linear_model/linear_model/race_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Ž
Jlinear/linear_model/linear_model/linear_model/race_indicator/strided_sliceStridedSliceBlinear/linear_model/linear_model/linear_model/race_indicator/ShapePlinear/linear_model/linear_model/linear_model/race_indicator/strided_slice/stackRlinear/linear_model/linear_model/linear_model/race_indicator/strided_slice/stack_1Rlinear/linear_model/linear_model/linear_model/race_indicator/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

Llinear/linear_model/linear_model/linear_model/race_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :

Jlinear/linear_model/linear_model/linear_model/race_indicator/Reshape/shapePackJlinear/linear_model/linear_model/linear_model/race_indicator/strided_sliceLlinear/linear_model/linear_model/linear_model/race_indicator/Reshape/shape/1*
N*
T0*
_output_shapes
:

Dlinear/linear_model/linear_model/linear_model/race_indicator/ReshapeReshape@linear/linear_model/linear_model/linear_model/race_indicator/SumJlinear/linear_model/linear_model/linear_model/race_indicator/Reshape/shape*
T0*'
_output_shapes
:’’’’’’’’’
«
9linear/linear_model/race_indicator/weights/ReadVariableOpReadVariableOp1linear/linear_model/race_indicator/weights/part_0*
_output_shapes

:*
dtype0

*linear/linear_model/race_indicator/weightsIdentity9linear/linear_model/race_indicator/weights/ReadVariableOp*
T0*
_output_shapes

:
÷
Ilinear/linear_model/linear_model/linear_model/race_indicator/weighted_sumMatMulDlinear/linear_model/linear_model/linear_model/race_indicator/Reshape*linear/linear_model/race_indicator/weights*
T0*'
_output_shapes
:’’’’’’’’’

Slinear/linear_model/linear_model/linear_model/relationship_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’

Olinear/linear_model/linear_model/linear_model/relationship_indicator/ExpandDims
ExpandDims3transform/transform/inputs/inputs/relationship_copySlinear/linear_model/linear_model/linear_model/relationship_indicator/ExpandDims/dim*
T0*'
_output_shapes
:’’’’’’’’’
¤
clinear/linear_model/linear_model/linear_model/relationship_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B 
Ń
]linear/linear_model/linear_model/linear_model/relationship_indicator/to_sparse_input/NotEqualNotEqualOlinear/linear_model/linear_model/linear_model/relationship_indicator/ExpandDimsclinear/linear_model/linear_model/linear_model/relationship_indicator/to_sparse_input/ignore_value/x*
T0*'
_output_shapes
:’’’’’’’’’
ķ
\linear/linear_model/linear_model/linear_model/relationship_indicator/to_sparse_input/indicesWhere]linear/linear_model/linear_model/linear_model/relationship_indicator/to_sparse_input/NotEqual*'
_output_shapes
:’’’’’’’’’
Ś
[linear/linear_model/linear_model/linear_model/relationship_indicator/to_sparse_input/valuesGatherNdOlinear/linear_model/linear_model/linear_model/relationship_indicator/ExpandDims\linear/linear_model/linear_model/linear_model/relationship_indicator/to_sparse_input/indices*
Tindices0	*
Tparams0*#
_output_shapes
:’’’’’’’’’
ļ
`linear/linear_model/linear_model/linear_model/relationship_indicator/to_sparse_input/dense_shapeShapeOlinear/linear_model/linear_model/linear_model/relationship_indicator/ExpandDims*
T0*
_output_shapes
:*
out_type0	

nlinear/linear_model/linear_model/linear_model/relationship_indicator/relationship_lookup/hash_table/asset_pathConst"/device:CPU:**
_output_shapes
: *
dtype0*r
valueiBg BaD:\Spooky\A-Documents\Code\Differential Privacy\data\tmp31a1bx1_\transform_fn\assets\relationship
“
ilinear/linear_model/linear_model/linear_model/relationship_indicator/relationship_lookup/hash_table/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
’’’’’’’’’
Į
nlinear/linear_model/linear_model/linear_model/relationship_indicator/relationship_lookup/hash_table/hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_namevthash_table_D:\Spooky\A-Documents\Code\Differential Privacy\data\tmp31a1bx1_\transform_fn\assets\relationship_6_-2_-1*
value_dtype0	
Ö
linear/linear_model/linear_model/linear_model/relationship_indicator/relationship_lookup/hash_table/table_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV2nlinear/linear_model/linear_model/linear_model/relationship_indicator/relationship_lookup/hash_table/hash_tablenlinear/linear_model/linear_model/linear_model/relationship_indicator/relationship_lookup/hash_table/asset_path*
	key_indexž’’’’’’’’*
value_index’’’’’’’’’*

vocab_size
ń
hlinear/linear_model/linear_model/linear_model/relationship_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2nlinear/linear_model/linear_model/linear_model/relationship_indicator/relationship_lookup/hash_table/hash_table[linear/linear_model/linear_model/linear_model/relationship_indicator/to_sparse_input/valuesilinear/linear_model/linear_model/linear_model/relationship_indicator/relationship_lookup/hash_table/Const*	
Tin0*

Tout0	*#
_output_shapes
:’’’’’’’’’
«
`linear/linear_model/linear_model/linear_model/relationship_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
’’’’’’’’’
±
Rlinear/linear_model/linear_model/linear_model/relationship_indicator/SparseToDenseSparseToDense\linear/linear_model/linear_model/linear_model/relationship_indicator/to_sparse_input/indices`linear/linear_model/linear_model/linear_model/relationship_indicator/to_sparse_input/dense_shapehlinear/linear_model/linear_model/linear_model/relationship_indicator/hash_table_Lookup/LookupTableFindV2`linear/linear_model/linear_model/linear_model/relationship_indicator/SparseToDense/default_value*
T0	*
Tindices0	*'
_output_shapes
:’’’’’’’’’

Rlinear/linear_model/linear_model/linear_model/relationship_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?

Tlinear/linear_model/linear_model/linear_model/relationship_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    

Rlinear/linear_model/linear_model/linear_model/relationship_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :

Ulinear/linear_model/linear_model/linear_model/relationship_indicator/one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  ?

Vlinear/linear_model/linear_model/linear_model/relationship_indicator/one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
ć
Llinear/linear_model/linear_model/linear_model/relationship_indicator/one_hotOneHotRlinear/linear_model/linear_model/linear_model/relationship_indicator/SparseToDenseRlinear/linear_model/linear_model/linear_model/relationship_indicator/one_hot/depthUlinear/linear_model/linear_model/linear_model/relationship_indicator/one_hot/on_valueVlinear/linear_model/linear_model/linear_model/relationship_indicator/one_hot/off_value*
T0*+
_output_shapes
:’’’’’’’’’
­
Zlinear/linear_model/linear_model/linear_model/relationship_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
ž’’’’’’’’
«
Hlinear/linear_model/linear_model/linear_model/relationship_indicator/SumSumLlinear/linear_model/linear_model/linear_model/relationship_indicator/one_hotZlinear/linear_model/linear_model/linear_model/relationship_indicator/Sum/reduction_indices*
T0*'
_output_shapes
:’’’’’’’’’
Ā
Jlinear/linear_model/linear_model/linear_model/relationship_indicator/ShapeShapeHlinear/linear_model/linear_model/linear_model/relationship_indicator/Sum*
T0*
_output_shapes
:
¢
Xlinear/linear_model/linear_model/linear_model/relationship_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
¤
Zlinear/linear_model/linear_model/linear_model/relationship_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
¤
Zlinear/linear_model/linear_model/linear_model/relationship_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:

Rlinear/linear_model/linear_model/linear_model/relationship_indicator/strided_sliceStridedSliceJlinear/linear_model/linear_model/linear_model/relationship_indicator/ShapeXlinear/linear_model/linear_model/linear_model/relationship_indicator/strided_slice/stackZlinear/linear_model/linear_model/linear_model/relationship_indicator/strided_slice/stack_1Zlinear/linear_model/linear_model/linear_model/relationship_indicator/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

Tlinear/linear_model/linear_model/linear_model/relationship_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
²
Rlinear/linear_model/linear_model/linear_model/relationship_indicator/Reshape/shapePackRlinear/linear_model/linear_model/linear_model/relationship_indicator/strided_sliceTlinear/linear_model/linear_model/linear_model/relationship_indicator/Reshape/shape/1*
N*
T0*
_output_shapes
:
§
Llinear/linear_model/linear_model/linear_model/relationship_indicator/ReshapeReshapeHlinear/linear_model/linear_model/linear_model/relationship_indicator/SumRlinear/linear_model/linear_model/linear_model/relationship_indicator/Reshape/shape*
T0*'
_output_shapes
:’’’’’’’’’
»
Alinear/linear_model/relationship_indicator/weights/ReadVariableOpReadVariableOp9linear/linear_model/relationship_indicator/weights/part_0*
_output_shapes

:*
dtype0
Ŗ
2linear/linear_model/relationship_indicator/weightsIdentityAlinear/linear_model/relationship_indicator/weights/ReadVariableOp*
T0*
_output_shapes

:

Qlinear/linear_model/linear_model/linear_model/relationship_indicator/weighted_sumMatMulLlinear/linear_model/linear_model/linear_model/relationship_indicator/Reshape2linear/linear_model/relationship_indicator/weights*
T0*'
_output_shapes
:’’’’’’’’’

Jlinear/linear_model/linear_model/linear_model/sex_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’
ž
Flinear/linear_model/linear_model/linear_model/sex_indicator/ExpandDims
ExpandDims*transform/transform/inputs/inputs/sex_copyJlinear/linear_model/linear_model/linear_model/sex_indicator/ExpandDims/dim*
T0*'
_output_shapes
:’’’’’’’’’

Zlinear/linear_model/linear_model/linear_model/sex_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B 
¶
Tlinear/linear_model/linear_model/linear_model/sex_indicator/to_sparse_input/NotEqualNotEqualFlinear/linear_model/linear_model/linear_model/sex_indicator/ExpandDimsZlinear/linear_model/linear_model/linear_model/sex_indicator/to_sparse_input/ignore_value/x*
T0*'
_output_shapes
:’’’’’’’’’
Ū
Slinear/linear_model/linear_model/linear_model/sex_indicator/to_sparse_input/indicesWhereTlinear/linear_model/linear_model/linear_model/sex_indicator/to_sparse_input/NotEqual*'
_output_shapes
:’’’’’’’’’
æ
Rlinear/linear_model/linear_model/linear_model/sex_indicator/to_sparse_input/valuesGatherNdFlinear/linear_model/linear_model/linear_model/sex_indicator/ExpandDimsSlinear/linear_model/linear_model/linear_model/sex_indicator/to_sparse_input/indices*
Tindices0	*
Tparams0*#
_output_shapes
:’’’’’’’’’
Ż
Wlinear/linear_model/linear_model/linear_model/sex_indicator/to_sparse_input/dense_shapeShapeFlinear/linear_model/linear_model/linear_model/sex_indicator/ExpandDims*
T0*
_output_shapes
:*
out_type0	

\linear/linear_model/linear_model/linear_model/sex_indicator/sex_lookup/hash_table/asset_pathConst"/device:CPU:**
_output_shapes
: *
dtype0*i
value`B^ BXD:\Spooky\A-Documents\Code\Differential Privacy\data\tmp31a1bx1_\transform_fn\assets\sex
¢
Wlinear/linear_model/linear_model/linear_model/sex_indicator/sex_lookup/hash_table/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
’’’’’’’’’
„
\linear/linear_model/linear_model/linear_model/sex_indicator/sex_lookup/hash_table/hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*|
shared_namemkhash_table_D:\Spooky\A-Documents\Code\Differential Privacy\data\tmp31a1bx1_\transform_fn\assets\sex_2_-2_-1*
value_dtype0	

zlinear/linear_model/linear_model/linear_model/sex_indicator/sex_lookup/hash_table/table_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV2\linear/linear_model/linear_model/linear_model/sex_indicator/sex_lookup/hash_table/hash_table\linear/linear_model/linear_model/linear_model/sex_indicator/sex_lookup/hash_table/asset_path*
	key_indexž’’’’’’’’*
value_index’’’’’’’’’*

vocab_size
»
_linear/linear_model/linear_model/linear_model/sex_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2\linear/linear_model/linear_model/linear_model/sex_indicator/sex_lookup/hash_table/hash_tableRlinear/linear_model/linear_model/linear_model/sex_indicator/to_sparse_input/valuesWlinear/linear_model/linear_model/linear_model/sex_indicator/sex_lookup/hash_table/Const*	
Tin0*

Tout0	*#
_output_shapes
:’’’’’’’’’
¢
Wlinear/linear_model/linear_model/linear_model/sex_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
’’’’’’’’’

Ilinear/linear_model/linear_model/linear_model/sex_indicator/SparseToDenseSparseToDenseSlinear/linear_model/linear_model/linear_model/sex_indicator/to_sparse_input/indicesWlinear/linear_model/linear_model/linear_model/sex_indicator/to_sparse_input/dense_shape_linear/linear_model/linear_model/linear_model/sex_indicator/hash_table_Lookup/LookupTableFindV2Wlinear/linear_model/linear_model/linear_model/sex_indicator/SparseToDense/default_value*
T0	*
Tindices0	*'
_output_shapes
:’’’’’’’’’

Ilinear/linear_model/linear_model/linear_model/sex_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?

Klinear/linear_model/linear_model/linear_model/sex_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    

Ilinear/linear_model/linear_model/linear_model/sex_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :

Llinear/linear_model/linear_model/linear_model/sex_indicator/one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  ?

Mlinear/linear_model/linear_model/linear_model/sex_indicator/one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
¶
Clinear/linear_model/linear_model/linear_model/sex_indicator/one_hotOneHotIlinear/linear_model/linear_model/linear_model/sex_indicator/SparseToDenseIlinear/linear_model/linear_model/linear_model/sex_indicator/one_hot/depthLlinear/linear_model/linear_model/linear_model/sex_indicator/one_hot/on_valueMlinear/linear_model/linear_model/linear_model/sex_indicator/one_hot/off_value*
T0*+
_output_shapes
:’’’’’’’’’
¤
Qlinear/linear_model/linear_model/linear_model/sex_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
ž’’’’’’’’

?linear/linear_model/linear_model/linear_model/sex_indicator/SumSumClinear/linear_model/linear_model/linear_model/sex_indicator/one_hotQlinear/linear_model/linear_model/linear_model/sex_indicator/Sum/reduction_indices*
T0*'
_output_shapes
:’’’’’’’’’
°
Alinear/linear_model/linear_model/linear_model/sex_indicator/ShapeShape?linear/linear_model/linear_model/linear_model/sex_indicator/Sum*
T0*
_output_shapes
:

Olinear/linear_model/linear_model/linear_model/sex_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 

Qlinear/linear_model/linear_model/linear_model/sex_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

Qlinear/linear_model/linear_model/linear_model/sex_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Ł
Ilinear/linear_model/linear_model/linear_model/sex_indicator/strided_sliceStridedSliceAlinear/linear_model/linear_model/linear_model/sex_indicator/ShapeOlinear/linear_model/linear_model/linear_model/sex_indicator/strided_slice/stackQlinear/linear_model/linear_model/linear_model/sex_indicator/strided_slice/stack_1Qlinear/linear_model/linear_model/linear_model/sex_indicator/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

Klinear/linear_model/linear_model/linear_model/sex_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :

Ilinear/linear_model/linear_model/linear_model/sex_indicator/Reshape/shapePackIlinear/linear_model/linear_model/linear_model/sex_indicator/strided_sliceKlinear/linear_model/linear_model/linear_model/sex_indicator/Reshape/shape/1*
N*
T0*
_output_shapes
:

Clinear/linear_model/linear_model/linear_model/sex_indicator/ReshapeReshape?linear/linear_model/linear_model/linear_model/sex_indicator/SumIlinear/linear_model/linear_model/linear_model/sex_indicator/Reshape/shape*
T0*'
_output_shapes
:’’’’’’’’’
©
8linear/linear_model/sex_indicator/weights/ReadVariableOpReadVariableOp0linear/linear_model/sex_indicator/weights/part_0*
_output_shapes

:*
dtype0

)linear/linear_model/sex_indicator/weightsIdentity8linear/linear_model/sex_indicator/weights/ReadVariableOp*
T0*
_output_shapes

:
ō
Hlinear/linear_model/linear_model/linear_model/sex_indicator/weighted_sumMatMulClinear/linear_model/linear_model/linear_model/sex_indicator/Reshape)linear/linear_model/sex_indicator/weights*
T0*'
_output_shapes
:’’’’’’’’’

Plinear/linear_model/linear_model/linear_model/workclass_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’

Llinear/linear_model/linear_model/linear_model/workclass_indicator/ExpandDims
ExpandDims0transform/transform/inputs/inputs/workclass_copyPlinear/linear_model/linear_model/linear_model/workclass_indicator/ExpandDims/dim*
T0*'
_output_shapes
:’’’’’’’’’
”
`linear/linear_model/linear_model/linear_model/workclass_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B 
Č
Zlinear/linear_model/linear_model/linear_model/workclass_indicator/to_sparse_input/NotEqualNotEqualLlinear/linear_model/linear_model/linear_model/workclass_indicator/ExpandDims`linear/linear_model/linear_model/linear_model/workclass_indicator/to_sparse_input/ignore_value/x*
T0*'
_output_shapes
:’’’’’’’’’
ē
Ylinear/linear_model/linear_model/linear_model/workclass_indicator/to_sparse_input/indicesWhereZlinear/linear_model/linear_model/linear_model/workclass_indicator/to_sparse_input/NotEqual*'
_output_shapes
:’’’’’’’’’
Ń
Xlinear/linear_model/linear_model/linear_model/workclass_indicator/to_sparse_input/valuesGatherNdLlinear/linear_model/linear_model/linear_model/workclass_indicator/ExpandDimsYlinear/linear_model/linear_model/linear_model/workclass_indicator/to_sparse_input/indices*
Tindices0	*
Tparams0*#
_output_shapes
:’’’’’’’’’
é
]linear/linear_model/linear_model/linear_model/workclass_indicator/to_sparse_input/dense_shapeShapeLlinear/linear_model/linear_model/linear_model/workclass_indicator/ExpandDims*
T0*
_output_shapes
:*
out_type0	

hlinear/linear_model/linear_model/linear_model/workclass_indicator/workclass_lookup/hash_table/asset_pathConst"/device:CPU:**
_output_shapes
: *
dtype0*o
valuefBd B^D:\Spooky\A-Documents\Code\Differential Privacy\data\tmp31a1bx1_\transform_fn\assets\workclass
®
clinear/linear_model/linear_model/linear_model/workclass_indicator/workclass_lookup/hash_table/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
’’’’’’’’’
ø
hlinear/linear_model/linear_model/linear_model/workclass_indicator/workclass_lookup/hash_table/hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_namesqhash_table_D:\Spooky\A-Documents\Code\Differential Privacy\data\tmp31a1bx1_\transform_fn\assets\workclass_9_-2_-1*
value_dtype0	
Ä
linear/linear_model/linear_model/linear_model/workclass_indicator/workclass_lookup/hash_table/table_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV2hlinear/linear_model/linear_model/linear_model/workclass_indicator/workclass_lookup/hash_table/hash_tablehlinear/linear_model/linear_model/linear_model/workclass_indicator/workclass_lookup/hash_table/asset_path*
	key_indexž’’’’’’’’*
value_index’’’’’’’’’*

vocab_size	
ß
elinear/linear_model/linear_model/linear_model/workclass_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2hlinear/linear_model/linear_model/linear_model/workclass_indicator/workclass_lookup/hash_table/hash_tableXlinear/linear_model/linear_model/linear_model/workclass_indicator/to_sparse_input/valuesclinear/linear_model/linear_model/linear_model/workclass_indicator/workclass_lookup/hash_table/Const*	
Tin0*

Tout0	*#
_output_shapes
:’’’’’’’’’
Ø
]linear/linear_model/linear_model/linear_model/workclass_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
’’’’’’’’’
¢
Olinear/linear_model/linear_model/linear_model/workclass_indicator/SparseToDenseSparseToDenseYlinear/linear_model/linear_model/linear_model/workclass_indicator/to_sparse_input/indices]linear/linear_model/linear_model/linear_model/workclass_indicator/to_sparse_input/dense_shapeelinear/linear_model/linear_model/linear_model/workclass_indicator/hash_table_Lookup/LookupTableFindV2]linear/linear_model/linear_model/linear_model/workclass_indicator/SparseToDense/default_value*
T0	*
Tindices0	*'
_output_shapes
:’’’’’’’’’

Olinear/linear_model/linear_model/linear_model/workclass_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?

Qlinear/linear_model/linear_model/linear_model/workclass_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    

Olinear/linear_model/linear_model/linear_model/workclass_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :	

Rlinear/linear_model/linear_model/linear_model/workclass_indicator/one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  ?

Slinear/linear_model/linear_model/linear_model/workclass_indicator/one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
Ō
Ilinear/linear_model/linear_model/linear_model/workclass_indicator/one_hotOneHotOlinear/linear_model/linear_model/linear_model/workclass_indicator/SparseToDenseOlinear/linear_model/linear_model/linear_model/workclass_indicator/one_hot/depthRlinear/linear_model/linear_model/linear_model/workclass_indicator/one_hot/on_valueSlinear/linear_model/linear_model/linear_model/workclass_indicator/one_hot/off_value*
T0*+
_output_shapes
:’’’’’’’’’	
Ŗ
Wlinear/linear_model/linear_model/linear_model/workclass_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
ž’’’’’’’’
¢
Elinear/linear_model/linear_model/linear_model/workclass_indicator/SumSumIlinear/linear_model/linear_model/linear_model/workclass_indicator/one_hotWlinear/linear_model/linear_model/linear_model/workclass_indicator/Sum/reduction_indices*
T0*'
_output_shapes
:’’’’’’’’’	
¼
Glinear/linear_model/linear_model/linear_model/workclass_indicator/ShapeShapeElinear/linear_model/linear_model/linear_model/workclass_indicator/Sum*
T0*
_output_shapes
:

Ulinear/linear_model/linear_model/linear_model/workclass_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
”
Wlinear/linear_model/linear_model/linear_model/workclass_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
”
Wlinear/linear_model/linear_model/linear_model/workclass_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
÷
Olinear/linear_model/linear_model/linear_model/workclass_indicator/strided_sliceStridedSliceGlinear/linear_model/linear_model/linear_model/workclass_indicator/ShapeUlinear/linear_model/linear_model/linear_model/workclass_indicator/strided_slice/stackWlinear/linear_model/linear_model/linear_model/workclass_indicator/strided_slice/stack_1Wlinear/linear_model/linear_model/linear_model/workclass_indicator/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

Qlinear/linear_model/linear_model/linear_model/workclass_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :	
©
Olinear/linear_model/linear_model/linear_model/workclass_indicator/Reshape/shapePackOlinear/linear_model/linear_model/linear_model/workclass_indicator/strided_sliceQlinear/linear_model/linear_model/linear_model/workclass_indicator/Reshape/shape/1*
N*
T0*
_output_shapes
:

Ilinear/linear_model/linear_model/linear_model/workclass_indicator/ReshapeReshapeElinear/linear_model/linear_model/linear_model/workclass_indicator/SumOlinear/linear_model/linear_model/linear_model/workclass_indicator/Reshape/shape*
T0*'
_output_shapes
:’’’’’’’’’	
µ
>linear/linear_model/workclass_indicator/weights/ReadVariableOpReadVariableOp6linear/linear_model/workclass_indicator/weights/part_0*
_output_shapes

:	*
dtype0
¤
/linear/linear_model/workclass_indicator/weightsIdentity>linear/linear_model/workclass_indicator/weights/ReadVariableOp*
T0*
_output_shapes

:	

Nlinear/linear_model/linear_model/linear_model/workclass_indicator/weighted_sumMatMulIlinear/linear_model/linear_model/linear_model/workclass_indicator/Reshape/linear/linear_model/workclass_indicator/weights*
T0*'
_output_shapes
:’’’’’’’’’
„
Blinear/linear_model/linear_model/linear_model/weighted_sum_no_biasAddN>linear/linear_model/linear_model/linear_model/age/weighted_sumGlinear/linear_model/linear_model/linear_model/capital-gain/weighted_sumGlinear/linear_model/linear_model/linear_model/capital-loss/weighted_sumNlinear/linear_model/linear_model/linear_model/education_indicator/weighted_sumIlinear/linear_model/linear_model/linear_model/hours-per-week/weighted_sumSlinear/linear_model/linear_model/linear_model/marital-status_indicator/weighted_sumSlinear/linear_model/linear_model/linear_model/native-country_indicator/weighted_sumOlinear/linear_model/linear_model/linear_model/occupation_indicator/weighted_sumIlinear/linear_model/linear_model/linear_model/race_indicator/weighted_sumQlinear/linear_model/linear_model/linear_model/relationship_indicator/weighted_sumHlinear/linear_model/linear_model/linear_model/sex_indicator/weighted_sumNlinear/linear_model/linear_model/linear_model/workclass_indicator/weighted_sum*
N*
T0*'
_output_shapes
:’’’’’’’’’

/linear/linear_model/bias_weights/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*
_output_shapes
:*
dtype0

 linear/linear_model/bias_weightsIdentity/linear/linear_model/bias_weights/ReadVariableOp*
T0*
_output_shapes
:
Ż
:linear/linear_model/linear_model/linear_model/weighted_sumBiasAddBlinear/linear_model/linear_model/linear_model/weighted_sum_no_bias linear/linear_model/bias_weights*
T0*'
_output_shapes
:’’’’’’’’’
y
linear/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*
_output_shapes
:*
dtype0
d
linear/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
f
linear/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
f
linear/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Ł
linear/strided_sliceStridedSlicelinear/ReadVariableOplinear/strided_slice/stacklinear/strided_slice/stack_1linear/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
\
linear/bias/tagsConst*
_output_shapes
: *
dtype0*
valueB Blinear/bias
e
linear/biasScalarSummarylinear/bias/tagslinear/strided_slice*
T0*
_output_shapes
: 

3linear/zero_fraction/total_size/Size/ReadVariableOpReadVariableOp&linear/linear_model/age/weights/part_0*
_output_shapes

:*
dtype0
f
$linear/zero_fraction/total_size/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R
„
5linear/zero_fraction/total_size/Size_1/ReadVariableOpReadVariableOp/linear/linear_model/capital-gain/weights/part_0*
_output_shapes

:*
dtype0
h
&linear/zero_fraction/total_size/Size_1Const*
_output_shapes
: *
dtype0	*
value	B	 R
„
5linear/zero_fraction/total_size/Size_2/ReadVariableOpReadVariableOp/linear/linear_model/capital-loss/weights/part_0*
_output_shapes

:*
dtype0
h
&linear/zero_fraction/total_size/Size_2Const*
_output_shapes
: *
dtype0	*
value	B	 R
¬
5linear/zero_fraction/total_size/Size_3/ReadVariableOpReadVariableOp6linear/linear_model/education_indicator/weights/part_0*
_output_shapes

:*
dtype0
h
&linear/zero_fraction/total_size/Size_3Const*
_output_shapes
: *
dtype0	*
value	B	 R
§
5linear/zero_fraction/total_size/Size_4/ReadVariableOpReadVariableOp1linear/linear_model/hours-per-week/weights/part_0*
_output_shapes

:*
dtype0
h
&linear/zero_fraction/total_size/Size_4Const*
_output_shapes
: *
dtype0	*
value	B	 R
±
5linear/zero_fraction/total_size/Size_5/ReadVariableOpReadVariableOp;linear/linear_model/marital-status_indicator/weights/part_0*
_output_shapes

:*
dtype0
h
&linear/zero_fraction/total_size/Size_5Const*
_output_shapes
: *
dtype0	*
value	B	 R
±
5linear/zero_fraction/total_size/Size_6/ReadVariableOpReadVariableOp;linear/linear_model/native-country_indicator/weights/part_0*
_output_shapes

:**
dtype0
h
&linear/zero_fraction/total_size/Size_6Const*
_output_shapes
: *
dtype0	*
value	B	 R*
­
5linear/zero_fraction/total_size/Size_7/ReadVariableOpReadVariableOp7linear/linear_model/occupation_indicator/weights/part_0*
_output_shapes

:*
dtype0
h
&linear/zero_fraction/total_size/Size_7Const*
_output_shapes
: *
dtype0	*
value	B	 R
§
5linear/zero_fraction/total_size/Size_8/ReadVariableOpReadVariableOp1linear/linear_model/race_indicator/weights/part_0*
_output_shapes

:*
dtype0
h
&linear/zero_fraction/total_size/Size_8Const*
_output_shapes
: *
dtype0	*
value	B	 R
Æ
5linear/zero_fraction/total_size/Size_9/ReadVariableOpReadVariableOp9linear/linear_model/relationship_indicator/weights/part_0*
_output_shapes

:*
dtype0
h
&linear/zero_fraction/total_size/Size_9Const*
_output_shapes
: *
dtype0	*
value	B	 R
§
6linear/zero_fraction/total_size/Size_10/ReadVariableOpReadVariableOp0linear/linear_model/sex_indicator/weights/part_0*
_output_shapes

:*
dtype0
i
'linear/zero_fraction/total_size/Size_10Const*
_output_shapes
: *
dtype0	*
value	B	 R
­
6linear/zero_fraction/total_size/Size_11/ReadVariableOpReadVariableOp6linear/linear_model/workclass_indicator/weights/part_0*
_output_shapes

:	*
dtype0
i
'linear/zero_fraction/total_size/Size_11Const*
_output_shapes
: *
dtype0	*
value	B	 R	
¶
$linear/zero_fraction/total_size/AddNAddN$linear/zero_fraction/total_size/Size&linear/zero_fraction/total_size/Size_1&linear/zero_fraction/total_size/Size_2&linear/zero_fraction/total_size/Size_3&linear/zero_fraction/total_size/Size_4&linear/zero_fraction/total_size/Size_5&linear/zero_fraction/total_size/Size_6&linear/zero_fraction/total_size/Size_7&linear/zero_fraction/total_size/Size_8&linear/zero_fraction/total_size/Size_9'linear/zero_fraction/total_size/Size_10'linear/zero_fraction/total_size/Size_11*
N*
T0	*
_output_shapes
: 
g
%linear/zero_fraction/total_zero/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 

%linear/zero_fraction/total_zero/EqualEqual$linear/zero_fraction/total_size/Size%linear/zero_fraction/total_zero/Const*
T0	*
_output_shapes
: 
³
*linear/zero_fraction/total_zero/zero_countIf%linear/zero_fraction/total_zero/Equal&linear/linear_model/age/weights/part_0$linear/zero_fraction/total_size/Size*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *H
else_branch9R7
5linear_zero_fraction_total_zero_zero_count_false_4947*
output_shapes
: *G
then_branch8R6
4linear_zero_fraction_total_zero_zero_count_true_4946

3linear/zero_fraction/total_zero/zero_count/IdentityIdentity*linear/zero_fraction/total_zero/zero_count*
T0*
_output_shapes
: 
i
'linear/zero_fraction/total_zero/Const_1Const*
_output_shapes
: *
dtype0	*
value	B	 R 
¢
'linear/zero_fraction/total_zero/Equal_1Equal&linear/zero_fraction/total_size/Size_1'linear/zero_fraction/total_zero/Const_1*
T0	*
_output_shapes
: 
Ę
,linear/zero_fraction/total_zero/zero_count_1If'linear/zero_fraction/total_zero/Equal_1/linear/linear_model/capital-gain/weights/part_0&linear/zero_fraction/total_size/Size_1*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *J
else_branch;R9
7linear_zero_fraction_total_zero_zero_count_1_false_4990*
output_shapes
: *I
then_branch:R8
6linear_zero_fraction_total_zero_zero_count_1_true_4989

5linear/zero_fraction/total_zero/zero_count_1/IdentityIdentity,linear/zero_fraction/total_zero/zero_count_1*
T0*
_output_shapes
: 
i
'linear/zero_fraction/total_zero/Const_2Const*
_output_shapes
: *
dtype0	*
value	B	 R 
¢
'linear/zero_fraction/total_zero/Equal_2Equal&linear/zero_fraction/total_size/Size_2'linear/zero_fraction/total_zero/Const_2*
T0	*
_output_shapes
: 
Ę
,linear/zero_fraction/total_zero/zero_count_2If'linear/zero_fraction/total_zero/Equal_2/linear/linear_model/capital-loss/weights/part_0&linear/zero_fraction/total_size/Size_2*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *J
else_branch;R9
7linear_zero_fraction_total_zero_zero_count_2_false_5033*
output_shapes
: *I
then_branch:R8
6linear_zero_fraction_total_zero_zero_count_2_true_5032

5linear/zero_fraction/total_zero/zero_count_2/IdentityIdentity,linear/zero_fraction/total_zero/zero_count_2*
T0*
_output_shapes
: 
i
'linear/zero_fraction/total_zero/Const_3Const*
_output_shapes
: *
dtype0	*
value	B	 R 
¢
'linear/zero_fraction/total_zero/Equal_3Equal&linear/zero_fraction/total_size/Size_3'linear/zero_fraction/total_zero/Const_3*
T0	*
_output_shapes
: 
Ķ
,linear/zero_fraction/total_zero/zero_count_3If'linear/zero_fraction/total_zero/Equal_36linear/linear_model/education_indicator/weights/part_0&linear/zero_fraction/total_size/Size_3*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *J
else_branch;R9
7linear_zero_fraction_total_zero_zero_count_3_false_5076*
output_shapes
: *I
then_branch:R8
6linear_zero_fraction_total_zero_zero_count_3_true_5075

5linear/zero_fraction/total_zero/zero_count_3/IdentityIdentity,linear/zero_fraction/total_zero/zero_count_3*
T0*
_output_shapes
: 
i
'linear/zero_fraction/total_zero/Const_4Const*
_output_shapes
: *
dtype0	*
value	B	 R 
¢
'linear/zero_fraction/total_zero/Equal_4Equal&linear/zero_fraction/total_size/Size_4'linear/zero_fraction/total_zero/Const_4*
T0	*
_output_shapes
: 
Č
,linear/zero_fraction/total_zero/zero_count_4If'linear/zero_fraction/total_zero/Equal_41linear/linear_model/hours-per-week/weights/part_0&linear/zero_fraction/total_size/Size_4*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *J
else_branch;R9
7linear_zero_fraction_total_zero_zero_count_4_false_5119*
output_shapes
: *I
then_branch:R8
6linear_zero_fraction_total_zero_zero_count_4_true_5118

5linear/zero_fraction/total_zero/zero_count_4/IdentityIdentity,linear/zero_fraction/total_zero/zero_count_4*
T0*
_output_shapes
: 
i
'linear/zero_fraction/total_zero/Const_5Const*
_output_shapes
: *
dtype0	*
value	B	 R 
¢
'linear/zero_fraction/total_zero/Equal_5Equal&linear/zero_fraction/total_size/Size_5'linear/zero_fraction/total_zero/Const_5*
T0	*
_output_shapes
: 
Ņ
,linear/zero_fraction/total_zero/zero_count_5If'linear/zero_fraction/total_zero/Equal_5;linear/linear_model/marital-status_indicator/weights/part_0&linear/zero_fraction/total_size/Size_5*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *J
else_branch;R9
7linear_zero_fraction_total_zero_zero_count_5_false_5162*
output_shapes
: *I
then_branch:R8
6linear_zero_fraction_total_zero_zero_count_5_true_5161

5linear/zero_fraction/total_zero/zero_count_5/IdentityIdentity,linear/zero_fraction/total_zero/zero_count_5*
T0*
_output_shapes
: 
i
'linear/zero_fraction/total_zero/Const_6Const*
_output_shapes
: *
dtype0	*
value	B	 R 
¢
'linear/zero_fraction/total_zero/Equal_6Equal&linear/zero_fraction/total_size/Size_6'linear/zero_fraction/total_zero/Const_6*
T0	*
_output_shapes
: 
Ņ
,linear/zero_fraction/total_zero/zero_count_6If'linear/zero_fraction/total_zero/Equal_6;linear/linear_model/native-country_indicator/weights/part_0&linear/zero_fraction/total_size/Size_6*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *J
else_branch;R9
7linear_zero_fraction_total_zero_zero_count_6_false_5205*
output_shapes
: *I
then_branch:R8
6linear_zero_fraction_total_zero_zero_count_6_true_5204

5linear/zero_fraction/total_zero/zero_count_6/IdentityIdentity,linear/zero_fraction/total_zero/zero_count_6*
T0*
_output_shapes
: 
i
'linear/zero_fraction/total_zero/Const_7Const*
_output_shapes
: *
dtype0	*
value	B	 R 
¢
'linear/zero_fraction/total_zero/Equal_7Equal&linear/zero_fraction/total_size/Size_7'linear/zero_fraction/total_zero/Const_7*
T0	*
_output_shapes
: 
Ī
,linear/zero_fraction/total_zero/zero_count_7If'linear/zero_fraction/total_zero/Equal_77linear/linear_model/occupation_indicator/weights/part_0&linear/zero_fraction/total_size/Size_7*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *J
else_branch;R9
7linear_zero_fraction_total_zero_zero_count_7_false_5248*
output_shapes
: *I
then_branch:R8
6linear_zero_fraction_total_zero_zero_count_7_true_5247

5linear/zero_fraction/total_zero/zero_count_7/IdentityIdentity,linear/zero_fraction/total_zero/zero_count_7*
T0*
_output_shapes
: 
i
'linear/zero_fraction/total_zero/Const_8Const*
_output_shapes
: *
dtype0	*
value	B	 R 
¢
'linear/zero_fraction/total_zero/Equal_8Equal&linear/zero_fraction/total_size/Size_8'linear/zero_fraction/total_zero/Const_8*
T0	*
_output_shapes
: 
Č
,linear/zero_fraction/total_zero/zero_count_8If'linear/zero_fraction/total_zero/Equal_81linear/linear_model/race_indicator/weights/part_0&linear/zero_fraction/total_size/Size_8*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *J
else_branch;R9
7linear_zero_fraction_total_zero_zero_count_8_false_5291*
output_shapes
: *I
then_branch:R8
6linear_zero_fraction_total_zero_zero_count_8_true_5290

5linear/zero_fraction/total_zero/zero_count_8/IdentityIdentity,linear/zero_fraction/total_zero/zero_count_8*
T0*
_output_shapes
: 
i
'linear/zero_fraction/total_zero/Const_9Const*
_output_shapes
: *
dtype0	*
value	B	 R 
¢
'linear/zero_fraction/total_zero/Equal_9Equal&linear/zero_fraction/total_size/Size_9'linear/zero_fraction/total_zero/Const_9*
T0	*
_output_shapes
: 
Š
,linear/zero_fraction/total_zero/zero_count_9If'linear/zero_fraction/total_zero/Equal_99linear/linear_model/relationship_indicator/weights/part_0&linear/zero_fraction/total_size/Size_9*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *J
else_branch;R9
7linear_zero_fraction_total_zero_zero_count_9_false_5334*
output_shapes
: *I
then_branch:R8
6linear_zero_fraction_total_zero_zero_count_9_true_5333

5linear/zero_fraction/total_zero/zero_count_9/IdentityIdentity,linear/zero_fraction/total_zero/zero_count_9*
T0*
_output_shapes
: 
j
(linear/zero_fraction/total_zero/Const_10Const*
_output_shapes
: *
dtype0	*
value	B	 R 
„
(linear/zero_fraction/total_zero/Equal_10Equal'linear/zero_fraction/total_size/Size_10(linear/zero_fraction/total_zero/Const_10*
T0	*
_output_shapes
: 
Ģ
-linear/zero_fraction/total_zero/zero_count_10If(linear/zero_fraction/total_zero/Equal_100linear/linear_model/sex_indicator/weights/part_0'linear/zero_fraction/total_size/Size_10*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *K
else_branch<R:
8linear_zero_fraction_total_zero_zero_count_10_false_5377*
output_shapes
: *J
then_branch;R9
7linear_zero_fraction_total_zero_zero_count_10_true_5376

6linear/zero_fraction/total_zero/zero_count_10/IdentityIdentity-linear/zero_fraction/total_zero/zero_count_10*
T0*
_output_shapes
: 
j
(linear/zero_fraction/total_zero/Const_11Const*
_output_shapes
: *
dtype0	*
value	B	 R 
„
(linear/zero_fraction/total_zero/Equal_11Equal'linear/zero_fraction/total_size/Size_11(linear/zero_fraction/total_zero/Const_11*
T0	*
_output_shapes
: 
Ņ
-linear/zero_fraction/total_zero/zero_count_11If(linear/zero_fraction/total_zero/Equal_116linear/linear_model/workclass_indicator/weights/part_0'linear/zero_fraction/total_size/Size_11*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *K
else_branch<R:
8linear_zero_fraction_total_zero_zero_count_11_false_5420*
output_shapes
: *J
then_branch;R9
7linear_zero_fraction_total_zero_zero_count_11_true_5419

6linear/zero_fraction/total_zero/zero_count_11/IdentityIdentity-linear/zero_fraction/total_zero/zero_count_11*
T0*
_output_shapes
: 
ź
$linear/zero_fraction/total_zero/AddNAddN3linear/zero_fraction/total_zero/zero_count/Identity5linear/zero_fraction/total_zero/zero_count_1/Identity5linear/zero_fraction/total_zero/zero_count_2/Identity5linear/zero_fraction/total_zero/zero_count_3/Identity5linear/zero_fraction/total_zero/zero_count_4/Identity5linear/zero_fraction/total_zero/zero_count_5/Identity5linear/zero_fraction/total_zero/zero_count_6/Identity5linear/zero_fraction/total_zero/zero_count_7/Identity5linear/zero_fraction/total_zero/zero_count_8/Identity5linear/zero_fraction/total_zero/zero_count_9/Identity6linear/zero_fraction/total_zero/zero_count_10/Identity6linear/zero_fraction/total_zero/zero_count_11/Identity*
N*
T0*
_output_shapes
: 

)linear/zero_fraction/compute/float32_sizeCast$linear/zero_fraction/total_size/AddN*

DstT0*

SrcT0	*
_output_shapes
: 
”
$linear/zero_fraction/compute/truedivRealDiv$linear/zero_fraction/total_zero/AddN)linear/zero_fraction/compute/float32_size*
T0*
_output_shapes
: 
|
)linear/zero_fraction/zero_fraction_or_nanIdentity$linear/zero_fraction/compute/truediv*
T0*
_output_shapes
: 

$linear/fraction_of_zero_weights/tagsConst*
_output_shapes
: *
dtype0*0
value'B% Blinear/fraction_of_zero_weights
¢
linear/fraction_of_zero_weightsScalarSummary$linear/fraction_of_zero_weights/tags)linear/zero_fraction/zero_fraction_or_nan*
T0*
_output_shapes
: 
R
linear/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
T
linear/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *ĶĢ?

$linear/head/predictions/logits/ShapeShape:linear/linear_model/linear_model/linear_model/weighted_sum*
T0*
_output_shapes
:
z
8linear/head/predictions/logits/assert_rank_at_least/rankConst*
_output_shapes
: *
dtype0*
value	B :
j
blinear/head/predictions/logits/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
[
Slinear/head/predictions/logits/assert_rank_at_least/static_checks_determined_all_okNoOp

 linear/head/predictions/logisticSigmoid:linear/linear_model/linear_model/linear_model/weighted_sum*
T0*'
_output_shapes
:’’’’’’’’’

"linear/head/predictions/zeros_like	ZerosLike:linear/linear_model/linear_model/linear_model/weighted_sum*
T0*'
_output_shapes
:’’’’’’’’’
x
-linear/head/predictions/two_class_logits/axisConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’
ž
(linear/head/predictions/two_class_logitsConcatV2"linear/head/predictions/zeros_like:linear/linear_model/linear_model/linear_model/weighted_sum-linear/head/predictions/two_class_logits/axis*
N*
T0*'
_output_shapes
:’’’’’’’’’

%linear/head/predictions/probabilitiesSoftmax(linear/head/predictions/two_class_logits*
T0*'
_output_shapes
:’’’’’’’’’
v
+linear/head/predictions/class_ids/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’
°
!linear/head/predictions/class_idsArgMax(linear/head/predictions/two_class_logits+linear/head/predictions/class_ids/dimension*
T0*#
_output_shapes
:’’’’’’’’’
q
&linear/head/predictions/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’
­
"linear/head/predictions/ExpandDims
ExpandDims!linear/head/predictions/class_ids&linear/head/predictions/ExpandDims/dim*
T0	*'
_output_shapes
:’’’’’’’’’

linear/head/predictions/ShapeShape:linear/linear_model/linear_model/linear_model/weighted_sum*
T0*
_output_shapes
:
u
+linear/head/predictions/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
w
-linear/head/predictions/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
w
-linear/head/predictions/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
„
%linear/head/predictions/strided_sliceStridedSlicelinear/head/predictions/Shape+linear/head/predictions/strided_slice/stack-linear/head/predictions/strided_slice/stack_1-linear/head/predictions/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
e
#linear/head/predictions/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
e
#linear/head/predictions/range/limitConst*
_output_shapes
: *
dtype0*
value	B :
e
#linear/head/predictions/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :
±
linear/head/predictions/rangeRange#linear/head/predictions/range/start#linear/head/predictions/range/limit#linear/head/predictions/range/delta*
_output_shapes
:
j
(linear/head/predictions/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 
¤
$linear/head/predictions/ExpandDims_1
ExpandDimslinear/head/predictions/range(linear/head/predictions/ExpandDims_1/dim*
T0*
_output_shapes

:
j
(linear/head/predictions/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :
­
&linear/head/predictions/Tile/multiplesPack%linear/head/predictions/strided_slice(linear/head/predictions/Tile/multiples/1*
N*
T0*
_output_shapes
:
¤
linear/head/predictions/TileTile$linear/head/predictions/ExpandDims_1&linear/head/predictions/Tile/multiples*
T0*'
_output_shapes
:’’’’’’’’’

linear/head/predictions/Shape_1Shape:linear/linear_model/linear_model/linear_model/weighted_sum*
T0*
_output_shapes
:
w
-linear/head/predictions/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
y
/linear/head/predictions/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
y
/linear/head/predictions/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Æ
'linear/head/predictions/strided_slice_1StridedSlicelinear/head/predictions/Shape_1-linear/head/predictions/strided_slice_1/stack/linear/head/predictions/strided_slice_1/stack_1/linear/head/predictions/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
g
%linear/head/predictions/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : 
g
%linear/head/predictions/range_1/limitConst*
_output_shapes
: *
dtype0*
value	B :
g
%linear/head/predictions/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :
¹
linear/head/predictions/range_1Range%linear/head/predictions/range_1/start%linear/head/predictions/range_1/limit%linear/head/predictions/range_1/delta*
_output_shapes
:
r
 linear/head/predictions/AsStringAsStringlinear/head/predictions/range_1*
T0*
_output_shapes
:
j
(linear/head/predictions/ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B : 
§
$linear/head/predictions/ExpandDims_2
ExpandDims linear/head/predictions/AsString(linear/head/predictions/ExpandDims_2/dim*
T0*
_output_shapes

:
l
*linear/head/predictions/Tile_1/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :
³
(linear/head/predictions/Tile_1/multiplesPack'linear/head/predictions/strided_slice_1*linear/head/predictions/Tile_1/multiples/1*
N*
T0*
_output_shapes
:
Ø
linear/head/predictions/Tile_1Tile$linear/head/predictions/ExpandDims_2(linear/head/predictions/Tile_1/multiples*
T0*'
_output_shapes
:’’’’’’’’’

#linear/head/predictions/str_classesAsString"linear/head/predictions/ExpandDims*
T0	*'
_output_shapes
:’’’’’’’’’
f
linear/head/ShapeShape%linear/head/predictions/probabilities*
T0*
_output_shapes
:
i
linear/head/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
k
!linear/head/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
k
!linear/head/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
é
linear/head/strided_sliceStridedSlicelinear/head/Shapelinear/head/strided_slice/stack!linear/head/strided_slice/stack_1!linear/head/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Y
linear/head/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
Y
linear/head/range/limitConst*
_output_shapes
: *
dtype0*
value	B :
Y
linear/head/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :

linear/head/rangeRangelinear/head/range/startlinear/head/range/limitlinear/head/range/delta*
_output_shapes
:
X
linear/head/AsStringAsStringlinear/head/range*
T0*
_output_shapes
:
\
linear/head/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 

linear/head/ExpandDims
ExpandDimslinear/head/AsStringlinear/head/ExpandDims/dim*
T0*
_output_shapes

:
^
linear/head/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :

linear/head/Tile/multiplesPacklinear/head/strided_slicelinear/head/Tile/multiples/1*
N*
T0*
_output_shapes
:
~
linear/head/TileTilelinear/head/ExpandDimslinear/head/Tile/multiples*
T0*'
_output_shapes
:’’’’’’’’’

initNoOp
¤	
init_all_tablesNoOp^linear/linear_model/linear_model/linear_model/education_indicator/education_lookup/hash_table/table_init/InitializeTableFromTextFileV2^linear/linear_model/linear_model/linear_model/marital-status_indicator/marital-status_lookup/hash_table/table_init/InitializeTableFromTextFileV2^linear/linear_model/linear_model/linear_model/native-country_indicator/native-country_lookup/hash_table/table_init/InitializeTableFromTextFileV2^linear/linear_model/linear_model/linear_model/occupation_indicator/occupation_lookup/hash_table/table_init/InitializeTableFromTextFileV2}^linear/linear_model/linear_model/linear_model/race_indicator/race_lookup/hash_table/table_init/InitializeTableFromTextFileV2^linear/linear_model/linear_model/linear_model/relationship_indicator/relationship_lookup/hash_table/table_init/InitializeTableFromTextFileV2{^linear/linear_model/linear_model/linear_model/sex_indicator/sex_lookup/hash_table/table_init/InitializeTableFromTextFileV2^linear/linear_model/linear_model/linear_model/workclass_indicator/workclass_lookup/hash_table/table_init/InitializeTableFromTextFileV27^transform/transform/key_value_init/LookupTableImportV2

init_1NoOp
4

group_depsNoOp^init^init_1^init_all_tables
Y
save/filename/inputConst*
_output_shapes
: *
dtype0*
valueB Bmodel
n
save/filenamePlaceholderWithDefaultsave/filename/input*
_output_shapes
: *
dtype0*
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
_output_shapes
: *
dtype0*
shape: 

save/Read/ReadVariableOpReadVariableOp&linear/linear_model/age/weights/part_0*
_output_shapes

:*
dtype0
\
save/IdentityIdentitysave/Read/ReadVariableOp*
T0*
_output_shapes

:
b
save/Identity_1Identitysave/Identity"/device:CPU:0*
T0*
_output_shapes

:
~
save/Read_1/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*
_output_shapes
:*
dtype0
\
save/Identity_2Identitysave/Read_1/ReadVariableOp*
T0*
_output_shapes
:
`
save/Identity_3Identitysave/Identity_2"/device:CPU:0*
T0*
_output_shapes
:

save/Read_2/ReadVariableOpReadVariableOp/linear/linear_model/capital-gain/weights/part_0*
_output_shapes

:*
dtype0
`
save/Identity_4Identitysave/Read_2/ReadVariableOp*
T0*
_output_shapes

:
d
save/Identity_5Identitysave/Identity_4"/device:CPU:0*
T0*
_output_shapes

:

save/Read_3/ReadVariableOpReadVariableOp/linear/linear_model/capital-loss/weights/part_0*
_output_shapes

:*
dtype0
`
save/Identity_6Identitysave/Read_3/ReadVariableOp*
T0*
_output_shapes

:
d
save/Identity_7Identitysave/Identity_6"/device:CPU:0*
T0*
_output_shapes

:

save/Read_4/ReadVariableOpReadVariableOp6linear/linear_model/education_indicator/weights/part_0*
_output_shapes

:*
dtype0
`
save/Identity_8Identitysave/Read_4/ReadVariableOp*
T0*
_output_shapes

:
d
save/Identity_9Identitysave/Identity_8"/device:CPU:0*
T0*
_output_shapes

:

save/Read_5/ReadVariableOpReadVariableOp1linear/linear_model/hours-per-week/weights/part_0*
_output_shapes

:*
dtype0
a
save/Identity_10Identitysave/Read_5/ReadVariableOp*
T0*
_output_shapes

:
f
save/Identity_11Identitysave/Identity_10"/device:CPU:0*
T0*
_output_shapes

:

save/Read_6/ReadVariableOpReadVariableOp;linear/linear_model/marital-status_indicator/weights/part_0*
_output_shapes

:*
dtype0
a
save/Identity_12Identitysave/Read_6/ReadVariableOp*
T0*
_output_shapes

:
f
save/Identity_13Identitysave/Identity_12"/device:CPU:0*
T0*
_output_shapes

:

save/Read_7/ReadVariableOpReadVariableOp;linear/linear_model/native-country_indicator/weights/part_0*
_output_shapes

:**
dtype0
a
save/Identity_14Identitysave/Read_7/ReadVariableOp*
T0*
_output_shapes

:*
f
save/Identity_15Identitysave/Identity_14"/device:CPU:0*
T0*
_output_shapes

:*

save/Read_8/ReadVariableOpReadVariableOp7linear/linear_model/occupation_indicator/weights/part_0*
_output_shapes

:*
dtype0
a
save/Identity_16Identitysave/Read_8/ReadVariableOp*
T0*
_output_shapes

:
f
save/Identity_17Identitysave/Identity_16"/device:CPU:0*
T0*
_output_shapes

:

save/Read_9/ReadVariableOpReadVariableOp1linear/linear_model/race_indicator/weights/part_0*
_output_shapes

:*
dtype0
a
save/Identity_18Identitysave/Read_9/ReadVariableOp*
T0*
_output_shapes

:
f
save/Identity_19Identitysave/Identity_18"/device:CPU:0*
T0*
_output_shapes

:

save/Read_10/ReadVariableOpReadVariableOp9linear/linear_model/relationship_indicator/weights/part_0*
_output_shapes

:*
dtype0
b
save/Identity_20Identitysave/Read_10/ReadVariableOp*
T0*
_output_shapes

:
f
save/Identity_21Identitysave/Identity_20"/device:CPU:0*
T0*
_output_shapes

:

save/Read_11/ReadVariableOpReadVariableOp0linear/linear_model/sex_indicator/weights/part_0*
_output_shapes

:*
dtype0
b
save/Identity_22Identitysave/Read_11/ReadVariableOp*
T0*
_output_shapes

:
f
save/Identity_23Identitysave/Identity_22"/device:CPU:0*
T0*
_output_shapes

:

save/Read_12/ReadVariableOpReadVariableOp6linear/linear_model/workclass_indicator/weights/part_0*
_output_shapes

:	*
dtype0
b
save/Identity_24Identitysave/Read_12/ReadVariableOp*
T0*
_output_shapes

:	
f
save/Identity_25Identitysave/Identity_24"/device:CPU:0*
T0*
_output_shapes

:	

save/StringJoin/inputs_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+_temp_60461f9dee83438197dbbf002a9344ee/part
d
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: 
Q
save/num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
k
save/ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
{
save/SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0* 
valueBBglobal_step
t
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
¤
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesglobal_step/Read/ReadVariableOp"/device:CPU:0*
dtypes
2	
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
m
save/ShardedFilename_1/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B :

save/ShardedFilename_1ShardedFilenamesave/StringJoinsave/ShardedFilename_1/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 

save/Read_13/ReadVariableOpReadVariableOp&linear/linear_model/age/weights/part_0"/device:CPU:0*
_output_shapes

:*
dtype0
q
save/Identity_26Identitysave/Read_13/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_27Identitysave/Identity_26"/device:CPU:0*
T0*
_output_shapes

:

save/Read_14/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0"/device:CPU:0*
_output_shapes
:*
dtype0
m
save/Identity_28Identitysave/Read_14/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes
:
b
save/Identity_29Identitysave/Identity_28"/device:CPU:0*
T0*
_output_shapes
:

save/Read_15/ReadVariableOpReadVariableOp/linear/linear_model/capital-gain/weights/part_0"/device:CPU:0*
_output_shapes

:*
dtype0
q
save/Identity_30Identitysave/Read_15/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_31Identitysave/Identity_30"/device:CPU:0*
T0*
_output_shapes

:

save/Read_16/ReadVariableOpReadVariableOp/linear/linear_model/capital-loss/weights/part_0"/device:CPU:0*
_output_shapes

:*
dtype0
q
save/Identity_32Identitysave/Read_16/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_33Identitysave/Identity_32"/device:CPU:0*
T0*
_output_shapes

:
”
save/Read_17/ReadVariableOpReadVariableOp6linear/linear_model/education_indicator/weights/part_0"/device:CPU:0*
_output_shapes

:*
dtype0
q
save/Identity_34Identitysave/Read_17/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_35Identitysave/Identity_34"/device:CPU:0*
T0*
_output_shapes

:

save/Read_18/ReadVariableOpReadVariableOp1linear/linear_model/hours-per-week/weights/part_0"/device:CPU:0*
_output_shapes

:*
dtype0
q
save/Identity_36Identitysave/Read_18/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_37Identitysave/Identity_36"/device:CPU:0*
T0*
_output_shapes

:
¦
save/Read_19/ReadVariableOpReadVariableOp;linear/linear_model/marital-status_indicator/weights/part_0"/device:CPU:0*
_output_shapes

:*
dtype0
q
save/Identity_38Identitysave/Read_19/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_39Identitysave/Identity_38"/device:CPU:0*
T0*
_output_shapes

:
¦
save/Read_20/ReadVariableOpReadVariableOp;linear/linear_model/native-country_indicator/weights/part_0"/device:CPU:0*
_output_shapes

:**
dtype0
q
save/Identity_40Identitysave/Read_20/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:*
f
save/Identity_41Identitysave/Identity_40"/device:CPU:0*
T0*
_output_shapes

:*
¢
save/Read_21/ReadVariableOpReadVariableOp7linear/linear_model/occupation_indicator/weights/part_0"/device:CPU:0*
_output_shapes

:*
dtype0
q
save/Identity_42Identitysave/Read_21/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_43Identitysave/Identity_42"/device:CPU:0*
T0*
_output_shapes

:

save/Read_22/ReadVariableOpReadVariableOp1linear/linear_model/race_indicator/weights/part_0"/device:CPU:0*
_output_shapes

:*
dtype0
q
save/Identity_44Identitysave/Read_22/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_45Identitysave/Identity_44"/device:CPU:0*
T0*
_output_shapes

:
¤
save/Read_23/ReadVariableOpReadVariableOp9linear/linear_model/relationship_indicator/weights/part_0"/device:CPU:0*
_output_shapes

:*
dtype0
q
save/Identity_46Identitysave/Read_23/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_47Identitysave/Identity_46"/device:CPU:0*
T0*
_output_shapes

:

save/Read_24/ReadVariableOpReadVariableOp0linear/linear_model/sex_indicator/weights/part_0"/device:CPU:0*
_output_shapes

:*
dtype0
q
save/Identity_48Identitysave/Read_24/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_49Identitysave/Identity_48"/device:CPU:0*
T0*
_output_shapes

:
”
save/Read_25/ReadVariableOpReadVariableOp6linear/linear_model/workclass_indicator/weights/part_0"/device:CPU:0*
_output_shapes

:	*
dtype0
q
save/Identity_50Identitysave/Read_25/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:	
f
save/Identity_51Identitysave/Identity_50"/device:CPU:0*
T0*
_output_shapes

:	
Į
save/SaveV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ć
valueŁBÖBlinear/linear_model/age/weightsB linear/linear_model/bias_weightsB(linear/linear_model/capital-gain/weightsB(linear/linear_model/capital-loss/weightsB/linear/linear_model/education_indicator/weightsB*linear/linear_model/hours-per-week/weightsB4linear/linear_model/marital-status_indicator/weightsB4linear/linear_model/native-country_indicator/weightsB0linear/linear_model/occupation_indicator/weightsB*linear/linear_model/race_indicator/weightsB2linear/linear_model/relationship_indicator/weightsB)linear/linear_model/sex_indicator/weightsB/linear/linear_model/workclass_indicator/weights
 
save/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*¾
value“B±B1 1 0,1:0,1B1 0,1B1 1 0,1:0,1B1 1 0,1:0,1B16 1 0,16:0,1B1 1 0,1:0,1B7 1 0,7:0,1B42 1 0,42:0,1B15 1 0,15:0,1B5 1 0,5:0,1B6 1 0,6:0,1B2 1 0,2:0,1B9 1 0,9:0,1

save/SaveV2_1SaveV2save/ShardedFilename_1save/SaveV2_1/tensor_namessave/SaveV2_1/shape_and_slicessave/Identity_27save/Identity_29save/Identity_31save/Identity_33save/Identity_35save/Identity_37save/Identity_39save/Identity_41save/Identity_43save/Identity_45save/Identity_47save/Identity_49save/Identity_51"/device:CPU:0*
dtypes
2
Ø
save/control_dependency_1Identitysave/ShardedFilename_1^save/SaveV2_1"/device:CPU:0*
T0*)
_class
loc:@save/ShardedFilename_1*
_output_shapes
: 
Ō
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilenamesave/ShardedFilename_1^save/control_dependency^save/control_dependency_1"/device:CPU:0*
N*
T0*
_output_shapes
:
u
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0
Ø
save/Identity_52Identity
save/Const^save/MergeV2Checkpoints^save/control_dependency^save/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
~
save/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0* 
valueBBglobal_step
w
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2	
O
save/Identity_53Identitysave/RestoreV2*
T0	*
_output_shapes
:
U
save/AssignVariableOpAssignVariableOpglobal_stepsave/Identity_53*
dtype0	
2
save/restore_shardNoOp^save/AssignVariableOp
Ä
save/RestoreV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ć
valueŁBÖBlinear/linear_model/age/weightsB linear/linear_model/bias_weightsB(linear/linear_model/capital-gain/weightsB(linear/linear_model/capital-loss/weightsB/linear/linear_model/education_indicator/weightsB*linear/linear_model/hours-per-week/weightsB4linear/linear_model/marital-status_indicator/weightsB4linear/linear_model/native-country_indicator/weightsB0linear/linear_model/occupation_indicator/weightsB*linear/linear_model/race_indicator/weightsB2linear/linear_model/relationship_indicator/weightsB)linear/linear_model/sex_indicator/weightsB/linear/linear_model/workclass_indicator/weights
£
!save/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*¾
value“B±B1 1 0,1:0,1B1 0,1B1 1 0,1:0,1B1 1 0,1:0,1B16 1 0,16:0,1B1 1 0,1:0,1B7 1 0,7:0,1B42 1 0,42:0,1B15 1 0,15:0,1B5 1 0,5:0,1B6 1 0,6:0,1B2 1 0,2:0,1B9 1 0,9:0,1
­
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices"/device:CPU:0*
_output_shapes
~::::::::*:::::	*
dtypes
2
f
save/Identity_54Identitysave/RestoreV2_1"/device:CPU:0*
T0*
_output_shapes

:

save/AssignVariableOp_1AssignVariableOp&linear/linear_model/age/weights/part_0save/Identity_54"/device:CPU:0*
dtype0
d
save/Identity_55Identitysave/RestoreV2_1:1"/device:CPU:0*
T0*
_output_shapes
:

save/AssignVariableOp_2AssignVariableOp'linear/linear_model/bias_weights/part_0save/Identity_55"/device:CPU:0*
dtype0
h
save/Identity_56Identitysave/RestoreV2_1:2"/device:CPU:0*
T0*
_output_shapes

:

save/AssignVariableOp_3AssignVariableOp/linear/linear_model/capital-gain/weights/part_0save/Identity_56"/device:CPU:0*
dtype0
h
save/Identity_57Identitysave/RestoreV2_1:3"/device:CPU:0*
T0*
_output_shapes

:

save/AssignVariableOp_4AssignVariableOp/linear/linear_model/capital-loss/weights/part_0save/Identity_57"/device:CPU:0*
dtype0
h
save/Identity_58Identitysave/RestoreV2_1:4"/device:CPU:0*
T0*
_output_shapes

:

save/AssignVariableOp_5AssignVariableOp6linear/linear_model/education_indicator/weights/part_0save/Identity_58"/device:CPU:0*
dtype0
h
save/Identity_59Identitysave/RestoreV2_1:5"/device:CPU:0*
T0*
_output_shapes

:

save/AssignVariableOp_6AssignVariableOp1linear/linear_model/hours-per-week/weights/part_0save/Identity_59"/device:CPU:0*
dtype0
h
save/Identity_60Identitysave/RestoreV2_1:6"/device:CPU:0*
T0*
_output_shapes

:

save/AssignVariableOp_7AssignVariableOp;linear/linear_model/marital-status_indicator/weights/part_0save/Identity_60"/device:CPU:0*
dtype0
h
save/Identity_61Identitysave/RestoreV2_1:7"/device:CPU:0*
T0*
_output_shapes

:*

save/AssignVariableOp_8AssignVariableOp;linear/linear_model/native-country_indicator/weights/part_0save/Identity_61"/device:CPU:0*
dtype0
h
save/Identity_62Identitysave/RestoreV2_1:8"/device:CPU:0*
T0*
_output_shapes

:

save/AssignVariableOp_9AssignVariableOp7linear/linear_model/occupation_indicator/weights/part_0save/Identity_62"/device:CPU:0*
dtype0
h
save/Identity_63Identitysave/RestoreV2_1:9"/device:CPU:0*
T0*
_output_shapes

:

save/AssignVariableOp_10AssignVariableOp1linear/linear_model/race_indicator/weights/part_0save/Identity_63"/device:CPU:0*
dtype0
i
save/Identity_64Identitysave/RestoreV2_1:10"/device:CPU:0*
T0*
_output_shapes

:

save/AssignVariableOp_11AssignVariableOp9linear/linear_model/relationship_indicator/weights/part_0save/Identity_64"/device:CPU:0*
dtype0
i
save/Identity_65Identitysave/RestoreV2_1:11"/device:CPU:0*
T0*
_output_shapes

:

save/AssignVariableOp_12AssignVariableOp0linear/linear_model/sex_indicator/weights/part_0save/Identity_65"/device:CPU:0*
dtype0
i
save/Identity_66Identitysave/RestoreV2_1:12"/device:CPU:0*
T0*
_output_shapes

:	

save/AssignVariableOp_13AssignVariableOp6linear/linear_model/workclass_indicator/weights/part_0save/Identity_66"/device:CPU:0*
dtype0

save/restore_shard_1NoOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_2^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9"/device:CPU:0
2
save/restore_all/NoOpNoOp^save/restore_shard
E
save/restore_all/NoOp_1NoOp^save/restore_shard_1"/device:CPU:0
J
save/restore_allNoOp^save/restore_all/NoOp^save/restore_all/NoOp_1®
Ŗ
y
zero_fraction_cond_false_52157
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zerosø
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:*2
count_nonzero/NotEqual
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:*2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: 2
count_nonzero/nonzero_count"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

:*
Ŗ
y
zero_fraction_cond_false_49577
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zerosø
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:2
count_nonzero/NotEqual
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: 2
count_nonzero/nonzero_count"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

:
Ŗ
y
zero_fraction_cond_false_50437
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zerosø
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:2
count_nonzero/NotEqual
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: 2
count_nonzero/nonzero_count"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

:
Ŗ
y
zero_fraction_cond_false_50007
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zerosø
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:2
count_nonzero/NotEqual
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: 2
count_nonzero/nonzero_count"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

:
Ė
a
zero_fraction_cond_true_49567
3count_nonzero_notequal_zero_fraction_readvariableop
cast	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zerosø
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:2
count_nonzero/NotEqual
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: 2
count_nonzero/nonzero_countj
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2
Cast"
castCast:y:0*
_input_shapes

:
Ŗ
y
zero_fraction_cond_false_50867
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zerosø
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:2
count_nonzero/NotEqual
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: 2
count_nonzero/nonzero_count"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

:
ņ
g
6linear_zero_fraction_total_zero_zero_count_1_true_4989
placeholder
placeholder_1		
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Const"
constConst:output:0*
_input_shapes
:: 
ņ
g
6linear_zero_fraction_total_zero_zero_count_7_true_5247
placeholder
placeholder_1		
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Const"
constConst:output:0*
_input_shapes
:: 

Ō
7linear_zero_fraction_total_zero_zero_count_6_false_5205\
Xzero_fraction_readvariableop_linear_linear_model_native_country_indicator_weights_part_0/
+cast_linear_zero_fraction_total_size_size_6	
mulÕ
zero_fraction/ReadVariableOpReadVariableOpXzero_fraction_readvariableop_linear_linear_model_native_country_indicator_weights_part_0*
_output_shapes

:**
dtype02
zero_fraction/ReadVariableOpj
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R*2
zero_fraction/Size|
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R’’’’2
zero_fraction/LessEqual/y”
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: 2
zero_fraction/LessEqual×
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: *0
else_branch!R
zero_fraction_cond_false_5215*
output_shapes
: */
then_branch R
zero_fraction_cond_true_52142
zero_fraction/cond
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: 2
zero_fraction/cond/Identity·
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: 2&
$zero_fraction/counts_to_fraction/sub°
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: 2'
%zero_fraction/counts_to_fraction/Cast§
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2)
'zero_fraction/counts_to_fraction/Cast_1Ų
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: 2*
(zero_fraction/counts_to_fraction/truediv
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: 2
zero_fraction/fractionq
CastCast+cast_linear_zero_fraction_total_size_size_6*

DstT0*

SrcT0	*
_output_shapes
: 2
CastG
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T02
mul"
mul	mul_0:z:0*
_input_shapes
:: 
Ė
a
zero_fraction_cond_true_52577
3count_nonzero_notequal_zero_fraction_readvariableop
cast	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zerosø
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:2
count_nonzero/NotEqual
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: 2
count_nonzero/nonzero_countj
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2
Cast"
castCast:y:0*
_input_shapes

:
ņ
g
6linear_zero_fraction_total_zero_zero_count_8_true_5290
placeholder
placeholder_1		
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Const"
constConst:output:0*
_input_shapes
:: 
ó
h
7linear_zero_fraction_total_zero_zero_count_11_true_5419
placeholder
placeholder_1		
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Const"
constConst:output:0*
_input_shapes
:: 
ņ
g
6linear_zero_fraction_total_zero_zero_count_4_true_5118
placeholder
placeholder_1		
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Const"
constConst:output:0*
_input_shapes
:: 
ņ
g
6linear_zero_fraction_total_zero_zero_count_3_true_5075
placeholder
placeholder_1		
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Const"
constConst:output:0*
_input_shapes
:: 
Ŗ
y
zero_fraction_cond_false_53447
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zerosø
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:2
count_nonzero/NotEqual
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: 2
count_nonzero/nonzero_count"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

:
Ė
a
zero_fraction_cond_true_51717
3count_nonzero_notequal_zero_fraction_readvariableop
cast	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zerosø
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:2
count_nonzero/NotEqual
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: 2
count_nonzero/nonzero_countj
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2
Cast"
castCast:y:0*
_input_shapes

:
’
Š
7linear_zero_fraction_total_zero_zero_count_7_false_5248X
Tzero_fraction_readvariableop_linear_linear_model_occupation_indicator_weights_part_0/
+cast_linear_zero_fraction_total_size_size_7	
mulŃ
zero_fraction/ReadVariableOpReadVariableOpTzero_fraction_readvariableop_linear_linear_model_occupation_indicator_weights_part_0*
_output_shapes

:*
dtype02
zero_fraction/ReadVariableOpj
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R2
zero_fraction/Size|
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R’’’’2
zero_fraction/LessEqual/y”
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: 2
zero_fraction/LessEqual×
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: *0
else_branch!R
zero_fraction_cond_false_5258*
output_shapes
: */
then_branch R
zero_fraction_cond_true_52572
zero_fraction/cond
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: 2
zero_fraction/cond/Identity·
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: 2&
$zero_fraction/counts_to_fraction/sub°
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: 2'
%zero_fraction/counts_to_fraction/Cast§
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2)
'zero_fraction/counts_to_fraction/Cast_1Ų
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: 2*
(zero_fraction/counts_to_fraction/truediv
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: 2
zero_fraction/fractionq
CastCast+cast_linear_zero_fraction_total_size_size_7*

DstT0*

SrcT0	*
_output_shapes
: 2
CastG
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T02
mul"
mul	mul_0:z:0*
_input_shapes
:: 
Ŗ
y
zero_fraction_cond_false_53017
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zerosø
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:2
count_nonzero/NotEqual
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: 2
count_nonzero/nonzero_count"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

:
ņ
g
6linear_zero_fraction_total_zero_zero_count_6_true_5204
placeholder
placeholder_1		
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Const"
constConst:output:0*
_input_shapes
:: 
ō
Ė
8linear_zero_fraction_total_zero_zero_count_10_false_5377Q
Mzero_fraction_readvariableop_linear_linear_model_sex_indicator_weights_part_00
,cast_linear_zero_fraction_total_size_size_10	
mulŹ
zero_fraction/ReadVariableOpReadVariableOpMzero_fraction_readvariableop_linear_linear_model_sex_indicator_weights_part_0*
_output_shapes

:*
dtype02
zero_fraction/ReadVariableOpj
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R2
zero_fraction/Size|
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R’’’’2
zero_fraction/LessEqual/y”
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: 2
zero_fraction/LessEqual×
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: *0
else_branch!R
zero_fraction_cond_false_5387*
output_shapes
: */
then_branch R
zero_fraction_cond_true_53862
zero_fraction/cond
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: 2
zero_fraction/cond/Identity·
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: 2&
$zero_fraction/counts_to_fraction/sub°
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: 2'
%zero_fraction/counts_to_fraction/Cast§
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2)
'zero_fraction/counts_to_fraction/Cast_1Ų
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: 2*
(zero_fraction/counts_to_fraction/truediv
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: 2
zero_fraction/fractionr
CastCast,cast_linear_zero_fraction_total_size_size_10*

DstT0*

SrcT0	*
_output_shapes
: 2
CastG
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T02
mul"
mul	mul_0:z:0*
_input_shapes
:: 
Ė
a
zero_fraction_cond_true_53007
3count_nonzero_notequal_zero_fraction_readvariableop
cast	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zerosø
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:2
count_nonzero/NotEqual
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: 2
count_nonzero/nonzero_countj
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2
Cast"
castCast:y:0*
_input_shapes

:
Ė
a
zero_fraction_cond_true_50857
3count_nonzero_notequal_zero_fraction_readvariableop
cast	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zerosø
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:2
count_nonzero/NotEqual
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: 2
count_nonzero/nonzero_countj
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2
Cast"
castCast:y:0*
_input_shapes

:

Ō
7linear_zero_fraction_total_zero_zero_count_5_false_5162\
Xzero_fraction_readvariableop_linear_linear_model_marital_status_indicator_weights_part_0/
+cast_linear_zero_fraction_total_size_size_5	
mulÕ
zero_fraction/ReadVariableOpReadVariableOpXzero_fraction_readvariableop_linear_linear_model_marital_status_indicator_weights_part_0*
_output_shapes

:*
dtype02
zero_fraction/ReadVariableOpj
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R2
zero_fraction/Size|
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R’’’’2
zero_fraction/LessEqual/y”
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: 2
zero_fraction/LessEqual×
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: *0
else_branch!R
zero_fraction_cond_false_5172*
output_shapes
: */
then_branch R
zero_fraction_cond_true_51712
zero_fraction/cond
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: 2
zero_fraction/cond/Identity·
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: 2&
$zero_fraction/counts_to_fraction/sub°
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: 2'
%zero_fraction/counts_to_fraction/Cast§
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2)
'zero_fraction/counts_to_fraction/Cast_1Ų
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: 2*
(zero_fraction/counts_to_fraction/truediv
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: 2
zero_fraction/fractionq
CastCast+cast_linear_zero_fraction_total_size_size_5*

DstT0*

SrcT0	*
_output_shapes
: 2
CastG
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T02
mul"
mul	mul_0:z:0*
_input_shapes
:: 
ż
Ļ
7linear_zero_fraction_total_zero_zero_count_3_false_5076W
Szero_fraction_readvariableop_linear_linear_model_education_indicator_weights_part_0/
+cast_linear_zero_fraction_total_size_size_3	
mulŠ
zero_fraction/ReadVariableOpReadVariableOpSzero_fraction_readvariableop_linear_linear_model_education_indicator_weights_part_0*
_output_shapes

:*
dtype02
zero_fraction/ReadVariableOpj
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R2
zero_fraction/Size|
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R’’’’2
zero_fraction/LessEqual/y”
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: 2
zero_fraction/LessEqual×
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: *0
else_branch!R
zero_fraction_cond_false_5086*
output_shapes
: */
then_branch R
zero_fraction_cond_true_50852
zero_fraction/cond
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: 2
zero_fraction/cond/Identity·
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: 2&
$zero_fraction/counts_to_fraction/sub°
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: 2'
%zero_fraction/counts_to_fraction/Cast§
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2)
'zero_fraction/counts_to_fraction/Cast_1Ų
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: 2*
(zero_fraction/counts_to_fraction/truediv
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: 2
zero_fraction/fractionq
CastCast+cast_linear_zero_fraction_total_size_size_3*

DstT0*

SrcT0	*
_output_shapes
: 2
CastG
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T02
mul"
mul	mul_0:z:0*
_input_shapes
:: 
ļ
Č
7linear_zero_fraction_total_zero_zero_count_2_false_5033P
Lzero_fraction_readvariableop_linear_linear_model_capital_loss_weights_part_0/
+cast_linear_zero_fraction_total_size_size_2	
mulÉ
zero_fraction/ReadVariableOpReadVariableOpLzero_fraction_readvariableop_linear_linear_model_capital_loss_weights_part_0*
_output_shapes

:*
dtype02
zero_fraction/ReadVariableOpj
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R2
zero_fraction/Size|
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R’’’’2
zero_fraction/LessEqual/y”
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: 2
zero_fraction/LessEqual×
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: *0
else_branch!R
zero_fraction_cond_false_5043*
output_shapes
: */
then_branch R
zero_fraction_cond_true_50422
zero_fraction/cond
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: 2
zero_fraction/cond/Identity·
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: 2&
$zero_fraction/counts_to_fraction/sub°
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: 2'
%zero_fraction/counts_to_fraction/Cast§
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2)
'zero_fraction/counts_to_fraction/Cast_1Ų
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: 2*
(zero_fraction/counts_to_fraction/truediv
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: 2
zero_fraction/fractionq
CastCast+cast_linear_zero_fraction_total_size_size_2*

DstT0*

SrcT0	*
_output_shapes
: 2
CastG
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T02
mul"
mul	mul_0:z:0*
_input_shapes
:: 
ó
Ź
7linear_zero_fraction_total_zero_zero_count_8_false_5291R
Nzero_fraction_readvariableop_linear_linear_model_race_indicator_weights_part_0/
+cast_linear_zero_fraction_total_size_size_8	
mulĖ
zero_fraction/ReadVariableOpReadVariableOpNzero_fraction_readvariableop_linear_linear_model_race_indicator_weights_part_0*
_output_shapes

:*
dtype02
zero_fraction/ReadVariableOpj
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R2
zero_fraction/Size|
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R’’’’2
zero_fraction/LessEqual/y”
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: 2
zero_fraction/LessEqual×
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: *0
else_branch!R
zero_fraction_cond_false_5301*
output_shapes
: */
then_branch R
zero_fraction_cond_true_53002
zero_fraction/cond
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: 2
zero_fraction/cond/Identity·
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: 2&
$zero_fraction/counts_to_fraction/sub°
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: 2'
%zero_fraction/counts_to_fraction/Cast§
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2)
'zero_fraction/counts_to_fraction/Cast_1Ų
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: 2*
(zero_fraction/counts_to_fraction/truediv
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: 2
zero_fraction/fractionq
CastCast+cast_linear_zero_fraction_total_size_size_8*

DstT0*

SrcT0	*
_output_shapes
: 2
CastG
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T02
mul"
mul	mul_0:z:0*
_input_shapes
:: 
Ė
a
zero_fraction_cond_true_53867
3count_nonzero_notequal_zero_fraction_readvariableop
cast	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zerosø
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:2
count_nonzero/NotEqual
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: 2
count_nonzero/nonzero_countj
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2
Cast"
castCast:y:0*
_input_shapes

:
Ė
a
zero_fraction_cond_true_50427
3count_nonzero_notequal_zero_fraction_readvariableop
cast	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zerosø
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:2
count_nonzero/NotEqual
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: 2
count_nonzero/nonzero_countj
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2
Cast"
castCast:y:0*
_input_shapes

:
Ŗ
y
zero_fraction_cond_false_51297
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zerosø
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:2
count_nonzero/NotEqual
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: 2
count_nonzero/nonzero_count"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

:
Ė
a
zero_fraction_cond_true_51287
3count_nonzero_notequal_zero_fraction_readvariableop
cast	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zerosø
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:2
count_nonzero/NotEqual
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: 2
count_nonzero/nonzero_countj
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2
Cast"
castCast:y:0*
_input_shapes

:
ņ
g
6linear_zero_fraction_total_zero_zero_count_9_true_5333
placeholder
placeholder_1		
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Const"
constConst:output:0*
_input_shapes
:: 
Ė
a
zero_fraction_cond_true_53437
3count_nonzero_notequal_zero_fraction_readvariableop
cast	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zerosø
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:2
count_nonzero/NotEqual
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: 2
count_nonzero/nonzero_countj
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2
Cast"
castCast:y:0*
_input_shapes

:
×
»
5linear_zero_fraction_total_zero_zero_count_false_4947G
Czero_fraction_readvariableop_linear_linear_model_age_weights_part_0-
)cast_linear_zero_fraction_total_size_size	
mulĄ
zero_fraction/ReadVariableOpReadVariableOpCzero_fraction_readvariableop_linear_linear_model_age_weights_part_0*
_output_shapes

:*
dtype02
zero_fraction/ReadVariableOpj
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R2
zero_fraction/Size|
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R’’’’2
zero_fraction/LessEqual/y”
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: 2
zero_fraction/LessEqual×
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: *0
else_branch!R
zero_fraction_cond_false_4957*
output_shapes
: */
then_branch R
zero_fraction_cond_true_49562
zero_fraction/cond
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: 2
zero_fraction/cond/Identity·
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: 2&
$zero_fraction/counts_to_fraction/sub°
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: 2'
%zero_fraction/counts_to_fraction/Cast§
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2)
'zero_fraction/counts_to_fraction/Cast_1Ų
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: 2*
(zero_fraction/counts_to_fraction/truediv
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: 2
zero_fraction/fractiono
CastCast)cast_linear_zero_fraction_total_size_size*

DstT0*

SrcT0	*
_output_shapes
: 2
CastG
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T02
mul"
mul	mul_0:z:0*
_input_shapes
:: 
ó
Ź
7linear_zero_fraction_total_zero_zero_count_4_false_5119R
Nzero_fraction_readvariableop_linear_linear_model_hours_per_week_weights_part_0/
+cast_linear_zero_fraction_total_size_size_4	
mulĖ
zero_fraction/ReadVariableOpReadVariableOpNzero_fraction_readvariableop_linear_linear_model_hours_per_week_weights_part_0*
_output_shapes

:*
dtype02
zero_fraction/ReadVariableOpj
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R2
zero_fraction/Size|
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R’’’’2
zero_fraction/LessEqual/y”
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: 2
zero_fraction/LessEqual×
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: *0
else_branch!R
zero_fraction_cond_false_5129*
output_shapes
: */
then_branch R
zero_fraction_cond_true_51282
zero_fraction/cond
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: 2
zero_fraction/cond/Identity·
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: 2&
$zero_fraction/counts_to_fraction/sub°
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: 2'
%zero_fraction/counts_to_fraction/Cast§
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2)
'zero_fraction/counts_to_fraction/Cast_1Ų
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: 2*
(zero_fraction/counts_to_fraction/truediv
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: 2
zero_fraction/fractionq
CastCast+cast_linear_zero_fraction_total_size_size_4*

DstT0*

SrcT0	*
_output_shapes
: 2
CastG
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T02
mul"
mul	mul_0:z:0*
_input_shapes
:: 
ļ
Č
7linear_zero_fraction_total_zero_zero_count_1_false_4990P
Lzero_fraction_readvariableop_linear_linear_model_capital_gain_weights_part_0/
+cast_linear_zero_fraction_total_size_size_1	
mulÉ
zero_fraction/ReadVariableOpReadVariableOpLzero_fraction_readvariableop_linear_linear_model_capital_gain_weights_part_0*
_output_shapes

:*
dtype02
zero_fraction/ReadVariableOpj
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R2
zero_fraction/Size|
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R’’’’2
zero_fraction/LessEqual/y”
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: 2
zero_fraction/LessEqual×
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: *0
else_branch!R
zero_fraction_cond_false_5000*
output_shapes
: */
then_branch R
zero_fraction_cond_true_49992
zero_fraction/cond
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: 2
zero_fraction/cond/Identity·
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: 2&
$zero_fraction/counts_to_fraction/sub°
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: 2'
%zero_fraction/counts_to_fraction/Cast§
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2)
'zero_fraction/counts_to_fraction/Cast_1Ų
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: 2*
(zero_fraction/counts_to_fraction/truediv
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: 2
zero_fraction/fractionq
CastCast+cast_linear_zero_fraction_total_size_size_1*

DstT0*

SrcT0	*
_output_shapes
: 2
CastG
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T02
mul"
mul	mul_0:z:0*
_input_shapes
:: 

Ņ
7linear_zero_fraction_total_zero_zero_count_9_false_5334Z
Vzero_fraction_readvariableop_linear_linear_model_relationship_indicator_weights_part_0/
+cast_linear_zero_fraction_total_size_size_9	
mulÓ
zero_fraction/ReadVariableOpReadVariableOpVzero_fraction_readvariableop_linear_linear_model_relationship_indicator_weights_part_0*
_output_shapes

:*
dtype02
zero_fraction/ReadVariableOpj
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R2
zero_fraction/Size|
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R’’’’2
zero_fraction/LessEqual/y”
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: 2
zero_fraction/LessEqual×
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: *0
else_branch!R
zero_fraction_cond_false_5344*
output_shapes
: */
then_branch R
zero_fraction_cond_true_53432
zero_fraction/cond
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: 2
zero_fraction/cond/Identity·
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: 2&
$zero_fraction/counts_to_fraction/sub°
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: 2'
%zero_fraction/counts_to_fraction/Cast§
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2)
'zero_fraction/counts_to_fraction/Cast_1Ų
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: 2*
(zero_fraction/counts_to_fraction/truediv
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: 2
zero_fraction/fractionq
CastCast+cast_linear_zero_fraction_total_size_size_9*

DstT0*

SrcT0	*
_output_shapes
: 2
CastG
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T02
mul"
mul	mul_0:z:0*
_input_shapes
:: 
ņ
g
6linear_zero_fraction_total_zero_zero_count_2_true_5032
placeholder
placeholder_1		
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Const"
constConst:output:0*
_input_shapes
:: 
Ŗ
y
zero_fraction_cond_false_51727
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zerosø
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:2
count_nonzero/NotEqual
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: 2
count_nonzero/nonzero_count"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

:
Ŗ
y
zero_fraction_cond_false_52587
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zerosø
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:2
count_nonzero/NotEqual
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: 2
count_nonzero/nonzero_count"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

:
Ė
a
zero_fraction_cond_true_54297
3count_nonzero_notequal_zero_fraction_readvariableop
cast	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zerosø
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:	2
count_nonzero/NotEqual
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:	2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: 2
count_nonzero/nonzero_countj
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2
Cast"
castCast:y:0*
_input_shapes

:	
š
e
4linear_zero_fraction_total_zero_zero_count_true_4946
placeholder
placeholder_1		
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Const"
constConst:output:0*
_input_shapes
:: 
ó
h
7linear_zero_fraction_total_zero_zero_count_10_true_5376
placeholder
placeholder_1		
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Const"
constConst:output:0*
_input_shapes
:: 
Ŗ
y
zero_fraction_cond_false_53877
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zerosø
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:2
count_nonzero/NotEqual
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: 2
count_nonzero/nonzero_count"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

:
Ŗ
y
zero_fraction_cond_false_54307
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zerosø
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:	2
count_nonzero/NotEqual
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:	2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: 2
count_nonzero/nonzero_count"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

:	
Ė
a
zero_fraction_cond_true_52147
3count_nonzero_notequal_zero_fraction_readvariableop
cast	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zerosø
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:*2
count_nonzero/NotEqual
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:*2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: 2
count_nonzero/nonzero_countj
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2
Cast"
castCast:y:0*
_input_shapes

:*
ņ
g
6linear_zero_fraction_total_zero_zero_count_5_true_5161
placeholder
placeholder_1		
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Const"
constConst:output:0*
_input_shapes
:: 
Ė
a
zero_fraction_cond_true_49997
3count_nonzero_notequal_zero_fraction_readvariableop
cast	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zerosø
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:2
count_nonzero/NotEqual
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: 2
count_nonzero/nonzero_countj
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2
Cast"
castCast:y:0*
_input_shapes

:

Ń
8linear_zero_fraction_total_zero_zero_count_11_false_5420W
Szero_fraction_readvariableop_linear_linear_model_workclass_indicator_weights_part_00
,cast_linear_zero_fraction_total_size_size_11	
mulŠ
zero_fraction/ReadVariableOpReadVariableOpSzero_fraction_readvariableop_linear_linear_model_workclass_indicator_weights_part_0*
_output_shapes

:	*
dtype02
zero_fraction/ReadVariableOpj
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R	2
zero_fraction/Size|
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R’’’’2
zero_fraction/LessEqual/y”
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: 2
zero_fraction/LessEqual×
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: *0
else_branch!R
zero_fraction_cond_false_5430*
output_shapes
: */
then_branch R
zero_fraction_cond_true_54292
zero_fraction/cond
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: 2
zero_fraction/cond/Identity·
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: 2&
$zero_fraction/counts_to_fraction/sub°
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: 2'
%zero_fraction/counts_to_fraction/Cast§
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2)
'zero_fraction/counts_to_fraction/Cast_1Ų
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: 2*
(zero_fraction/counts_to_fraction/truediv
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: 2
zero_fraction/fractionr
CastCast,cast_linear_zero_fraction_total_size_size_11*

DstT0*

SrcT0	*
_output_shapes
: 2
CastG
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T02
mul"
mul	mul_0:z:0*
_input_shapes
:: "Æ?
save/Const:0save/Identity_52:0save/restore_all (5 @F8"ū
asset_filepathsē
ä
asset_path:0
asset_path_1:0
asset_path_2:0
asset_path_3:0
asset_path_4:0
asset_path_5:0
asset_path_6:0
asset_path_7:0
jlinear/linear_model/linear_model/linear_model/education_indicator/education_lookup/hash_table/asset_path:0
tlinear/linear_model/linear_model/linear_model/marital-status_indicator/marital-status_lookup/hash_table/asset_path:0
tlinear/linear_model/linear_model/linear_model/native-country_indicator/native-country_lookup/hash_table/asset_path:0
llinear/linear_model/linear_model/linear_model/occupation_indicator/occupation_lookup/hash_table/asset_path:0
`linear/linear_model/linear_model/linear_model/race_indicator/race_lookup/hash_table/asset_path:0
plinear/linear_model/linear_model/linear_model/relationship_indicator/relationship_lookup/hash_table/asset_path:0
^linear/linear_model/linear_model/linear_model/sex_indicator/sex_lookup/hash_table/asset_path:0
jlinear/linear_model/linear_model/linear_model/workclass_indicator/workclass_lookup/hash_table/asset_path:0"~
global_stepom
k
global_step:0global_step/Assign!global_step/Read/ReadVariableOp:0(2global_step/Initializer/zeros:0H"ļ
saved_model_assetsŲ*Õ
J
+type.googleapis.com/tensorflow.AssetFileDef

asset_path:0	workclass
L
+type.googleapis.com/tensorflow.AssetFileDef

asset_path_1:0	education
Q
+type.googleapis.com/tensorflow.AssetFileDef"

asset_path_2:0marital-status
M
+type.googleapis.com/tensorflow.AssetFileDef

asset_path_3:0
occupation
O
+type.googleapis.com/tensorflow.AssetFileDef 

asset_path_4:0relationship
G
+type.googleapis.com/tensorflow.AssetFileDef

asset_path_5:0race
F
+type.googleapis.com/tensorflow.AssetFileDef

asset_path_6:0sex
Q
+type.googleapis.com/tensorflow.AssetFileDef"

asset_path_7:0native-country
Ø
+type.googleapis.com/tensorflow.AssetFileDefy
l
jlinear/linear_model/linear_model/linear_model/education_indicator/education_lookup/hash_table/asset_path:0	education
ø
+type.googleapis.com/tensorflow.AssetFileDef
v
tlinear/linear_model/linear_model/linear_model/marital-status_indicator/marital-status_lookup/hash_table/asset_path:0marital-status
ø
+type.googleapis.com/tensorflow.AssetFileDef
v
tlinear/linear_model/linear_model/linear_model/native-country_indicator/native-country_lookup/hash_table/asset_path:0native-country
«
+type.googleapis.com/tensorflow.AssetFileDef|
n
llinear/linear_model/linear_model/linear_model/occupation_indicator/occupation_lookup/hash_table/asset_path:0
occupation

+type.googleapis.com/tensorflow.AssetFileDefj
b
`linear/linear_model/linear_model/linear_model/race_indicator/race_lookup/hash_table/asset_path:0race
²
+type.googleapis.com/tensorflow.AssetFileDef
r
plinear/linear_model/linear_model/linear_model/relationship_indicator/relationship_lookup/hash_table/asset_path:0relationship

+type.googleapis.com/tensorflow.AssetFileDefg
`
^linear/linear_model/linear_model/linear_model/sex_indicator/sex_lookup/hash_table/asset_path:0sex
Ø
+type.googleapis.com/tensorflow.AssetFileDefy
l
jlinear/linear_model/linear_model/linear_model/workclass_indicator/workclass_lookup/hash_table/asset_path:0	workclass"%
saved_model_main_op


group_deps"A
	summaries4
2
linear/bias:0
!linear/fraction_of_zero_weights:0"	
table_initializer	
	
6transform/transform/key_value_init/LookupTableImportV2
linear/linear_model/linear_model/linear_model/education_indicator/education_lookup/hash_table/table_init/InitializeTableFromTextFileV2
linear/linear_model/linear_model/linear_model/marital-status_indicator/marital-status_lookup/hash_table/table_init/InitializeTableFromTextFileV2
linear/linear_model/linear_model/linear_model/native-country_indicator/native-country_lookup/hash_table/table_init/InitializeTableFromTextFileV2
linear/linear_model/linear_model/linear_model/occupation_indicator/occupation_lookup/hash_table/table_init/InitializeTableFromTextFileV2
|linear/linear_model/linear_model/linear_model/race_indicator/race_lookup/hash_table/table_init/InitializeTableFromTextFileV2
linear/linear_model/linear_model/linear_model/relationship_indicator/relationship_lookup/hash_table/table_init/InitializeTableFromTextFileV2
zlinear/linear_model/linear_model/linear_model/sex_indicator/sex_lookup/hash_table/table_init/InitializeTableFromTextFileV2
linear/linear_model/linear_model/linear_model/workclass_indicator/workclass_lookup/hash_table/table_init/InitializeTableFromTextFileV2"²!
trainable_variables!!

(linear/linear_model/age/weights/part_0:0-linear/linear_model/age/weights/part_0/Assign<linear/linear_model/age/weights/part_0/Read/ReadVariableOp:0"-
linear/linear_model/age/weights  "(2:linear/linear_model/age/weights/part_0/Initializer/zeros:08
³
1linear/linear_model/capital-gain/weights/part_0:06linear/linear_model/capital-gain/weights/part_0/AssignElinear/linear_model/capital-gain/weights/part_0/Read/ReadVariableOp:0"6
(linear/linear_model/capital-gain/weights  "(2Clinear/linear_model/capital-gain/weights/part_0/Initializer/zeros:08
³
1linear/linear_model/capital-loss/weights/part_0:06linear/linear_model/capital-loss/weights/part_0/AssignElinear/linear_model/capital-loss/weights/part_0/Read/ReadVariableOp:0"6
(linear/linear_model/capital-loss/weights  "(2Clinear/linear_model/capital-loss/weights/part_0/Initializer/zeros:08
Ö
8linear/linear_model/education_indicator/weights/part_0:0=linear/linear_model/education_indicator/weights/part_0/AssignLlinear/linear_model/education_indicator/weights/part_0/Read/ReadVariableOp:0"=
/linear/linear_model/education_indicator/weights  "(2Jlinear/linear_model/education_indicator/weights/part_0/Initializer/zeros:08
½
3linear/linear_model/hours-per-week/weights/part_0:08linear/linear_model/hours-per-week/weights/part_0/AssignGlinear/linear_model/hours-per-week/weights/part_0/Read/ReadVariableOp:0"8
*linear/linear_model/hours-per-week/weights  "(2Elinear/linear_model/hours-per-week/weights/part_0/Initializer/zeros:08
ļ
=linear/linear_model/marital-status_indicator/weights/part_0:0Blinear/linear_model/marital-status_indicator/weights/part_0/AssignQlinear/linear_model/marital-status_indicator/weights/part_0/Read/ReadVariableOp:0"B
4linear/linear_model/marital-status_indicator/weights  "(2Olinear/linear_model/marital-status_indicator/weights/part_0/Initializer/zeros:08
ļ
=linear/linear_model/native-country_indicator/weights/part_0:0Blinear/linear_model/native-country_indicator/weights/part_0/AssignQlinear/linear_model/native-country_indicator/weights/part_0/Read/ReadVariableOp:0"B
4linear/linear_model/native-country_indicator/weights*  "*(2Olinear/linear_model/native-country_indicator/weights/part_0/Initializer/zeros:08
Ū
9linear/linear_model/occupation_indicator/weights/part_0:0>linear/linear_model/occupation_indicator/weights/part_0/AssignMlinear/linear_model/occupation_indicator/weights/part_0/Read/ReadVariableOp:0">
0linear/linear_model/occupation_indicator/weights  "(2Klinear/linear_model/occupation_indicator/weights/part_0/Initializer/zeros:08
½
3linear/linear_model/race_indicator/weights/part_0:08linear/linear_model/race_indicator/weights/part_0/AssignGlinear/linear_model/race_indicator/weights/part_0/Read/ReadVariableOp:0"8
*linear/linear_model/race_indicator/weights  "(2Elinear/linear_model/race_indicator/weights/part_0/Initializer/zeros:08
å
;linear/linear_model/relationship_indicator/weights/part_0:0@linear/linear_model/relationship_indicator/weights/part_0/AssignOlinear/linear_model/relationship_indicator/weights/part_0/Read/ReadVariableOp:0"@
2linear/linear_model/relationship_indicator/weights  "(2Mlinear/linear_model/relationship_indicator/weights/part_0/Initializer/zeros:08
ø
2linear/linear_model/sex_indicator/weights/part_0:07linear/linear_model/sex_indicator/weights/part_0/AssignFlinear/linear_model/sex_indicator/weights/part_0/Read/ReadVariableOp:0"7
)linear/linear_model/sex_indicator/weights  "(2Dlinear/linear_model/sex_indicator/weights/part_0/Initializer/zeros:08
Ö
8linear/linear_model/workclass_indicator/weights/part_0:0=linear/linear_model/workclass_indicator/weights/part_0/AssignLlinear/linear_model/workclass_indicator/weights/part_0/Read/ReadVariableOp:0"=
/linear/linear_model/workclass_indicator/weights	  "	(2Jlinear/linear_model/workclass_indicator/weights/part_0/Initializer/zeros:08

)linear/linear_model/bias_weights/part_0:0.linear/linear_model/bias_weights/part_0/Assign=linear/linear_model/bias_weights/part_0/Read/ReadVariableOp:0"+
 linear/linear_model/bias_weights "(2;linear/linear_model/bias_weights/part_0/Initializer/zeros:08""
	variables""
k
global_step:0global_step/Assign!global_step/Read/ReadVariableOp:0(2global_step/Initializer/zeros:0H

(linear/linear_model/age/weights/part_0:0-linear/linear_model/age/weights/part_0/Assign<linear/linear_model/age/weights/part_0/Read/ReadVariableOp:0"-
linear/linear_model/age/weights  "(2:linear/linear_model/age/weights/part_0/Initializer/zeros:08
³
1linear/linear_model/capital-gain/weights/part_0:06linear/linear_model/capital-gain/weights/part_0/AssignElinear/linear_model/capital-gain/weights/part_0/Read/ReadVariableOp:0"6
(linear/linear_model/capital-gain/weights  "(2Clinear/linear_model/capital-gain/weights/part_0/Initializer/zeros:08
³
1linear/linear_model/capital-loss/weights/part_0:06linear/linear_model/capital-loss/weights/part_0/AssignElinear/linear_model/capital-loss/weights/part_0/Read/ReadVariableOp:0"6
(linear/linear_model/capital-loss/weights  "(2Clinear/linear_model/capital-loss/weights/part_0/Initializer/zeros:08
Ö
8linear/linear_model/education_indicator/weights/part_0:0=linear/linear_model/education_indicator/weights/part_0/AssignLlinear/linear_model/education_indicator/weights/part_0/Read/ReadVariableOp:0"=
/linear/linear_model/education_indicator/weights  "(2Jlinear/linear_model/education_indicator/weights/part_0/Initializer/zeros:08
½
3linear/linear_model/hours-per-week/weights/part_0:08linear/linear_model/hours-per-week/weights/part_0/AssignGlinear/linear_model/hours-per-week/weights/part_0/Read/ReadVariableOp:0"8
*linear/linear_model/hours-per-week/weights  "(2Elinear/linear_model/hours-per-week/weights/part_0/Initializer/zeros:08
ļ
=linear/linear_model/marital-status_indicator/weights/part_0:0Blinear/linear_model/marital-status_indicator/weights/part_0/AssignQlinear/linear_model/marital-status_indicator/weights/part_0/Read/ReadVariableOp:0"B
4linear/linear_model/marital-status_indicator/weights  "(2Olinear/linear_model/marital-status_indicator/weights/part_0/Initializer/zeros:08
ļ
=linear/linear_model/native-country_indicator/weights/part_0:0Blinear/linear_model/native-country_indicator/weights/part_0/AssignQlinear/linear_model/native-country_indicator/weights/part_0/Read/ReadVariableOp:0"B
4linear/linear_model/native-country_indicator/weights*  "*(2Olinear/linear_model/native-country_indicator/weights/part_0/Initializer/zeros:08
Ū
9linear/linear_model/occupation_indicator/weights/part_0:0>linear/linear_model/occupation_indicator/weights/part_0/AssignMlinear/linear_model/occupation_indicator/weights/part_0/Read/ReadVariableOp:0">
0linear/linear_model/occupation_indicator/weights  "(2Klinear/linear_model/occupation_indicator/weights/part_0/Initializer/zeros:08
½
3linear/linear_model/race_indicator/weights/part_0:08linear/linear_model/race_indicator/weights/part_0/AssignGlinear/linear_model/race_indicator/weights/part_0/Read/ReadVariableOp:0"8
*linear/linear_model/race_indicator/weights  "(2Elinear/linear_model/race_indicator/weights/part_0/Initializer/zeros:08
å
;linear/linear_model/relationship_indicator/weights/part_0:0@linear/linear_model/relationship_indicator/weights/part_0/AssignOlinear/linear_model/relationship_indicator/weights/part_0/Read/ReadVariableOp:0"@
2linear/linear_model/relationship_indicator/weights  "(2Mlinear/linear_model/relationship_indicator/weights/part_0/Initializer/zeros:08
ø
2linear/linear_model/sex_indicator/weights/part_0:07linear/linear_model/sex_indicator/weights/part_0/AssignFlinear/linear_model/sex_indicator/weights/part_0/Read/ReadVariableOp:0"7
)linear/linear_model/sex_indicator/weights  "(2Dlinear/linear_model/sex_indicator/weights/part_0/Initializer/zeros:08
Ö
8linear/linear_model/workclass_indicator/weights/part_0:0=linear/linear_model/workclass_indicator/weights/part_0/AssignLlinear/linear_model/workclass_indicator/weights/part_0/Read/ReadVariableOp:0"=
/linear/linear_model/workclass_indicator/weights	  "	(2Jlinear/linear_model/workclass_indicator/weights/part_0/Initializer/zeros:08

)linear/linear_model/bias_weights/part_0:0.linear/linear_model/bias_weights/part_0/Assign=linear/linear_model/bias_weights/part_0/Read/ReadVariableOp:0"+
 linear/linear_model/bias_weights "(2;linear/linear_model/bias_weights/part_0/Initializer/zeros:08*å
classificationŅ
3
inputs)
input_example_tensor:0’’’’’’’’’4
classes)
linear/head/Tile:0’’’’’’’’’H
scores>
'linear/head/predictions/probabilities:0’’’’’’’’’tensorflow/serving/classify*ł
predictķ
5
examples)
input_example_tensor:0’’’’’’’’’F
all_class_ids5
linear/head/predictions/Tile:0’’’’’’’’’F
all_classes7
 linear/head/predictions/Tile_1:0’’’’’’’’’H
	class_ids;
$linear/head/predictions/ExpandDims:0	’’’’’’’’’G
classes<
%linear/head/predictions/str_classes:0’’’’’’’’’E
logistic9
"linear/head/predictions/logistic:0’’’’’’’’’]
logitsS
<linear/linear_model/linear_model/linear_model/weighted_sum:0’’’’’’’’’O
probabilities>
'linear/head/predictions/probabilities:0’’’’’’’’’tensorflow/serving/predict*¦

regression
3
inputs)
input_example_tensor:0’’’’’’’’’D
outputs9
"linear/head/predictions/logistic:0’’’’’’’’’tensorflow/serving/regress*ę
serving_defaultŅ
3
inputs)
input_example_tensor:0’’’’’’’’’4
classes)
linear/head/Tile:0’’’’’’’’’H
scores>
'linear/head/predictions/probabilities:0’’’’’’’’’tensorflow/serving/classify