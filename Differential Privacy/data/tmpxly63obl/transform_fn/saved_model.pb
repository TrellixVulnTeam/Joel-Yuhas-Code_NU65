”Ä
÷Ł
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
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeint
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
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
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
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
=
Mul
x"T
y"T
z"T"
Ttype:
2	
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
b
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:

2	
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
:
Sub
x"T
y"T
z"T"
Ttype:
2	
&
	ZerosLike
x"T
y"T"	
Ttype"	transform*2.1.02unknown×
J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  Į
L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  “B
L
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *    
L
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *OĆG
L
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *    
L
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *  E
L
Const_6Const*
_output_shapes
: *
dtype0*
valueB
 *  æ
L
Const_7Const*
_output_shapes
: *
dtype0*
valueB
 *  ĘB
L
Const_8Const*
_output_shapes
: *
dtype0*
valueB
 *  æ
L
Const_9Const*
_output_shapes
: *
dtype0*
valueB
 *  A
J
Const_10Const*
_output_shapes
: *
dtype0	*
value	B	 R	

Const_11Const*
_output_shapes
: *
dtype0*Y
valuePBN BHC:\Users\Spooky\AppData\Local\Temp\tmps1tvw_2v\tftransform_tmp\workclass
J
Const_12Const*
_output_shapes
: *
dtype0	*
value	B	 R

Const_13Const*
_output_shapes
: *
dtype0*Y
valuePBN BHC:\Users\Spooky\AppData\Local\Temp\tmps1tvw_2v\tftransform_tmp\education
J
Const_14Const*
_output_shapes
: *
dtype0	*
value	B	 R

Const_15Const*
_output_shapes
: *
dtype0*^
valueUBS BMC:\Users\Spooky\AppData\Local\Temp\tmps1tvw_2v\tftransform_tmp\marital-status
J
Const_16Const*
_output_shapes
: *
dtype0	*
value	B	 R

Const_17Const*
_output_shapes
: *
dtype0*Z
valueQBO BIC:\Users\Spooky\AppData\Local\Temp\tmps1tvw_2v\tftransform_tmp\occupation
J
Const_18Const*
_output_shapes
: *
dtype0	*
value	B	 R

Const_19Const*
_output_shapes
: *
dtype0*\
valueSBQ BKC:\Users\Spooky\AppData\Local\Temp\tmps1tvw_2v\tftransform_tmp\relationship
J
Const_20Const*
_output_shapes
: *
dtype0	*
value	B	 R

Const_21Const*
_output_shapes
: *
dtype0*T
valueKBI BCC:\Users\Spooky\AppData\Local\Temp\tmps1tvw_2v\tftransform_tmp\race
J
Const_22Const*
_output_shapes
: *
dtype0	*
value	B	 R

Const_23Const*
_output_shapes
: *
dtype0*S
valueJBH BBC:\Users\Spooky\AppData\Local\Temp\tmps1tvw_2v\tftransform_tmp\sex
J
Const_24Const*
_output_shapes
: *
dtype0	*
value	B	 R*

Const_25Const*
_output_shapes
: *
dtype0*^
valueUBS BMC:\Users\Spooky\AppData\Local\Temp\tmps1tvw_2v\tftransform_tmp\native-country
o
transform/inputs/agePlaceholder*#
_output_shapes
:’’’’’’’’’*
dtype0*
shape:’’’’’’’’’
z
transform/inputs/F_capital-gainPlaceholder*#
_output_shapes
:’’’’’’’’’*
dtype0*
shape:’’’’’’’’’
z
transform/inputs/F_capital-lossPlaceholder*#
_output_shapes
:’’’’’’’’’*
dtype0*
shape:’’’’’’’’’
u
transform/inputs/educationPlaceholder*#
_output_shapes
:’’’’’’’’’*
dtype0*
shape:’’’’’’’’’
o
&transform/inputs/F_education-num/shapePlaceholder*
_output_shapes
:*
dtype0	*
shape:

'transform/inputs/F_education-num/valuesPlaceholder*#
_output_shapes
:’’’’’’’’’*
dtype0*
shape:’’’’’’’’’

(transform/inputs/F_education-num/indicesPlaceholder*'
_output_shapes
:’’’’’’’’’*
dtype0	*
shape:’’’’’’’’’
|
!transform/inputs/F_hours-per-weekPlaceholder*#
_output_shapes
:’’’’’’’’’*
dtype0*
shape:’’’’’’’’’
q
transform/inputs/labelPlaceholder*#
_output_shapes
:’’’’’’’’’*
dtype0*
shape:’’’’’’’’’
|
!transform/inputs/F_marital-statusPlaceholder*#
_output_shapes
:’’’’’’’’’*
dtype0*
shape:’’’’’’’’’
|
!transform/inputs/F_native-countryPlaceholder*#
_output_shapes
:’’’’’’’’’*
dtype0*
shape:’’’’’’’’’
v
transform/inputs/occupationPlaceholder*#
_output_shapes
:’’’’’’’’’*
dtype0*
shape:’’’’’’’’’
p
transform/inputs/racePlaceholder*#
_output_shapes
:’’’’’’’’’*
dtype0*
shape:’’’’’’’’’
x
transform/inputs/relationshipPlaceholder*#
_output_shapes
:’’’’’’’’’*
dtype0*
shape:’’’’’’’’’
o
transform/inputs/sexPlaceholder*#
_output_shapes
:’’’’’’’’’*
dtype0*
shape:’’’’’’’’’
u
transform/inputs/workclassPlaceholder*#
_output_shapes
:’’’’’’’’’*
dtype0*
shape:’’’’’’’’’
p
 transform/inputs/inputs/age_copyIdentitytransform/inputs/age*
T0*#
_output_shapes
:’’’’’’’’’

+transform/inputs/inputs/F_capital-gain_copyIdentitytransform/inputs/F_capital-gain*
T0*#
_output_shapes
:’’’’’’’’’

+transform/inputs/inputs/F_capital-loss_copyIdentitytransform/inputs/F_capital-loss*
T0*#
_output_shapes
:’’’’’’’’’
|
&transform/inputs/inputs/education_copyIdentitytransform/inputs/education*
T0*#
_output_shapes
:’’’’’’’’’

4transform/inputs/inputs/F_education-num/indices_copyIdentity(transform/inputs/F_education-num/indices*
T0	*'
_output_shapes
:’’’’’’’’’

3transform/inputs/inputs/F_education-num/values_copyIdentity'transform/inputs/F_education-num/values*
T0*#
_output_shapes
:’’’’’’’’’

2transform/inputs/inputs/F_education-num/shape_copyIdentity&transform/inputs/F_education-num/shape*
T0	*
_output_shapes
:

-transform/inputs/inputs/F_hours-per-week_copyIdentity!transform/inputs/F_hours-per-week*
T0*#
_output_shapes
:’’’’’’’’’
t
"transform/inputs/inputs/label_copyIdentitytransform/inputs/label*
T0*#
_output_shapes
:’’’’’’’’’

-transform/inputs/inputs/F_marital-status_copyIdentity!transform/inputs/F_marital-status*
T0*#
_output_shapes
:’’’’’’’’’

-transform/inputs/inputs/F_native-country_copyIdentity!transform/inputs/F_native-country*
T0*#
_output_shapes
:’’’’’’’’’
~
'transform/inputs/inputs/occupation_copyIdentitytransform/inputs/occupation*
T0*#
_output_shapes
:’’’’’’’’’
r
!transform/inputs/inputs/race_copyIdentitytransform/inputs/race*
T0*#
_output_shapes
:’’’’’’’’’

)transform/inputs/inputs/relationship_copyIdentitytransform/inputs/relationship*
T0*#
_output_shapes
:’’’’’’’’’
p
 transform/inputs/inputs/sex_copyIdentitytransform/inputs/sex*
T0*#
_output_shapes
:’’’’’’’’’
|
&transform/inputs/inputs/workclass_copyIdentitytransform/inputs/workclass*
T0*#
_output_shapes
:’’’’’’’’’
r
(transform/scale_to_0_1/min_and_max/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
·
&transform/scale_to_0_1/min_and_max/MaxMax transform/inputs/inputs/age_copy(transform/scale_to_0_1/min_and_max/Const*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 

-transform/scale_to_0_1/min_and_max/zeros_like	ZerosLike transform/inputs/inputs/age_copy*
T0*#
_output_shapes
:’’’’’’’’’
¬
&transform/scale_to_0_1/min_and_max/subSub-transform/scale_to_0_1/min_and_max/zeros_like transform/inputs/inputs/age_copy*
T0*#
_output_shapes
:’’’’’’’’’
t
*transform/scale_to_0_1/min_and_max/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
Į
(transform/scale_to_0_1/min_and_max/Max_1Max&transform/scale_to_0_1/min_and_max/sub*transform/scale_to_0_1/min_and_max/Const_1*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
k
(transform/scale_to_0_1/min_and_max/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
m
*transform/scale_to_0_1/min_and_max/Shape_1Const*
_output_shapes
: *
dtype0*
valueB 
Ł
7transform/scale_to_0_1/min_and_max/assert_equal_1/EqualEqual(transform/scale_to_0_1/min_and_max/Shape*transform/scale_to_0_1/min_and_max/Shape_1*
T0*
_output_shapes
: *
incompatible_shape_error(

7transform/scale_to_0_1/min_and_max/assert_equal_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
ć
5transform/scale_to_0_1/min_and_max/assert_equal_1/AllAll7transform/scale_to_0_1/min_and_max/assert_equal_1/Equal7transform/scale_to_0_1/min_and_max/assert_equal_1/Const*

Tidx0*
_output_shapes
: *
	keep_dims( 
Ŗ
>transform/scale_to_0_1/min_and_max/assert_equal_1/Assert/ConstConst*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:
Ø
@transform/scale_to_0_1/min_and_max/assert_equal_1/Assert/Const_1Const*
_output_shapes
: *
dtype0*8
value/B- B'x (scale_to_0_1/min_and_max/Shape:0) = 
Ŗ
@transform/scale_to_0_1/min_and_max/assert_equal_1/Assert/Const_2Const*
_output_shapes
: *
dtype0*:
value1B/ B)y (scale_to_0_1/min_and_max/Shape_1:0) = 
²
Ftransform/scale_to_0_1/min_and_max/assert_equal_1/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:
®
Ftransform/scale_to_0_1/min_and_max/assert_equal_1/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*8
value/B- B'x (scale_to_0_1/min_and_max/Shape:0) = 
°
Ftransform/scale_to_0_1/min_and_max/assert_equal_1/Assert/Assert/data_3Const*
_output_shapes
: *
dtype0*:
value1B/ B)y (scale_to_0_1/min_and_max/Shape_1:0) = 
Ļ
?transform/scale_to_0_1/min_and_max/assert_equal_1/Assert/AssertAssert5transform/scale_to_0_1/min_and_max/assert_equal_1/AllFtransform/scale_to_0_1/min_and_max/assert_equal_1/Assert/Assert/data_0Ftransform/scale_to_0_1/min_and_max/assert_equal_1/Assert/Assert/data_1(transform/scale_to_0_1/min_and_max/ShapeFtransform/scale_to_0_1/min_and_max/assert_equal_1/Assert/Assert/data_3*transform/scale_to_0_1/min_and_max/Shape_1*
T	
2*
	summarize
Ä
+transform/scale_to_0_1/min_and_max/IdentityIdentity(transform/scale_to_0_1/min_and_max/Max_1@^transform/scale_to_0_1/min_and_max/assert_equal_1/Assert/Assert*
T0*
_output_shapes
: 
Ä
-transform/scale_to_0_1/min_and_max/Identity_1Identity&transform/scale_to_0_1/min_and_max/Max@^transform/scale_to_0_1/min_and_max/assert_equal_1/Assert/Assert*
T0*
_output_shapes
: 
o
*transform/scale_to_0_1/min_and_max/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *  Ą’

(transform/scale_to_0_1/min_and_max/IsInfIsInf+transform/scale_to_0_1/min_and_max/Identity*
T0*
_output_shapes
: 
©
&transform/scale_to_0_1/min_and_max/addAddV2+transform/scale_to_0_1/min_and_max/Identity*transform/scale_to_0_1/min_and_max/Const_2*
T0*
_output_shapes
: 
×
+transform/scale_to_0_1/min_and_max/SelectV2SelectV2(transform/scale_to_0_1/min_and_max/IsInf&transform/scale_to_0_1/min_and_max/add+transform/scale_to_0_1/min_and_max/Identity*
T0*
_output_shapes
: 
o
*transform/scale_to_0_1/min_and_max/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *  Ą’

*transform/scale_to_0_1/min_and_max/IsInf_1IsInf-transform/scale_to_0_1/min_and_max/Identity_1*
T0*
_output_shapes
: 
­
(transform/scale_to_0_1/min_and_max/add_1AddV2-transform/scale_to_0_1/min_and_max/Identity_1*transform/scale_to_0_1/min_and_max/Const_3*
T0*
_output_shapes
: 
ß
-transform/scale_to_0_1/min_and_max/SelectV2_1SelectV2*transform/scale_to_0_1/min_and_max/IsInf_1(transform/scale_to_0_1/min_and_max/add_1-transform/scale_to_0_1/min_and_max/Identity_1*
T0*
_output_shapes
: 
o
.transform/scale_to_0_1/min_and_max/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 
q
0transform/scale_to_0_1/min_and_max/Placeholder_1Placeholder*
_output_shapes
: *
dtype0*
shape: 
o
*transform/scale_to_0_1/min_and_max/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    

(transform/scale_to_0_1/min_and_max/sub_1Sub*transform/scale_to_0_1/min_and_max/sub_1/xConst*
T0*
_output_shapes
: 
|
transform/scale_to_0_1/ShapeShape transform/inputs/inputs/age_copy*
T0*
_output_shapes
:*
out_type0

transform/scale_to_0_1/subSub transform/inputs/inputs/age_copy(transform/scale_to_0_1/min_and_max/sub_1*
T0*#
_output_shapes
:’’’’’’’’’
w
transform/scale_to_0_1/LessLess(transform/scale_to_0_1/min_and_max/sub_1Const_1*
T0*
_output_shapes
: 
x
!transform/scale_to_0_1/zeros_like	ZerosLiketransform/scale_to_0_1/sub*
T0*#
_output_shapes
:’’’’’’’’’

transform/scale_to_0_1/CastCasttransform/scale_to_0_1/Less*

DstT0*

SrcT0
*
Truncate( *
_output_shapes
: 

transform/scale_to_0_1/addAddV2!transform/scale_to_0_1/zeros_liketransform/scale_to_0_1/Cast*
T0*#
_output_shapes
:’’’’’’’’’

transform/scale_to_0_1/Cast_1Casttransform/scale_to_0_1/add*

DstT0
*

SrcT0*
Truncate( *#
_output_shapes
:’’’’’’’’’
w
transform/scale_to_0_1/sub_1SubConst_1(transform/scale_to_0_1/min_and_max/sub_1*
T0*
_output_shapes
: 

transform/scale_to_0_1/truedivRealDivtransform/scale_to_0_1/subtransform/scale_to_0_1/sub_1*
T0*#
_output_shapes
:’’’’’’’’’
f
!transform/scale_to_0_1/Fill/valueConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
¤
transform/scale_to_0_1/FillFilltransform/scale_to_0_1/Shape!transform/scale_to_0_1/Fill/value*
T0*#
_output_shapes
:’’’’’’’’’*

index_type0
µ
transform/scale_to_0_1/SelectV2SelectV2transform/scale_to_0_1/Cast_1transform/scale_to_0_1/truedivtransform/scale_to_0_1/Fill*
T0*#
_output_shapes
:’’’’’’’’’
a
transform/scale_to_0_1/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?

transform/scale_to_0_1/mulMultransform/scale_to_0_1/SelectV2transform/scale_to_0_1/mul/y*
T0*#
_output_shapes
:’’’’’’’’’
c
transform/scale_to_0_1/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    

transform/scale_to_0_1/add_1AddV2transform/scale_to_0_1/multransform/scale_to_0_1/add_1/y*
T0*#
_output_shapes
:’’’’’’’’’
t
*transform/scale_to_0_1_1/min_and_max/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
Ę
(transform/scale_to_0_1_1/min_and_max/MaxMax+transform/inputs/inputs/F_capital-gain_copy*transform/scale_to_0_1_1/min_and_max/Const*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 

/transform/scale_to_0_1_1/min_and_max/zeros_like	ZerosLike+transform/inputs/inputs/F_capital-gain_copy*
T0*#
_output_shapes
:’’’’’’’’’
»
(transform/scale_to_0_1_1/min_and_max/subSub/transform/scale_to_0_1_1/min_and_max/zeros_like+transform/inputs/inputs/F_capital-gain_copy*
T0*#
_output_shapes
:’’’’’’’’’
v
,transform/scale_to_0_1_1/min_and_max/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
Ē
*transform/scale_to_0_1_1/min_and_max/Max_1Max(transform/scale_to_0_1_1/min_and_max/sub,transform/scale_to_0_1_1/min_and_max/Const_1*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
m
*transform/scale_to_0_1_1/min_and_max/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
o
,transform/scale_to_0_1_1/min_and_max/Shape_1Const*
_output_shapes
: *
dtype0*
valueB 
ß
9transform/scale_to_0_1_1/min_and_max/assert_equal_1/EqualEqual*transform/scale_to_0_1_1/min_and_max/Shape,transform/scale_to_0_1_1/min_and_max/Shape_1*
T0*
_output_shapes
: *
incompatible_shape_error(

9transform/scale_to_0_1_1/min_and_max/assert_equal_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
é
7transform/scale_to_0_1_1/min_and_max/assert_equal_1/AllAll9transform/scale_to_0_1_1/min_and_max/assert_equal_1/Equal9transform/scale_to_0_1_1/min_and_max/assert_equal_1/Const*

Tidx0*
_output_shapes
: *
	keep_dims( 
¬
@transform/scale_to_0_1_1/min_and_max/assert_equal_1/Assert/ConstConst*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:
¬
Btransform/scale_to_0_1_1/min_and_max/assert_equal_1/Assert/Const_1Const*
_output_shapes
: *
dtype0*:
value1B/ B)x (scale_to_0_1_1/min_and_max/Shape:0) = 
®
Btransform/scale_to_0_1_1/min_and_max/assert_equal_1/Assert/Const_2Const*
_output_shapes
: *
dtype0*<
value3B1 B+y (scale_to_0_1_1/min_and_max/Shape_1:0) = 
“
Htransform/scale_to_0_1_1/min_and_max/assert_equal_1/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:
²
Htransform/scale_to_0_1_1/min_and_max/assert_equal_1/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*:
value1B/ B)x (scale_to_0_1_1/min_and_max/Shape:0) = 
“
Htransform/scale_to_0_1_1/min_and_max/assert_equal_1/Assert/Assert/data_3Const*
_output_shapes
: *
dtype0*<
value3B1 B+y (scale_to_0_1_1/min_and_max/Shape_1:0) = 
Ż
Atransform/scale_to_0_1_1/min_and_max/assert_equal_1/Assert/AssertAssert7transform/scale_to_0_1_1/min_and_max/assert_equal_1/AllHtransform/scale_to_0_1_1/min_and_max/assert_equal_1/Assert/Assert/data_0Htransform/scale_to_0_1_1/min_and_max/assert_equal_1/Assert/Assert/data_1*transform/scale_to_0_1_1/min_and_max/ShapeHtransform/scale_to_0_1_1/min_and_max/assert_equal_1/Assert/Assert/data_3,transform/scale_to_0_1_1/min_and_max/Shape_1*
T	
2*
	summarize
Ź
-transform/scale_to_0_1_1/min_and_max/IdentityIdentity*transform/scale_to_0_1_1/min_and_max/Max_1B^transform/scale_to_0_1_1/min_and_max/assert_equal_1/Assert/Assert*
T0*
_output_shapes
: 
Ź
/transform/scale_to_0_1_1/min_and_max/Identity_1Identity(transform/scale_to_0_1_1/min_and_max/MaxB^transform/scale_to_0_1_1/min_and_max/assert_equal_1/Assert/Assert*
T0*
_output_shapes
: 
q
,transform/scale_to_0_1_1/min_and_max/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *  Ą’

*transform/scale_to_0_1_1/min_and_max/IsInfIsInf-transform/scale_to_0_1_1/min_and_max/Identity*
T0*
_output_shapes
: 
Æ
(transform/scale_to_0_1_1/min_and_max/addAddV2-transform/scale_to_0_1_1/min_and_max/Identity,transform/scale_to_0_1_1/min_and_max/Const_2*
T0*
_output_shapes
: 
ß
-transform/scale_to_0_1_1/min_and_max/SelectV2SelectV2*transform/scale_to_0_1_1/min_and_max/IsInf(transform/scale_to_0_1_1/min_and_max/add-transform/scale_to_0_1_1/min_and_max/Identity*
T0*
_output_shapes
: 
q
,transform/scale_to_0_1_1/min_and_max/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *  Ą’

,transform/scale_to_0_1_1/min_and_max/IsInf_1IsInf/transform/scale_to_0_1_1/min_and_max/Identity_1*
T0*
_output_shapes
: 
³
*transform/scale_to_0_1_1/min_and_max/add_1AddV2/transform/scale_to_0_1_1/min_and_max/Identity_1,transform/scale_to_0_1_1/min_and_max/Const_3*
T0*
_output_shapes
: 
ē
/transform/scale_to_0_1_1/min_and_max/SelectV2_1SelectV2,transform/scale_to_0_1_1/min_and_max/IsInf_1*transform/scale_to_0_1_1/min_and_max/add_1/transform/scale_to_0_1_1/min_and_max/Identity_1*
T0*
_output_shapes
: 
q
0transform/scale_to_0_1_1/min_and_max/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 
s
2transform/scale_to_0_1_1/min_and_max/Placeholder_1Placeholder*
_output_shapes
: *
dtype0*
shape: 
q
,transform/scale_to_0_1_1/min_and_max/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    

*transform/scale_to_0_1_1/min_and_max/sub_1Sub,transform/scale_to_0_1_1/min_and_max/sub_1/xConst_2*
T0*
_output_shapes
: 

transform/scale_to_0_1_1/ShapeShape+transform/inputs/inputs/F_capital-gain_copy*
T0*
_output_shapes
:*
out_type0
Ŗ
transform/scale_to_0_1_1/subSub+transform/inputs/inputs/F_capital-gain_copy*transform/scale_to_0_1_1/min_and_max/sub_1*
T0*#
_output_shapes
:’’’’’’’’’
{
transform/scale_to_0_1_1/LessLess*transform/scale_to_0_1_1/min_and_max/sub_1Const_3*
T0*
_output_shapes
: 
|
#transform/scale_to_0_1_1/zeros_like	ZerosLiketransform/scale_to_0_1_1/sub*
T0*#
_output_shapes
:’’’’’’’’’

transform/scale_to_0_1_1/CastCasttransform/scale_to_0_1_1/Less*

DstT0*

SrcT0
*
Truncate( *
_output_shapes
: 

transform/scale_to_0_1_1/addAddV2#transform/scale_to_0_1_1/zeros_liketransform/scale_to_0_1_1/Cast*
T0*#
_output_shapes
:’’’’’’’’’

transform/scale_to_0_1_1/Cast_1Casttransform/scale_to_0_1_1/add*

DstT0
*

SrcT0*
Truncate( *#
_output_shapes
:’’’’’’’’’
{
transform/scale_to_0_1_1/sub_1SubConst_3*transform/scale_to_0_1_1/min_and_max/sub_1*
T0*
_output_shapes
: 

 transform/scale_to_0_1_1/truedivRealDivtransform/scale_to_0_1_1/subtransform/scale_to_0_1_1/sub_1*
T0*#
_output_shapes
:’’’’’’’’’
h
#transform/scale_to_0_1_1/Fill/valueConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
Ŗ
transform/scale_to_0_1_1/FillFilltransform/scale_to_0_1_1/Shape#transform/scale_to_0_1_1/Fill/value*
T0*#
_output_shapes
:’’’’’’’’’*

index_type0
½
!transform/scale_to_0_1_1/SelectV2SelectV2transform/scale_to_0_1_1/Cast_1 transform/scale_to_0_1_1/truedivtransform/scale_to_0_1_1/Fill*
T0*#
_output_shapes
:’’’’’’’’’
c
transform/scale_to_0_1_1/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?

transform/scale_to_0_1_1/mulMul!transform/scale_to_0_1_1/SelectV2transform/scale_to_0_1_1/mul/y*
T0*#
_output_shapes
:’’’’’’’’’
e
 transform/scale_to_0_1_1/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    

transform/scale_to_0_1_1/add_1AddV2transform/scale_to_0_1_1/mul transform/scale_to_0_1_1/add_1/y*
T0*#
_output_shapes
:’’’’’’’’’
t
*transform/scale_to_0_1_2/min_and_max/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
Ę
(transform/scale_to_0_1_2/min_and_max/MaxMax+transform/inputs/inputs/F_capital-loss_copy*transform/scale_to_0_1_2/min_and_max/Const*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 

/transform/scale_to_0_1_2/min_and_max/zeros_like	ZerosLike+transform/inputs/inputs/F_capital-loss_copy*
T0*#
_output_shapes
:’’’’’’’’’
»
(transform/scale_to_0_1_2/min_and_max/subSub/transform/scale_to_0_1_2/min_and_max/zeros_like+transform/inputs/inputs/F_capital-loss_copy*
T0*#
_output_shapes
:’’’’’’’’’
v
,transform/scale_to_0_1_2/min_and_max/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
Ē
*transform/scale_to_0_1_2/min_and_max/Max_1Max(transform/scale_to_0_1_2/min_and_max/sub,transform/scale_to_0_1_2/min_and_max/Const_1*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
m
*transform/scale_to_0_1_2/min_and_max/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
o
,transform/scale_to_0_1_2/min_and_max/Shape_1Const*
_output_shapes
: *
dtype0*
valueB 
ß
9transform/scale_to_0_1_2/min_and_max/assert_equal_1/EqualEqual*transform/scale_to_0_1_2/min_and_max/Shape,transform/scale_to_0_1_2/min_and_max/Shape_1*
T0*
_output_shapes
: *
incompatible_shape_error(

9transform/scale_to_0_1_2/min_and_max/assert_equal_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
é
7transform/scale_to_0_1_2/min_and_max/assert_equal_1/AllAll9transform/scale_to_0_1_2/min_and_max/assert_equal_1/Equal9transform/scale_to_0_1_2/min_and_max/assert_equal_1/Const*

Tidx0*
_output_shapes
: *
	keep_dims( 
¬
@transform/scale_to_0_1_2/min_and_max/assert_equal_1/Assert/ConstConst*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:
¬
Btransform/scale_to_0_1_2/min_and_max/assert_equal_1/Assert/Const_1Const*
_output_shapes
: *
dtype0*:
value1B/ B)x (scale_to_0_1_2/min_and_max/Shape:0) = 
®
Btransform/scale_to_0_1_2/min_and_max/assert_equal_1/Assert/Const_2Const*
_output_shapes
: *
dtype0*<
value3B1 B+y (scale_to_0_1_2/min_and_max/Shape_1:0) = 
“
Htransform/scale_to_0_1_2/min_and_max/assert_equal_1/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:
²
Htransform/scale_to_0_1_2/min_and_max/assert_equal_1/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*:
value1B/ B)x (scale_to_0_1_2/min_and_max/Shape:0) = 
“
Htransform/scale_to_0_1_2/min_and_max/assert_equal_1/Assert/Assert/data_3Const*
_output_shapes
: *
dtype0*<
value3B1 B+y (scale_to_0_1_2/min_and_max/Shape_1:0) = 
Ż
Atransform/scale_to_0_1_2/min_and_max/assert_equal_1/Assert/AssertAssert7transform/scale_to_0_1_2/min_and_max/assert_equal_1/AllHtransform/scale_to_0_1_2/min_and_max/assert_equal_1/Assert/Assert/data_0Htransform/scale_to_0_1_2/min_and_max/assert_equal_1/Assert/Assert/data_1*transform/scale_to_0_1_2/min_and_max/ShapeHtransform/scale_to_0_1_2/min_and_max/assert_equal_1/Assert/Assert/data_3,transform/scale_to_0_1_2/min_and_max/Shape_1*
T	
2*
	summarize
Ź
-transform/scale_to_0_1_2/min_and_max/IdentityIdentity*transform/scale_to_0_1_2/min_and_max/Max_1B^transform/scale_to_0_1_2/min_and_max/assert_equal_1/Assert/Assert*
T0*
_output_shapes
: 
Ź
/transform/scale_to_0_1_2/min_and_max/Identity_1Identity(transform/scale_to_0_1_2/min_and_max/MaxB^transform/scale_to_0_1_2/min_and_max/assert_equal_1/Assert/Assert*
T0*
_output_shapes
: 
q
,transform/scale_to_0_1_2/min_and_max/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *  Ą’

*transform/scale_to_0_1_2/min_and_max/IsInfIsInf-transform/scale_to_0_1_2/min_and_max/Identity*
T0*
_output_shapes
: 
Æ
(transform/scale_to_0_1_2/min_and_max/addAddV2-transform/scale_to_0_1_2/min_and_max/Identity,transform/scale_to_0_1_2/min_and_max/Const_2*
T0*
_output_shapes
: 
ß
-transform/scale_to_0_1_2/min_and_max/SelectV2SelectV2*transform/scale_to_0_1_2/min_and_max/IsInf(transform/scale_to_0_1_2/min_and_max/add-transform/scale_to_0_1_2/min_and_max/Identity*
T0*
_output_shapes
: 
q
,transform/scale_to_0_1_2/min_and_max/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *  Ą’

,transform/scale_to_0_1_2/min_and_max/IsInf_1IsInf/transform/scale_to_0_1_2/min_and_max/Identity_1*
T0*
_output_shapes
: 
³
*transform/scale_to_0_1_2/min_and_max/add_1AddV2/transform/scale_to_0_1_2/min_and_max/Identity_1,transform/scale_to_0_1_2/min_and_max/Const_3*
T0*
_output_shapes
: 
ē
/transform/scale_to_0_1_2/min_and_max/SelectV2_1SelectV2,transform/scale_to_0_1_2/min_and_max/IsInf_1*transform/scale_to_0_1_2/min_and_max/add_1/transform/scale_to_0_1_2/min_and_max/Identity_1*
T0*
_output_shapes
: 
q
0transform/scale_to_0_1_2/min_and_max/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 
s
2transform/scale_to_0_1_2/min_and_max/Placeholder_1Placeholder*
_output_shapes
: *
dtype0*
shape: 
q
,transform/scale_to_0_1_2/min_and_max/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    

*transform/scale_to_0_1_2/min_and_max/sub_1Sub,transform/scale_to_0_1_2/min_and_max/sub_1/xConst_4*
T0*
_output_shapes
: 

transform/scale_to_0_1_2/ShapeShape+transform/inputs/inputs/F_capital-loss_copy*
T0*
_output_shapes
:*
out_type0
Ŗ
transform/scale_to_0_1_2/subSub+transform/inputs/inputs/F_capital-loss_copy*transform/scale_to_0_1_2/min_and_max/sub_1*
T0*#
_output_shapes
:’’’’’’’’’
{
transform/scale_to_0_1_2/LessLess*transform/scale_to_0_1_2/min_and_max/sub_1Const_5*
T0*
_output_shapes
: 
|
#transform/scale_to_0_1_2/zeros_like	ZerosLiketransform/scale_to_0_1_2/sub*
T0*#
_output_shapes
:’’’’’’’’’

transform/scale_to_0_1_2/CastCasttransform/scale_to_0_1_2/Less*

DstT0*

SrcT0
*
Truncate( *
_output_shapes
: 

transform/scale_to_0_1_2/addAddV2#transform/scale_to_0_1_2/zeros_liketransform/scale_to_0_1_2/Cast*
T0*#
_output_shapes
:’’’’’’’’’

transform/scale_to_0_1_2/Cast_1Casttransform/scale_to_0_1_2/add*

DstT0
*

SrcT0*
Truncate( *#
_output_shapes
:’’’’’’’’’
{
transform/scale_to_0_1_2/sub_1SubConst_5*transform/scale_to_0_1_2/min_and_max/sub_1*
T0*
_output_shapes
: 

 transform/scale_to_0_1_2/truedivRealDivtransform/scale_to_0_1_2/subtransform/scale_to_0_1_2/sub_1*
T0*#
_output_shapes
:’’’’’’’’’
h
#transform/scale_to_0_1_2/Fill/valueConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
Ŗ
transform/scale_to_0_1_2/FillFilltransform/scale_to_0_1_2/Shape#transform/scale_to_0_1_2/Fill/value*
T0*#
_output_shapes
:’’’’’’’’’*

index_type0
½
!transform/scale_to_0_1_2/SelectV2SelectV2transform/scale_to_0_1_2/Cast_1 transform/scale_to_0_1_2/truedivtransform/scale_to_0_1_2/Fill*
T0*#
_output_shapes
:’’’’’’’’’
c
transform/scale_to_0_1_2/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?

transform/scale_to_0_1_2/mulMul!transform/scale_to_0_1_2/SelectV2transform/scale_to_0_1_2/mul/y*
T0*#
_output_shapes
:’’’’’’’’’
e
 transform/scale_to_0_1_2/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    

transform/scale_to_0_1_2/add_1AddV2transform/scale_to_0_1_2/mul transform/scale_to_0_1_2/add_1/y*
T0*#
_output_shapes
:’’’’’’’’’
t
*transform/scale_to_0_1_3/min_and_max/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
Č
(transform/scale_to_0_1_3/min_and_max/MaxMax-transform/inputs/inputs/F_hours-per-week_copy*transform/scale_to_0_1_3/min_and_max/Const*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 

/transform/scale_to_0_1_3/min_and_max/zeros_like	ZerosLike-transform/inputs/inputs/F_hours-per-week_copy*
T0*#
_output_shapes
:’’’’’’’’’
½
(transform/scale_to_0_1_3/min_and_max/subSub/transform/scale_to_0_1_3/min_and_max/zeros_like-transform/inputs/inputs/F_hours-per-week_copy*
T0*#
_output_shapes
:’’’’’’’’’
v
,transform/scale_to_0_1_3/min_and_max/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
Ē
*transform/scale_to_0_1_3/min_and_max/Max_1Max(transform/scale_to_0_1_3/min_and_max/sub,transform/scale_to_0_1_3/min_and_max/Const_1*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
m
*transform/scale_to_0_1_3/min_and_max/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
o
,transform/scale_to_0_1_3/min_and_max/Shape_1Const*
_output_shapes
: *
dtype0*
valueB 
ß
9transform/scale_to_0_1_3/min_and_max/assert_equal_1/EqualEqual*transform/scale_to_0_1_3/min_and_max/Shape,transform/scale_to_0_1_3/min_and_max/Shape_1*
T0*
_output_shapes
: *
incompatible_shape_error(

9transform/scale_to_0_1_3/min_and_max/assert_equal_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
é
7transform/scale_to_0_1_3/min_and_max/assert_equal_1/AllAll9transform/scale_to_0_1_3/min_and_max/assert_equal_1/Equal9transform/scale_to_0_1_3/min_and_max/assert_equal_1/Const*

Tidx0*
_output_shapes
: *
	keep_dims( 
¬
@transform/scale_to_0_1_3/min_and_max/assert_equal_1/Assert/ConstConst*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:
¬
Btransform/scale_to_0_1_3/min_and_max/assert_equal_1/Assert/Const_1Const*
_output_shapes
: *
dtype0*:
value1B/ B)x (scale_to_0_1_3/min_and_max/Shape:0) = 
®
Btransform/scale_to_0_1_3/min_and_max/assert_equal_1/Assert/Const_2Const*
_output_shapes
: *
dtype0*<
value3B1 B+y (scale_to_0_1_3/min_and_max/Shape_1:0) = 
“
Htransform/scale_to_0_1_3/min_and_max/assert_equal_1/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:
²
Htransform/scale_to_0_1_3/min_and_max/assert_equal_1/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*:
value1B/ B)x (scale_to_0_1_3/min_and_max/Shape:0) = 
“
Htransform/scale_to_0_1_3/min_and_max/assert_equal_1/Assert/Assert/data_3Const*
_output_shapes
: *
dtype0*<
value3B1 B+y (scale_to_0_1_3/min_and_max/Shape_1:0) = 
Ż
Atransform/scale_to_0_1_3/min_and_max/assert_equal_1/Assert/AssertAssert7transform/scale_to_0_1_3/min_and_max/assert_equal_1/AllHtransform/scale_to_0_1_3/min_and_max/assert_equal_1/Assert/Assert/data_0Htransform/scale_to_0_1_3/min_and_max/assert_equal_1/Assert/Assert/data_1*transform/scale_to_0_1_3/min_and_max/ShapeHtransform/scale_to_0_1_3/min_and_max/assert_equal_1/Assert/Assert/data_3,transform/scale_to_0_1_3/min_and_max/Shape_1*
T	
2*
	summarize
Ź
-transform/scale_to_0_1_3/min_and_max/IdentityIdentity*transform/scale_to_0_1_3/min_and_max/Max_1B^transform/scale_to_0_1_3/min_and_max/assert_equal_1/Assert/Assert*
T0*
_output_shapes
: 
Ź
/transform/scale_to_0_1_3/min_and_max/Identity_1Identity(transform/scale_to_0_1_3/min_and_max/MaxB^transform/scale_to_0_1_3/min_and_max/assert_equal_1/Assert/Assert*
T0*
_output_shapes
: 
q
,transform/scale_to_0_1_3/min_and_max/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *  Ą’

*transform/scale_to_0_1_3/min_and_max/IsInfIsInf-transform/scale_to_0_1_3/min_and_max/Identity*
T0*
_output_shapes
: 
Æ
(transform/scale_to_0_1_3/min_and_max/addAddV2-transform/scale_to_0_1_3/min_and_max/Identity,transform/scale_to_0_1_3/min_and_max/Const_2*
T0*
_output_shapes
: 
ß
-transform/scale_to_0_1_3/min_and_max/SelectV2SelectV2*transform/scale_to_0_1_3/min_and_max/IsInf(transform/scale_to_0_1_3/min_and_max/add-transform/scale_to_0_1_3/min_and_max/Identity*
T0*
_output_shapes
: 
q
,transform/scale_to_0_1_3/min_and_max/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *  Ą’

,transform/scale_to_0_1_3/min_and_max/IsInf_1IsInf/transform/scale_to_0_1_3/min_and_max/Identity_1*
T0*
_output_shapes
: 
³
*transform/scale_to_0_1_3/min_and_max/add_1AddV2/transform/scale_to_0_1_3/min_and_max/Identity_1,transform/scale_to_0_1_3/min_and_max/Const_3*
T0*
_output_shapes
: 
ē
/transform/scale_to_0_1_3/min_and_max/SelectV2_1SelectV2,transform/scale_to_0_1_3/min_and_max/IsInf_1*transform/scale_to_0_1_3/min_and_max/add_1/transform/scale_to_0_1_3/min_and_max/Identity_1*
T0*
_output_shapes
: 
q
0transform/scale_to_0_1_3/min_and_max/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 
s
2transform/scale_to_0_1_3/min_and_max/Placeholder_1Placeholder*
_output_shapes
: *
dtype0*
shape: 
q
,transform/scale_to_0_1_3/min_and_max/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    

*transform/scale_to_0_1_3/min_and_max/sub_1Sub,transform/scale_to_0_1_3/min_and_max/sub_1/xConst_6*
T0*
_output_shapes
: 

transform/scale_to_0_1_3/ShapeShape-transform/inputs/inputs/F_hours-per-week_copy*
T0*
_output_shapes
:*
out_type0
¬
transform/scale_to_0_1_3/subSub-transform/inputs/inputs/F_hours-per-week_copy*transform/scale_to_0_1_3/min_and_max/sub_1*
T0*#
_output_shapes
:’’’’’’’’’
{
transform/scale_to_0_1_3/LessLess*transform/scale_to_0_1_3/min_and_max/sub_1Const_7*
T0*
_output_shapes
: 
|
#transform/scale_to_0_1_3/zeros_like	ZerosLiketransform/scale_to_0_1_3/sub*
T0*#
_output_shapes
:’’’’’’’’’

transform/scale_to_0_1_3/CastCasttransform/scale_to_0_1_3/Less*

DstT0*

SrcT0
*
Truncate( *
_output_shapes
: 

transform/scale_to_0_1_3/addAddV2#transform/scale_to_0_1_3/zeros_liketransform/scale_to_0_1_3/Cast*
T0*#
_output_shapes
:’’’’’’’’’

transform/scale_to_0_1_3/Cast_1Casttransform/scale_to_0_1_3/add*

DstT0
*

SrcT0*
Truncate( *#
_output_shapes
:’’’’’’’’’
{
transform/scale_to_0_1_3/sub_1SubConst_7*transform/scale_to_0_1_3/min_and_max/sub_1*
T0*
_output_shapes
: 

 transform/scale_to_0_1_3/truedivRealDivtransform/scale_to_0_1_3/subtransform/scale_to_0_1_3/sub_1*
T0*#
_output_shapes
:’’’’’’’’’
h
#transform/scale_to_0_1_3/Fill/valueConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
Ŗ
transform/scale_to_0_1_3/FillFilltransform/scale_to_0_1_3/Shape#transform/scale_to_0_1_3/Fill/value*
T0*#
_output_shapes
:’’’’’’’’’*

index_type0
½
!transform/scale_to_0_1_3/SelectV2SelectV2transform/scale_to_0_1_3/Cast_1 transform/scale_to_0_1_3/truedivtransform/scale_to_0_1_3/Fill*
T0*#
_output_shapes
:’’’’’’’’’
c
transform/scale_to_0_1_3/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?

transform/scale_to_0_1_3/mulMul!transform/scale_to_0_1_3/SelectV2transform/scale_to_0_1_3/mul/y*
T0*#
_output_shapes
:’’’’’’’’’
e
 transform/scale_to_0_1_3/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    

transform/scale_to_0_1_3/add_1AddV2transform/scale_to_0_1_3/mul transform/scale_to_0_1_3/add_1/y*
T0*#
_output_shapes
:’’’’’’’’’
g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Ī
transform/strided_sliceStridedSlice2transform/inputs/inputs/F_education-num/shape_copytransform/strided_slice/stacktransform/strided_slice/stack_1transform/strided_slice/stack_2*
Index0*
T0	*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
f
$transform/SparseTensor/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
£
"transform/SparseTensor/dense_shapePacktransform/strided_slice$transform/SparseTensor/dense_shape/1*
N*
T0	*
_output_shapes
:*

axis 
j
%transform/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
ø
transform/SparseToDenseSparseToDense4transform/inputs/inputs/F_education-num/indices_copy"transform/SparseTensor/dense_shape3transform/inputs/inputs/F_education-num/values_copy%transform/SparseToDense/default_value*
T0*
Tindices0	*'
_output_shapes
:’’’’’’’’’*
validate_indices(
z
transform/SqueezeSqueezetransform/SparseToDense*
T0*#
_output_shapes
:’’’’’’’’’*
squeeze_dims

t
*transform/scale_to_0_1_4/min_and_max/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
¬
(transform/scale_to_0_1_4/min_and_max/MaxMaxtransform/Squeeze*transform/scale_to_0_1_4/min_and_max/Const*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
}
/transform/scale_to_0_1_4/min_and_max/zeros_like	ZerosLiketransform/Squeeze*
T0*#
_output_shapes
:’’’’’’’’’
”
(transform/scale_to_0_1_4/min_and_max/subSub/transform/scale_to_0_1_4/min_and_max/zeros_liketransform/Squeeze*
T0*#
_output_shapes
:’’’’’’’’’
v
,transform/scale_to_0_1_4/min_and_max/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
Ē
*transform/scale_to_0_1_4/min_and_max/Max_1Max(transform/scale_to_0_1_4/min_and_max/sub,transform/scale_to_0_1_4/min_and_max/Const_1*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
m
*transform/scale_to_0_1_4/min_and_max/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
o
,transform/scale_to_0_1_4/min_and_max/Shape_1Const*
_output_shapes
: *
dtype0*
valueB 
ß
9transform/scale_to_0_1_4/min_and_max/assert_equal_1/EqualEqual*transform/scale_to_0_1_4/min_and_max/Shape,transform/scale_to_0_1_4/min_and_max/Shape_1*
T0*
_output_shapes
: *
incompatible_shape_error(

9transform/scale_to_0_1_4/min_and_max/assert_equal_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
é
7transform/scale_to_0_1_4/min_and_max/assert_equal_1/AllAll9transform/scale_to_0_1_4/min_and_max/assert_equal_1/Equal9transform/scale_to_0_1_4/min_and_max/assert_equal_1/Const*

Tidx0*
_output_shapes
: *
	keep_dims( 
¬
@transform/scale_to_0_1_4/min_and_max/assert_equal_1/Assert/ConstConst*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:
¬
Btransform/scale_to_0_1_4/min_and_max/assert_equal_1/Assert/Const_1Const*
_output_shapes
: *
dtype0*:
value1B/ B)x (scale_to_0_1_4/min_and_max/Shape:0) = 
®
Btransform/scale_to_0_1_4/min_and_max/assert_equal_1/Assert/Const_2Const*
_output_shapes
: *
dtype0*<
value3B1 B+y (scale_to_0_1_4/min_and_max/Shape_1:0) = 
“
Htransform/scale_to_0_1_4/min_and_max/assert_equal_1/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:
²
Htransform/scale_to_0_1_4/min_and_max/assert_equal_1/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*:
value1B/ B)x (scale_to_0_1_4/min_and_max/Shape:0) = 
“
Htransform/scale_to_0_1_4/min_and_max/assert_equal_1/Assert/Assert/data_3Const*
_output_shapes
: *
dtype0*<
value3B1 B+y (scale_to_0_1_4/min_and_max/Shape_1:0) = 
Ż
Atransform/scale_to_0_1_4/min_and_max/assert_equal_1/Assert/AssertAssert7transform/scale_to_0_1_4/min_and_max/assert_equal_1/AllHtransform/scale_to_0_1_4/min_and_max/assert_equal_1/Assert/Assert/data_0Htransform/scale_to_0_1_4/min_and_max/assert_equal_1/Assert/Assert/data_1*transform/scale_to_0_1_4/min_and_max/ShapeHtransform/scale_to_0_1_4/min_and_max/assert_equal_1/Assert/Assert/data_3,transform/scale_to_0_1_4/min_and_max/Shape_1*
T	
2*
	summarize
Ź
-transform/scale_to_0_1_4/min_and_max/IdentityIdentity*transform/scale_to_0_1_4/min_and_max/Max_1B^transform/scale_to_0_1_4/min_and_max/assert_equal_1/Assert/Assert*
T0*
_output_shapes
: 
Ź
/transform/scale_to_0_1_4/min_and_max/Identity_1Identity(transform/scale_to_0_1_4/min_and_max/MaxB^transform/scale_to_0_1_4/min_and_max/assert_equal_1/Assert/Assert*
T0*
_output_shapes
: 
q
,transform/scale_to_0_1_4/min_and_max/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *  Ą’

*transform/scale_to_0_1_4/min_and_max/IsInfIsInf-transform/scale_to_0_1_4/min_and_max/Identity*
T0*
_output_shapes
: 
Æ
(transform/scale_to_0_1_4/min_and_max/addAddV2-transform/scale_to_0_1_4/min_and_max/Identity,transform/scale_to_0_1_4/min_and_max/Const_2*
T0*
_output_shapes
: 
ß
-transform/scale_to_0_1_4/min_and_max/SelectV2SelectV2*transform/scale_to_0_1_4/min_and_max/IsInf(transform/scale_to_0_1_4/min_and_max/add-transform/scale_to_0_1_4/min_and_max/Identity*
T0*
_output_shapes
: 
q
,transform/scale_to_0_1_4/min_and_max/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *  Ą’

,transform/scale_to_0_1_4/min_and_max/IsInf_1IsInf/transform/scale_to_0_1_4/min_and_max/Identity_1*
T0*
_output_shapes
: 
³
*transform/scale_to_0_1_4/min_and_max/add_1AddV2/transform/scale_to_0_1_4/min_and_max/Identity_1,transform/scale_to_0_1_4/min_and_max/Const_3*
T0*
_output_shapes
: 
ē
/transform/scale_to_0_1_4/min_and_max/SelectV2_1SelectV2,transform/scale_to_0_1_4/min_and_max/IsInf_1*transform/scale_to_0_1_4/min_and_max/add_1/transform/scale_to_0_1_4/min_and_max/Identity_1*
T0*
_output_shapes
: 
q
0transform/scale_to_0_1_4/min_and_max/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 
s
2transform/scale_to_0_1_4/min_and_max/Placeholder_1Placeholder*
_output_shapes
: *
dtype0*
shape: 
q
,transform/scale_to_0_1_4/min_and_max/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    

*transform/scale_to_0_1_4/min_and_max/sub_1Sub,transform/scale_to_0_1_4/min_and_max/sub_1/xConst_8*
T0*
_output_shapes
: 
o
transform/scale_to_0_1_4/ShapeShapetransform/Squeeze*
T0*
_output_shapes
:*
out_type0

transform/scale_to_0_1_4/subSubtransform/Squeeze*transform/scale_to_0_1_4/min_and_max/sub_1*
T0*#
_output_shapes
:’’’’’’’’’
{
transform/scale_to_0_1_4/LessLess*transform/scale_to_0_1_4/min_and_max/sub_1Const_9*
T0*
_output_shapes
: 
|
#transform/scale_to_0_1_4/zeros_like	ZerosLiketransform/scale_to_0_1_4/sub*
T0*#
_output_shapes
:’’’’’’’’’

transform/scale_to_0_1_4/CastCasttransform/scale_to_0_1_4/Less*

DstT0*

SrcT0
*
Truncate( *
_output_shapes
: 

transform/scale_to_0_1_4/addAddV2#transform/scale_to_0_1_4/zeros_liketransform/scale_to_0_1_4/Cast*
T0*#
_output_shapes
:’’’’’’’’’

transform/scale_to_0_1_4/Cast_1Casttransform/scale_to_0_1_4/add*

DstT0
*

SrcT0*
Truncate( *#
_output_shapes
:’’’’’’’’’
{
transform/scale_to_0_1_4/sub_1SubConst_9*transform/scale_to_0_1_4/min_and_max/sub_1*
T0*
_output_shapes
: 

 transform/scale_to_0_1_4/truedivRealDivtransform/scale_to_0_1_4/subtransform/scale_to_0_1_4/sub_1*
T0*#
_output_shapes
:’’’’’’’’’
h
#transform/scale_to_0_1_4/Fill/valueConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
Ŗ
transform/scale_to_0_1_4/FillFilltransform/scale_to_0_1_4/Shape#transform/scale_to_0_1_4/Fill/value*
T0*#
_output_shapes
:’’’’’’’’’*

index_type0
½
!transform/scale_to_0_1_4/SelectV2SelectV2transform/scale_to_0_1_4/Cast_1 transform/scale_to_0_1_4/truedivtransform/scale_to_0_1_4/Fill*
T0*#
_output_shapes
:’’’’’’’’’
c
transform/scale_to_0_1_4/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?

transform/scale_to_0_1_4/mulMul!transform/scale_to_0_1_4/SelectV2transform/scale_to_0_1_4/mul/y*
T0*#
_output_shapes
:’’’’’’’’’
e
 transform/scale_to_0_1_4/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    

transform/scale_to_0_1_4/add_1AddV2transform/scale_to_0_1_4/mul transform/scale_to_0_1_4/add_1/y*
T0*#
_output_shapes
:’’’’’’’’’
u
"transform/vocabulary/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’
Æ
transform/vocabulary/ReshapeReshape&transform/inputs/inputs/workclass_copy"transform/vocabulary/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:’’’’’’’’’
s
2transform/vocabulary/workclass_unpruned_vocab_sizePlaceholder*
_output_shapes
: *
dtype0	*
shape: 
a
 transform/vocabulary/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 
w
$transform/vocabulary_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’
³
transform/vocabulary_1/ReshapeReshape&transform/inputs/inputs/education_copy$transform/vocabulary_1/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:’’’’’’’’’
u
4transform/vocabulary_1/education_unpruned_vocab_sizePlaceholder*
_output_shapes
: *
dtype0	*
shape: 
c
"transform/vocabulary_1/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 
w
$transform/vocabulary_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’
ŗ
transform/vocabulary_2/ReshapeReshape-transform/inputs/inputs/F_marital-status_copy$transform/vocabulary_2/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:’’’’’’’’’
z
9transform/vocabulary_2/marital-status_unpruned_vocab_sizePlaceholder*
_output_shapes
: *
dtype0	*
shape: 
c
"transform/vocabulary_2/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 
w
$transform/vocabulary_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’
“
transform/vocabulary_3/ReshapeReshape'transform/inputs/inputs/occupation_copy$transform/vocabulary_3/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:’’’’’’’’’
v
5transform/vocabulary_3/occupation_unpruned_vocab_sizePlaceholder*
_output_shapes
: *
dtype0	*
shape: 
c
"transform/vocabulary_3/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 
w
$transform/vocabulary_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’
¶
transform/vocabulary_4/ReshapeReshape)transform/inputs/inputs/relationship_copy$transform/vocabulary_4/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:’’’’’’’’’
x
7transform/vocabulary_4/relationship_unpruned_vocab_sizePlaceholder*
_output_shapes
: *
dtype0	*
shape: 
c
"transform/vocabulary_4/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 
w
$transform/vocabulary_5/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’
®
transform/vocabulary_5/ReshapeReshape!transform/inputs/inputs/race_copy$transform/vocabulary_5/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:’’’’’’’’’
p
/transform/vocabulary_5/race_unpruned_vocab_sizePlaceholder*
_output_shapes
: *
dtype0	*
shape: 
c
"transform/vocabulary_5/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 
w
$transform/vocabulary_6/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’
­
transform/vocabulary_6/ReshapeReshape transform/inputs/inputs/sex_copy$transform/vocabulary_6/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:’’’’’’’’’
o
.transform/vocabulary_6/sex_unpruned_vocab_sizePlaceholder*
_output_shapes
: *
dtype0	*
shape: 
c
"transform/vocabulary_6/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 
w
$transform/vocabulary_7/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’
ŗ
transform/vocabulary_7/ReshapeReshape-transform/inputs/inputs/F_native-country_copy$transform/vocabulary_7/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:’’’’’’’’’
z
9transform/vocabulary_7/native-country_unpruned_vocab_sizePlaceholder*
_output_shapes
: *
dtype0	*
shape: 
c
"transform/vocabulary_7/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 
W
transform/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
W
transform/range/limitConst*
_output_shapes
: *
dtype0*
value	B :
W
transform/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :

transform/rangeRangetransform/range/starttransform/range/limittransform/range/delta*

Tidx0*
_output_shapes
:
k
transform/CastCasttransform/range*

DstT0	*

SrcT0*
Truncate( *
_output_shapes
:
b
transform/keysConst*
_output_shapes
:*
dtype0* 
valueBB>50KB<=50K
Z
transform/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
’’’’’’’’’
Ļ
transform/hash_tableHashTableV2*
_output_shapes
: *
	container *
	key_dtype0*@
shared_name1/hash_table_e4480895-1ada-44fb-b767-e5e0a0aa4bef*
use_node_name_sharing( *
value_dtype0	

,transform/key_value_init/LookupTableImportV2LookupTableImportV2transform/hash_tabletransform/keystransform/Cast*	
Tin0*

Tout0	
É
-transform/hash_table_Lookup/LookupTableFindV2LookupTableFindV2transform/hash_table"transform/inputs/inputs/label_copytransform/Const*	
Tin0*

Tout0	*#
_output_shapes
:’’’’’’’’’

transform/initNoOp

transform/init_1NoOp

initNoOp"Æ"u
asset_filepathsb
`

Const_11:0

Const_13:0

Const_15:0

Const_17:0

Const_19:0

Const_21:0

Const_23:0

Const_25:0"ķ
saved_model_assetsÖ*Ó
H
+type.googleapis.com/tensorflow.AssetFileDef


Const_11:0	workclass
H
+type.googleapis.com/tensorflow.AssetFileDef


Const_13:0	education
M
+type.googleapis.com/tensorflow.AssetFileDef


Const_15:0marital-status
I
+type.googleapis.com/tensorflow.AssetFileDef


Const_17:0
occupation
K
+type.googleapis.com/tensorflow.AssetFileDef


Const_19:0relationship
C
+type.googleapis.com/tensorflow.AssetFileDef


Const_21:0race
B
+type.googleapis.com/tensorflow.AssetFileDef


Const_23:0sex
M
+type.googleapis.com/tensorflow.AssetFileDef


Const_25:0native-country"E
table_initializer0
.
,transform/key_value_init/LookupTableImportV2*
transform_signature
0
age)
transform/inputs/age:0’’’’’’’’’
D
capital-gain4
!transform/inputs/F_capital-gain:0’’’’’’’’’
D
capital-loss4
!transform/inputs/F_capital-loss:0’’’’’’’’’
<
	education/
transform/inputs/education:0’’’’’’’’’
“
education-num¢’’’’’’’’’’’’’’’’’’"
)transform/inputs/F_education-num/values:0*transform/inputs/F_education-num/indices:0(transform/inputs/F_education-num/shape:0
H
hours-per-week6
#transform/inputs/F_hours-per-week:0’’’’’’’’’
4
label+
transform/inputs/label:0’’’’’’’’’
H
marital-status6
#transform/inputs/F_marital-status:0’’’’’’’’’
H
native-country6
#transform/inputs/F_native-country:0’’’’’’’’’
>

occupation0
transform/inputs/occupation:0’’’’’’’’’
2
race*
transform/inputs/race:0’’’’’’’’’
B
relationship2
transform/inputs/relationship:0’’’’’’’’’
0
sex)
transform/inputs/sex:0’’’’’’’’’
<
	workclass/
transform/inputs/workclass:0’’’’’’’’’8
age1
transform/scale_to_0_1/add_1:0’’’’’’’’’C
capital-gain3
 transform/scale_to_0_1_1/add_1:0’’’’’’’’’C
capital-loss3
 transform/scale_to_0_1_2/add_1:0’’’’’’’’’H
	education;
(transform/inputs/inputs/education_copy:0’’’’’’’’’D
education-num3
 transform/scale_to_0_1_4/add_1:0’’’’’’’’’E
hours-per-week3
 transform/scale_to_0_1_3/add_1:0’’’’’’’’’K
labelB
/transform/hash_table_Lookup/LookupTableFindV2:0	’’’’’’’’’T
marital-statusB
/transform/inputs/inputs/F_marital-status_copy:0’’’’’’’’’T
native-countryB
/transform/inputs/inputs/F_native-country_copy:0’’’’’’’’’J

occupation<
)transform/inputs/inputs/occupation_copy:0’’’’’’’’’>
race6
#transform/inputs/inputs/race_copy:0’’’’’’’’’N
relationship>
+transform/inputs/inputs/relationship_copy:0’’’’’’’’’<
sex5
"transform/inputs/inputs/sex_copy:0’’’’’’’’’H
	workclass;
(transform/inputs/inputs/workclass_copy:0’’’’’’’’’tensorflow/serving/predict