ти
џв
B
AssignVariableOp
resource
value"dtype"
dtypetypeѕ
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
Џ
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
ѓ
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
delete_old_dirsbool(ѕ
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
dtypetypeѕ
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
list(type)(0ѕ
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
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
Й
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
executor_typestring ѕ
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
-
Tanh
x"T
y"T"
Ttype:

2
ќ
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ"serve*2.6.02v2.6.0-rc2-32-g919f693420e8┬Ї
ѓ
conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:2* 
shared_nameconv2d_3/kernel
{
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*&
_output_shapes
:2*
dtype0
r
conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_nameconv2d_3/bias
k
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes
:2*
dtype0
ѓ
conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:22* 
shared_nameconv2d_4/kernel
{
#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*&
_output_shapes
:22*
dtype0
r
conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_nameconv2d_4/bias
k
!conv2d_4/bias/Read/ReadVariableOpReadVariableOpconv2d_4/bias*
_output_shapes
:2*
dtype0
ѓ
conv2d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:22* 
shared_nameconv2d_5/kernel
{
#conv2d_5/kernel/Read/ReadVariableOpReadVariableOpconv2d_5/kernel*&
_output_shapes
:22*
dtype0
r
conv2d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_nameconv2d_5/bias
k
!conv2d_5/bias/Read/ReadVariableOpReadVariableOpconv2d_5/bias*
_output_shapes
:2*
dtype0
y
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ў*2*
shared_namedense_2/kernel
r
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes
:	ў*2*
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:2*
dtype0
x
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*
shared_namedense_3/kernel
q
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes

:2*
dtype0
d
SGD/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
SGD/iter
]
SGD/iter/Read/ReadVariableOpReadVariableOpSGD/iter*
_output_shapes
: *
dtype0	
f
	SGD/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	SGD/decay
_
SGD/decay/Read/ReadVariableOpReadVariableOp	SGD/decay*
_output_shapes
: *
dtype0
v
SGD/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameSGD/learning_rate
o
%SGD/learning_rate/Read/ReadVariableOpReadVariableOpSGD/learning_rate*
_output_shapes
: *
dtype0
l
SGD/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameSGD/momentum
e
 SGD/momentum/Read/ReadVariableOpReadVariableOpSGD/momentum*
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

NoOpNoOp
┐'
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Щ&
value­&Bь& BТ&
ђ
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
		optimizer


signatures
#_self_saveable_object_factories
regularization_losses
trainable_variables
	variables
	keras_api
Ї

kernel
bias
#_self_saveable_object_factories
trainable_variables
regularization_losses
	variables
	keras_api
w
#_self_saveable_object_factories
trainable_variables
regularization_losses
	variables
	keras_api
Ї

kernel
bias
#_self_saveable_object_factories
trainable_variables
 regularization_losses
!	variables
"	keras_api
w
##_self_saveable_object_factories
$trainable_variables
%regularization_losses
&	variables
'	keras_api
Ї

(kernel
)bias
#*_self_saveable_object_factories
+trainable_variables
,regularization_losses
-	variables
.	keras_api
w
#/_self_saveable_object_factories
0trainable_variables
1regularization_losses
2	variables
3	keras_api
Ї

4kernel
5bias
#6_self_saveable_object_factories
7trainable_variables
8regularization_losses
9	variables
:	keras_api
Ѓ

;kernel
#<_self_saveable_object_factories
=trainable_variables
>regularization_losses
?	variables
@	keras_api
6
Aiter
	Bdecay
Clearning_rate
Dmomentum
 
 
 
?
0
1
2
3
(4
)5
46
57
;8
?
0
1
2
3
(4
)5
46
57
;8
Г
Emetrics
regularization_losses
Flayer_regularization_losses
trainable_variables
Glayer_metrics
	variables

Hlayers
Inon_trainable_variables
[Y
VARIABLE_VALUEconv2d_3/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_3/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
 

0
1
Г
Jmetrics
Klayer_regularization_losses
trainable_variables
regularization_losses
Llayer_metrics
	variables

Mlayers
Nnon_trainable_variables
 
 
 
 
Г
Ometrics
Player_regularization_losses
trainable_variables
regularization_losses
Qlayer_metrics
	variables

Rlayers
Snon_trainable_variables
[Y
VARIABLE_VALUEconv2d_4/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_4/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
 

0
1
Г
Tmetrics
Ulayer_regularization_losses
trainable_variables
 regularization_losses
Vlayer_metrics
!	variables

Wlayers
Xnon_trainable_variables
 
 
 
 
Г
Ymetrics
Zlayer_regularization_losses
$trainable_variables
%regularization_losses
[layer_metrics
&	variables

\layers
]non_trainable_variables
[Y
VARIABLE_VALUEconv2d_5/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_5/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

(0
)1
 

(0
)1
Г
^metrics
_layer_regularization_losses
+trainable_variables
,regularization_losses
`layer_metrics
-	variables

alayers
bnon_trainable_variables
 
 
 
 
Г
cmetrics
dlayer_regularization_losses
0trainable_variables
1regularization_losses
elayer_metrics
2	variables

flayers
gnon_trainable_variables
ZX
VARIABLE_VALUEdense_2/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_2/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

40
51
 

40
51
Г
hmetrics
ilayer_regularization_losses
7trainable_variables
8regularization_losses
jlayer_metrics
9	variables

klayers
lnon_trainable_variables
ZX
VARIABLE_VALUEdense_3/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
 

;0
 

;0
Г
mmetrics
nlayer_regularization_losses
=trainable_variables
>regularization_losses
olayer_metrics
?	variables

players
qnon_trainable_variables
GE
VARIABLE_VALUESGD/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUE	SGD/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUESGD/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUESGD/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE

r0
 
 
8
0
1
2
3
4
5
6
7
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
4
	stotal
	tcount
u	variables
v	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

s0
t1

u	variables
Љ
serving_default_conv2d_3_inputPlaceholder*/
_output_shapes
:         H*
dtype0*$
shape:         H
█
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_3_inputconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasconv2d_5/kernelconv2d_5/biasdense_2/kerneldense_2/biasdense_3/kernel*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *+
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8ѓ *,
f'R%
#__inference_signature_wrapper_80524
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ф
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv2d_3/kernel/Read/ReadVariableOp!conv2d_3/bias/Read/ReadVariableOp#conv2d_4/kernel/Read/ReadVariableOp!conv2d_4/bias/Read/ReadVariableOp#conv2d_5/kernel/Read/ReadVariableOp!conv2d_5/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*
Tin
2	*
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
GPU2*0J 8ѓ *'
f"R 
__inference__traced_save_80861
щ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasconv2d_5/kernelconv2d_5/biasdense_2/kerneldense_2/biasdense_3/kernelSGD/iter	SGD/decaySGD/learning_rateSGD/momentumtotalcount*
Tin
2*
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
GPU2*0J 8ѓ **
f%R#
!__inference__traced_restore_80916█╗
╗

ж
$__inference_ENSO_layer_call_fn_80570

inputs!
unknown:2
	unknown_0:2#
	unknown_1:22
	unknown_2:2#
	unknown_3:22
	unknown_4:2
	unknown_5:	ў*2
	unknown_6:2
	unknown_7:2
identityѕбStatefulPartitionedCall═
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *+
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8ѓ *H
fCRA
?__inference_ENSO_layer_call_and_return_conditional_losses_803912
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         H: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         H
 
_user_specified_nameinputs
ф
f
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_80109

inputs
identityГ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЄ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
в
K
/__inference_max_pooling2d_3_layer_call_fn_80718

inputs
identityМ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_801952
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         $2:W S
/
_output_shapes
:         $2
 
_user_specified_nameinputs
Џ
Ю
(__inference_conv2d_4_layer_call_fn_80697

inputs!
unknown:22
	unknown_0:2
identityѕбStatefulPartitionedCall■
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         $2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_801852
StatefulPartitionedCallЃ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         $22

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         $2: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         $2
 
_user_specified_nameinputs
й
f
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_80688

inputs
identityњ
MaxPoolMaxPoolinputs*/
_output_shapes
:         $2*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:         $22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         H2:W S
/
_output_shapes
:         H2
 
_user_specified_nameinputs
─&
╦
?__inference_ENSO_layer_call_and_return_conditional_losses_80495
conv2d_3_input(
conv2d_3_80468:2
conv2d_3_80470:2(
conv2d_4_80474:22
conv2d_4_80476:2(
conv2d_5_80480:22
conv2d_5_80482:2 
dense_2_80486:	ў*2
dense_2_80488:2
dense_3_80491:2
identityѕб conv2d_3/StatefulPartitionedCallб conv2d_4/StatefulPartitionedCallб conv2d_5/StatefulPartitionedCallбdense_2/StatefulPartitionedCallбdense_3/StatefulPartitionedCallц
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCallconv2d_3_inputconv2d_3_80468conv2d_3_80470*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         H2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_801622"
 conv2d_3/StatefulPartitionedCallќ
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         $2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_801722!
max_pooling2d_2/PartitionedCallЙ
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv2d_4_80474conv2d_4_80476*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         $2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_801852"
 conv2d_4/StatefulPartitionedCallќ
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_801952!
max_pooling2d_3/PartitionedCallЙ
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv2d_5_80480conv2d_5_80482*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_802082"
 conv2d_5/StatefulPartitionedCall§
flatten_1/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ў** 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_802202
flatten_1/PartitionedCallФ
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_2_80486dense_2_80488*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_802332!
dense_2/StatefulPartitionedCallа
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_80491*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_802462!
dense_3/StatefulPartitionedCallЃ
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identityч
NoOpNoOp!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         H: : : : : : : : : 2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:_ [
/
_output_shapes
:         H
(
_user_specified_nameconv2d_3_input
Џ
Ю
(__inference_conv2d_5_layer_call_fn_80737

inputs!
unknown:22
	unknown_0:2
identityѕбStatefulPartitionedCall■
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_802082
StatefulPartitionedCallЃ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         22

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         2: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         2
 
_user_specified_nameinputs
Ч
Ф
B__inference_dense_3_layer_call_and_return_conditional_losses_80793

inputs0
matmul_readvariableop_resource:2
identityѕбMatMul/ReadVariableOpЇ
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulk
IdentityIdentityMatMul:product:0^NoOp*
T0*'
_output_shapes
:         2

Identityf
NoOpNoOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         2: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs
▀
Ч
C__inference_conv2d_5_layer_call_and_return_conditional_losses_80208

inputs8
conv2d_readvariableop_resource:22-
biasadd_readvariableop_resource:2
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:22*
dtype02
Conv2D/ReadVariableOpБ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         2*
paddingSAME*
strides
2
Conv2Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOpѕ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         22	
BiasAdd`
TanhTanhBiasAdd:output:0*
T0*/
_output_shapes
:         22
Tanhk
IdentityIdentityTanh:y:0^NoOp*
T0*/
_output_shapes
:         22

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         2
 
_user_specified_nameinputs
й
f
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_80195

inputs
identityњ
MaxPoolMaxPoolinputs*/
_output_shapes
:         2*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:         22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         $2:W S
/
_output_shapes
:         $2
 
_user_specified_nameinputs
ф
f
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_80683

inputs
identityГ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЄ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Џ
Ю
(__inference_conv2d_3_layer_call_fn_80657

inputs!
unknown:2
	unknown_0:2
identityѕбStatefulPartitionedCall■
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         H2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_801622
StatefulPartitionedCallЃ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         H22

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         H: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         H
 
_user_specified_nameinputs
ф
f
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_80131

inputs
identityГ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЄ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
▀
Ч
C__inference_conv2d_4_layer_call_and_return_conditional_losses_80185

inputs8
conv2d_readvariableop_resource:22-
biasadd_readvariableop_resource:2
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:22*
dtype02
Conv2D/ReadVariableOpБ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         $2*
paddingSAME*
strides
2
Conv2Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOpѕ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         $22	
BiasAdd`
TanhTanhBiasAdd:output:0*
T0*/
_output_shapes
:         $22
Tanhk
IdentityIdentityTanh:y:0^NoOp*
T0*/
_output_shapes
:         $22

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         $2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         $2
 
_user_specified_nameinputs
п
K
/__inference_max_pooling2d_2_layer_call_fn_80673

inputs
identityЬ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_801092
PartitionedCallЈ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
К
{
'__inference_dense_3_layer_call_fn_80786

inputs
unknown:2
identityѕбStatefulPartitionedCallУ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_802462
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         2: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs
љB
▀
!__inference__traced_restore_80916
file_prefix:
 assignvariableop_conv2d_3_kernel:2.
 assignvariableop_1_conv2d_3_bias:2<
"assignvariableop_2_conv2d_4_kernel:22.
 assignvariableop_3_conv2d_4_bias:2<
"assignvariableop_4_conv2d_5_kernel:22.
 assignvariableop_5_conv2d_5_bias:24
!assignvariableop_6_dense_2_kernel:	ў*2-
assignvariableop_7_dense_2_bias:23
!assignvariableop_8_dense_3_kernel:2%
assignvariableop_9_sgd_iter:	 '
assignvariableop_10_sgd_decay: /
%assignvariableop_11_sgd_learning_rate: *
 assignvariableop_12_sgd_momentum: #
assignvariableop_13_total: #
assignvariableop_14_count: 
identity_16ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_14бAssignVariableOp_2бAssignVariableOp_3бAssignVariableOp_4бAssignVariableOp_5бAssignVariableOp_6бAssignVariableOp_7бAssignVariableOp_8бAssignVariableOp_9й
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*╔
value┐B╝B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names«
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*3
value*B(B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesч
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*T
_output_shapesB
@::::::::::::::::*
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

IdentityЪ
AssignVariableOpAssignVariableOp assignvariableop_conv2d_3_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1Ц
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv2d_3_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2Д
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_4_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3Ц
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_4_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4Д
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_5_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5Ц
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_5_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6д
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_2_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7ц
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_2_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8д
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_3_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_9а
AssignVariableOp_9AssignVariableOpassignvariableop_9_sgd_iterIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Ц
AssignVariableOp_10AssignVariableOpassignvariableop_10_sgd_decayIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11Г
AssignVariableOp_11AssignVariableOp%assignvariableop_11_sgd_learning_rateIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12е
AssignVariableOp_12AssignVariableOp assignvariableop_12_sgd_momentumIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13А
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14А
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_149
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpе
Identity_15Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_15f
Identity_16IdentityIdentity_15:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_16љ
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_16Identity_16:output:0*3
_input_shapes"
 : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142(
AssignVariableOp_2AssignVariableOp_22(
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
╗

ж
$__inference_ENSO_layer_call_fn_80547

inputs!
unknown:2
	unknown_0:2#
	unknown_1:22
	unknown_2:2#
	unknown_3:22
	unknown_4:2
	unknown_5:	ў*2
	unknown_6:2
	unknown_7:2
identityѕбStatefulPartitionedCall═
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *+
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8ѓ *H
fCRA
?__inference_ENSO_layer_call_and_return_conditional_losses_802512
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         H: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         H
 
_user_specified_nameinputs
▀
Ч
C__inference_conv2d_3_layer_call_and_return_conditional_losses_80668

inputs8
conv2d_readvariableop_resource:2-
biasadd_readvariableop_resource:2
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:2*
dtype02
Conv2D/ReadVariableOpБ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         H2*
paddingSAME*
strides
2
Conv2Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOpѕ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         H22	
BiasAdd`
TanhTanhBiasAdd:output:0*
T0*/
_output_shapes
:         H22
Tanhk
IdentityIdentityTanh:y:0^NoOp*
T0*/
_output_shapes
:         H22

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         H: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         H
 
_user_specified_nameinputs
М

ы
$__inference_ENSO_layer_call_fn_80272
conv2d_3_input!
unknown:2
	unknown_0:2#
	unknown_1:22
	unknown_2:2#
	unknown_3:22
	unknown_4:2
	unknown_5:	ў*2
	unknown_6:2
	unknown_7:2
identityѕбStatefulPartitionedCallН
StatefulPartitionedCallStatefulPartitionedCallconv2d_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *+
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8ѓ *H
fCRA
?__inference_ENSO_layer_call_and_return_conditional_losses_802512
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         H: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
/
_output_shapes
:         H
(
_user_specified_nameconv2d_3_input
г&
├
?__inference_ENSO_layer_call_and_return_conditional_losses_80251

inputs(
conv2d_3_80163:2
conv2d_3_80165:2(
conv2d_4_80186:22
conv2d_4_80188:2(
conv2d_5_80209:22
conv2d_5_80211:2 
dense_2_80234:	ў*2
dense_2_80236:2
dense_3_80247:2
identityѕб conv2d_3/StatefulPartitionedCallб conv2d_4/StatefulPartitionedCallб conv2d_5/StatefulPartitionedCallбdense_2/StatefulPartitionedCallбdense_3/StatefulPartitionedCallю
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_3_80163conv2d_3_80165*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         H2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_801622"
 conv2d_3/StatefulPartitionedCallќ
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         $2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_801722!
max_pooling2d_2/PartitionedCallЙ
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv2d_4_80186conv2d_4_80188*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         $2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_801852"
 conv2d_4/StatefulPartitionedCallќ
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_801952!
max_pooling2d_3/PartitionedCallЙ
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv2d_5_80209conv2d_5_80211*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_802082"
 conv2d_5/StatefulPartitionedCall§
flatten_1/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ў** 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_802202
flatten_1/PartitionedCallФ
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_2_80234dense_2_80236*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_802332!
dense_2/StatefulPartitionedCallа
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_80247*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_802462!
dense_3/StatefulPartitionedCallЃ
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identityч
NoOpNoOp!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         H: : : : : : : : : 2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:W S
/
_output_shapes
:         H
 
_user_specified_nameinputs
Т
`
D__inference_flatten_1_layer_call_and_return_conditional_losses_80220

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         ў*2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         ў*2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         2:W S
/
_output_shapes
:         2
 
_user_specified_nameinputs
й
f
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_80172

inputs
identityњ
MaxPoolMaxPoolinputs*/
_output_shapes
:         $2*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:         $22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         H2:W S
/
_output_shapes
:         H2
 
_user_specified_nameinputs
Ч
Ф
B__inference_dense_3_layer_call_and_return_conditional_losses_80246

inputs0
matmul_readvariableop_resource:2
identityѕбMatMul/ReadVariableOpЇ
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulk
IdentityIdentityMatMul:product:0^NoOp*
T0*'
_output_shapes
:         2

Identityf
NoOpNoOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         2: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs
М

ы
$__inference_ENSO_layer_call_fn_80435
conv2d_3_input!
unknown:2
	unknown_0:2#
	unknown_1:22
	unknown_2:2#
	unknown_3:22
	unknown_4:2
	unknown_5:	ў*2
	unknown_6:2
	unknown_7:2
identityѕбStatefulPartitionedCallН
StatefulPartitionedCallStatefulPartitionedCallconv2d_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *+
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8ѓ *H
fCRA
?__inference_ENSO_layer_call_and_return_conditional_losses_803912
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         H: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
/
_output_shapes
:         H
(
_user_specified_nameconv2d_3_input
▀
Ч
C__inference_conv2d_3_layer_call_and_return_conditional_losses_80162

inputs8
conv2d_readvariableop_resource:2-
biasadd_readvariableop_resource:2
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:2*
dtype02
Conv2D/ReadVariableOpБ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         H2*
paddingSAME*
strides
2
Conv2Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOpѕ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         H22	
BiasAdd`
TanhTanhBiasAdd:output:0*
T0*/
_output_shapes
:         H22
Tanhk
IdentityIdentityTanh:y:0^NoOp*
T0*/
_output_shapes
:         H22

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         H: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         H
 
_user_specified_nameinputs
│3
Ц
?__inference_ENSO_layer_call_and_return_conditional_losses_80609

inputsA
'conv2d_3_conv2d_readvariableop_resource:26
(conv2d_3_biasadd_readvariableop_resource:2A
'conv2d_4_conv2d_readvariableop_resource:226
(conv2d_4_biasadd_readvariableop_resource:2A
'conv2d_5_conv2d_readvariableop_resource:226
(conv2d_5_biasadd_readvariableop_resource:29
&dense_2_matmul_readvariableop_resource:	ў*25
'dense_2_biasadd_readvariableop_resource:28
&dense_3_matmul_readvariableop_resource:2
identityѕбconv2d_3/BiasAdd/ReadVariableOpбconv2d_3/Conv2D/ReadVariableOpбconv2d_4/BiasAdd/ReadVariableOpбconv2d_4/Conv2D/ReadVariableOpбconv2d_5/BiasAdd/ReadVariableOpбconv2d_5/Conv2D/ReadVariableOpбdense_2/BiasAdd/ReadVariableOpбdense_2/MatMul/ReadVariableOpбdense_3/MatMul/ReadVariableOp░
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:2*
dtype02 
conv2d_3/Conv2D/ReadVariableOpЙ
conv2d_3/Conv2DConv2Dinputs&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         H2*
paddingSAME*
strides
2
conv2d_3/Conv2DД
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02!
conv2d_3/BiasAdd/ReadVariableOpг
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         H22
conv2d_3/BiasAdd{
conv2d_3/TanhTanhconv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:         H22
conv2d_3/Tanhй
max_pooling2d_2/MaxPoolMaxPoolconv2d_3/Tanh:y:0*/
_output_shapes
:         $2*
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPool░
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:22*
dtype02 
conv2d_4/Conv2D/ReadVariableOpп
conv2d_4/Conv2DConv2D max_pooling2d_2/MaxPool:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         $2*
paddingSAME*
strides
2
conv2d_4/Conv2DД
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02!
conv2d_4/BiasAdd/ReadVariableOpг
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         $22
conv2d_4/BiasAdd{
conv2d_4/TanhTanhconv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:         $22
conv2d_4/Tanhй
max_pooling2d_3/MaxPoolMaxPoolconv2d_4/Tanh:y:0*/
_output_shapes
:         2*
ksize
*
paddingVALID*
strides
2
max_pooling2d_3/MaxPool░
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:22*
dtype02 
conv2d_5/Conv2D/ReadVariableOpп
conv2d_5/Conv2DConv2D max_pooling2d_3/MaxPool:output:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         2*
paddingSAME*
strides
2
conv2d_5/Conv2DД
conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02!
conv2d_5/BiasAdd/ReadVariableOpг
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         22
conv2d_5/BiasAdd{
conv2d_5/TanhTanhconv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:         22
conv2d_5/Tanhs
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
flatten_1/ConstЉ
flatten_1/ReshapeReshapeconv2d_5/Tanh:y:0flatten_1/Const:output:0*
T0*(
_output_shapes
:         ў*2
flatten_1/Reshapeд
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	ў*2*
dtype02
dense_2/MatMul/ReadVariableOpЪ
dense_2/MatMulMatMulflatten_1/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         22
dense_2/MatMulц
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02 
dense_2/BiasAdd/ReadVariableOpА
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         22
dense_2/BiasAddp
dense_2/TanhTanhdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:         22
dense_2/TanhЦ
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02
dense_3/MatMul/ReadVariableOpЋ
dense_3/MatMulMatMuldense_2/Tanh:y:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_3/MatMuls
IdentityIdentitydense_3/MatMul:product:0^NoOp*
T0*'
_output_shapes
:         2

IdentityЭ
NoOpNoOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         H: : : : : : : : : 2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:W S
/
_output_shapes
:         H
 
_user_specified_nameinputs
 (
ј
__inference__traced_save_80861
file_prefix.
*savev2_conv2d_3_kernel_read_readvariableop,
(savev2_conv2d_3_bias_read_readvariableop.
*savev2_conv2d_4_kernel_read_readvariableop,
(savev2_conv2d_4_bias_read_readvariableop.
*savev2_conv2d_5_kernel_read_readvariableop,
(savev2_conv2d_5_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop'
#savev2_sgd_iter_read_readvariableop	(
$savev2_sgd_decay_read_readvariableop0
,savev2_sgd_learning_rate_read_readvariableop+
'savev2_sgd_momentum_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const

identity_1ѕбMergeV2CheckpointsЈ
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
Const_1І
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
ShardedFilename/shardд
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameи
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*╔
value┐B╝B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesе
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*3
value*B(B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices░
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv2d_3_kernel_read_readvariableop(savev2_conv2d_3_bias_read_readvariableop*savev2_conv2d_4_kernel_read_readvariableop(savev2_conv2d_4_bias_read_readvariableop*savev2_conv2d_5_kernel_read_readvariableop(savev2_conv2d_5_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop)savev2_dense_3_kernel_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	2
SaveV2║
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesА
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

identity_1Identity_1:output:0*є
_input_shapesu
s: :2:2:22:2:22:2:	ў*2:2:2: : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:2: 

_output_shapes
:2:,(
&
_output_shapes
:22: 

_output_shapes
:2:,(
&
_output_shapes
:22: 

_output_shapes
:2:%!

_output_shapes
:	ў*2: 

_output_shapes
:2:$	 

_output_shapes

:2:


_output_shapes
: :
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
: 
Щ

З
B__inference_dense_2_layer_call_and_return_conditional_losses_80779

inputs1
matmul_readvariableop_resource:	ў*2-
biasadd_readvariableop_resource:2
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpј
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ў*2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         22
MatMulї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOpЂ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         22	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:         22
Tanhc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:         22

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ў*: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ў*
 
_user_specified_nameinputs
п
K
/__inference_max_pooling2d_3_layer_call_fn_80713

inputs
identityЬ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_801312
PartitionedCallЈ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
▀
Ч
C__inference_conv2d_5_layer_call_and_return_conditional_losses_80748

inputs8
conv2d_readvariableop_resource:22-
biasadd_readvariableop_resource:2
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:22*
dtype02
Conv2D/ReadVariableOpБ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         2*
paddingSAME*
strides
2
Conv2Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOpѕ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         22	
BiasAdd`
TanhTanhBiasAdd:output:0*
T0*/
_output_shapes
:         22
Tanhk
IdentityIdentityTanh:y:0^NoOp*
T0*/
_output_shapes
:         22

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         2
 
_user_specified_nameinputs
─&
╦
?__inference_ENSO_layer_call_and_return_conditional_losses_80465
conv2d_3_input(
conv2d_3_80438:2
conv2d_3_80440:2(
conv2d_4_80444:22
conv2d_4_80446:2(
conv2d_5_80450:22
conv2d_5_80452:2 
dense_2_80456:	ў*2
dense_2_80458:2
dense_3_80461:2
identityѕб conv2d_3/StatefulPartitionedCallб conv2d_4/StatefulPartitionedCallб conv2d_5/StatefulPartitionedCallбdense_2/StatefulPartitionedCallбdense_3/StatefulPartitionedCallц
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCallconv2d_3_inputconv2d_3_80438conv2d_3_80440*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         H2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_801622"
 conv2d_3/StatefulPartitionedCallќ
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         $2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_801722!
max_pooling2d_2/PartitionedCallЙ
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv2d_4_80444conv2d_4_80446*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         $2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_801852"
 conv2d_4/StatefulPartitionedCallќ
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_801952!
max_pooling2d_3/PartitionedCallЙ
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv2d_5_80450conv2d_5_80452*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_802082"
 conv2d_5/StatefulPartitionedCall§
flatten_1/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ў** 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_802202
flatten_1/PartitionedCallФ
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_2_80456dense_2_80458*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_802332!
dense_2/StatefulPartitionedCallа
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_80461*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_802462!
dense_3/StatefulPartitionedCallЃ
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identityч
NoOpNoOp!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         H: : : : : : : : : 2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:_ [
/
_output_shapes
:         H
(
_user_specified_nameconv2d_3_input
│

­
#__inference_signature_wrapper_80524
conv2d_3_input!
unknown:2
	unknown_0:2#
	unknown_1:22
	unknown_2:2#
	unknown_3:22
	unknown_4:2
	unknown_5:	ў*2
	unknown_6:2
	unknown_7:2
identityѕбStatefulPartitionedCallХ
StatefulPartitionedCallStatefulPartitionedCallconv2d_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *+
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8ѓ *)
f$R"
 __inference__wrapped_model_801002
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         H: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
/
_output_shapes
:         H
(
_user_specified_nameconv2d_3_input
├8
У
 __inference__wrapped_model_80100
conv2d_3_inputF
,enso_conv2d_3_conv2d_readvariableop_resource:2;
-enso_conv2d_3_biasadd_readvariableop_resource:2F
,enso_conv2d_4_conv2d_readvariableop_resource:22;
-enso_conv2d_4_biasadd_readvariableop_resource:2F
,enso_conv2d_5_conv2d_readvariableop_resource:22;
-enso_conv2d_5_biasadd_readvariableop_resource:2>
+enso_dense_2_matmul_readvariableop_resource:	ў*2:
,enso_dense_2_biasadd_readvariableop_resource:2=
+enso_dense_3_matmul_readvariableop_resource:2
identityѕб$ENSO/conv2d_3/BiasAdd/ReadVariableOpб#ENSO/conv2d_3/Conv2D/ReadVariableOpб$ENSO/conv2d_4/BiasAdd/ReadVariableOpб#ENSO/conv2d_4/Conv2D/ReadVariableOpб$ENSO/conv2d_5/BiasAdd/ReadVariableOpб#ENSO/conv2d_5/Conv2D/ReadVariableOpб#ENSO/dense_2/BiasAdd/ReadVariableOpб"ENSO/dense_2/MatMul/ReadVariableOpб"ENSO/dense_3/MatMul/ReadVariableOp┐
#ENSO/conv2d_3/Conv2D/ReadVariableOpReadVariableOp,enso_conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:2*
dtype02%
#ENSO/conv2d_3/Conv2D/ReadVariableOpН
ENSO/conv2d_3/Conv2DConv2Dconv2d_3_input+ENSO/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         H2*
paddingSAME*
strides
2
ENSO/conv2d_3/Conv2DХ
$ENSO/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp-enso_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02&
$ENSO/conv2d_3/BiasAdd/ReadVariableOp└
ENSO/conv2d_3/BiasAddBiasAddENSO/conv2d_3/Conv2D:output:0,ENSO/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         H22
ENSO/conv2d_3/BiasAddі
ENSO/conv2d_3/TanhTanhENSO/conv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:         H22
ENSO/conv2d_3/Tanh╠
ENSO/max_pooling2d_2/MaxPoolMaxPoolENSO/conv2d_3/Tanh:y:0*/
_output_shapes
:         $2*
ksize
*
paddingVALID*
strides
2
ENSO/max_pooling2d_2/MaxPool┐
#ENSO/conv2d_4/Conv2D/ReadVariableOpReadVariableOp,enso_conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:22*
dtype02%
#ENSO/conv2d_4/Conv2D/ReadVariableOpВ
ENSO/conv2d_4/Conv2DConv2D%ENSO/max_pooling2d_2/MaxPool:output:0+ENSO/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         $2*
paddingSAME*
strides
2
ENSO/conv2d_4/Conv2DХ
$ENSO/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp-enso_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02&
$ENSO/conv2d_4/BiasAdd/ReadVariableOp└
ENSO/conv2d_4/BiasAddBiasAddENSO/conv2d_4/Conv2D:output:0,ENSO/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         $22
ENSO/conv2d_4/BiasAddі
ENSO/conv2d_4/TanhTanhENSO/conv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:         $22
ENSO/conv2d_4/Tanh╠
ENSO/max_pooling2d_3/MaxPoolMaxPoolENSO/conv2d_4/Tanh:y:0*/
_output_shapes
:         2*
ksize
*
paddingVALID*
strides
2
ENSO/max_pooling2d_3/MaxPool┐
#ENSO/conv2d_5/Conv2D/ReadVariableOpReadVariableOp,enso_conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:22*
dtype02%
#ENSO/conv2d_5/Conv2D/ReadVariableOpВ
ENSO/conv2d_5/Conv2DConv2D%ENSO/max_pooling2d_3/MaxPool:output:0+ENSO/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         2*
paddingSAME*
strides
2
ENSO/conv2d_5/Conv2DХ
$ENSO/conv2d_5/BiasAdd/ReadVariableOpReadVariableOp-enso_conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02&
$ENSO/conv2d_5/BiasAdd/ReadVariableOp└
ENSO/conv2d_5/BiasAddBiasAddENSO/conv2d_5/Conv2D:output:0,ENSO/conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         22
ENSO/conv2d_5/BiasAddі
ENSO/conv2d_5/TanhTanhENSO/conv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:         22
ENSO/conv2d_5/Tanh}
ENSO/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
ENSO/flatten_1/ConstЦ
ENSO/flatten_1/ReshapeReshapeENSO/conv2d_5/Tanh:y:0ENSO/flatten_1/Const:output:0*
T0*(
_output_shapes
:         ў*2
ENSO/flatten_1/Reshapeх
"ENSO/dense_2/MatMul/ReadVariableOpReadVariableOp+enso_dense_2_matmul_readvariableop_resource*
_output_shapes
:	ў*2*
dtype02$
"ENSO/dense_2/MatMul/ReadVariableOp│
ENSO/dense_2/MatMulMatMulENSO/flatten_1/Reshape:output:0*ENSO/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         22
ENSO/dense_2/MatMul│
#ENSO/dense_2/BiasAdd/ReadVariableOpReadVariableOp,enso_dense_2_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02%
#ENSO/dense_2/BiasAdd/ReadVariableOpх
ENSO/dense_2/BiasAddBiasAddENSO/dense_2/MatMul:product:0+ENSO/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         22
ENSO/dense_2/BiasAdd
ENSO/dense_2/TanhTanhENSO/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:         22
ENSO/dense_2/Tanh┤
"ENSO/dense_3/MatMul/ReadVariableOpReadVariableOp+enso_dense_3_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02$
"ENSO/dense_3/MatMul/ReadVariableOpЕ
ENSO/dense_3/MatMulMatMulENSO/dense_2/Tanh:y:0*ENSO/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
ENSO/dense_3/MatMulx
IdentityIdentityENSO/dense_3/MatMul:product:0^NoOp*
T0*'
_output_shapes
:         2

IdentityЦ
NoOpNoOp%^ENSO/conv2d_3/BiasAdd/ReadVariableOp$^ENSO/conv2d_3/Conv2D/ReadVariableOp%^ENSO/conv2d_4/BiasAdd/ReadVariableOp$^ENSO/conv2d_4/Conv2D/ReadVariableOp%^ENSO/conv2d_5/BiasAdd/ReadVariableOp$^ENSO/conv2d_5/Conv2D/ReadVariableOp$^ENSO/dense_2/BiasAdd/ReadVariableOp#^ENSO/dense_2/MatMul/ReadVariableOp#^ENSO/dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         H: : : : : : : : : 2L
$ENSO/conv2d_3/BiasAdd/ReadVariableOp$ENSO/conv2d_3/BiasAdd/ReadVariableOp2J
#ENSO/conv2d_3/Conv2D/ReadVariableOp#ENSO/conv2d_3/Conv2D/ReadVariableOp2L
$ENSO/conv2d_4/BiasAdd/ReadVariableOp$ENSO/conv2d_4/BiasAdd/ReadVariableOp2J
#ENSO/conv2d_4/Conv2D/ReadVariableOp#ENSO/conv2d_4/Conv2D/ReadVariableOp2L
$ENSO/conv2d_5/BiasAdd/ReadVariableOp$ENSO/conv2d_5/BiasAdd/ReadVariableOp2J
#ENSO/conv2d_5/Conv2D/ReadVariableOp#ENSO/conv2d_5/Conv2D/ReadVariableOp2J
#ENSO/dense_2/BiasAdd/ReadVariableOp#ENSO/dense_2/BiasAdd/ReadVariableOp2H
"ENSO/dense_2/MatMul/ReadVariableOp"ENSO/dense_2/MatMul/ReadVariableOp2H
"ENSO/dense_3/MatMul/ReadVariableOp"ENSO/dense_3/MatMul/ReadVariableOp:_ [
/
_output_shapes
:         H
(
_user_specified_nameconv2d_3_input
в
K
/__inference_max_pooling2d_2_layer_call_fn_80678

inputs
identityМ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         $2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_801722
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         $22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         H2:W S
/
_output_shapes
:         H2
 
_user_specified_nameinputs
│3
Ц
?__inference_ENSO_layer_call_and_return_conditional_losses_80648

inputsA
'conv2d_3_conv2d_readvariableop_resource:26
(conv2d_3_biasadd_readvariableop_resource:2A
'conv2d_4_conv2d_readvariableop_resource:226
(conv2d_4_biasadd_readvariableop_resource:2A
'conv2d_5_conv2d_readvariableop_resource:226
(conv2d_5_biasadd_readvariableop_resource:29
&dense_2_matmul_readvariableop_resource:	ў*25
'dense_2_biasadd_readvariableop_resource:28
&dense_3_matmul_readvariableop_resource:2
identityѕбconv2d_3/BiasAdd/ReadVariableOpбconv2d_3/Conv2D/ReadVariableOpбconv2d_4/BiasAdd/ReadVariableOpбconv2d_4/Conv2D/ReadVariableOpбconv2d_5/BiasAdd/ReadVariableOpбconv2d_5/Conv2D/ReadVariableOpбdense_2/BiasAdd/ReadVariableOpбdense_2/MatMul/ReadVariableOpбdense_3/MatMul/ReadVariableOp░
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:2*
dtype02 
conv2d_3/Conv2D/ReadVariableOpЙ
conv2d_3/Conv2DConv2Dinputs&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         H2*
paddingSAME*
strides
2
conv2d_3/Conv2DД
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02!
conv2d_3/BiasAdd/ReadVariableOpг
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         H22
conv2d_3/BiasAdd{
conv2d_3/TanhTanhconv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:         H22
conv2d_3/Tanhй
max_pooling2d_2/MaxPoolMaxPoolconv2d_3/Tanh:y:0*/
_output_shapes
:         $2*
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPool░
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:22*
dtype02 
conv2d_4/Conv2D/ReadVariableOpп
conv2d_4/Conv2DConv2D max_pooling2d_2/MaxPool:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         $2*
paddingSAME*
strides
2
conv2d_4/Conv2DД
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02!
conv2d_4/BiasAdd/ReadVariableOpг
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         $22
conv2d_4/BiasAdd{
conv2d_4/TanhTanhconv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:         $22
conv2d_4/Tanhй
max_pooling2d_3/MaxPoolMaxPoolconv2d_4/Tanh:y:0*/
_output_shapes
:         2*
ksize
*
paddingVALID*
strides
2
max_pooling2d_3/MaxPool░
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:22*
dtype02 
conv2d_5/Conv2D/ReadVariableOpп
conv2d_5/Conv2DConv2D max_pooling2d_3/MaxPool:output:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         2*
paddingSAME*
strides
2
conv2d_5/Conv2DД
conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02!
conv2d_5/BiasAdd/ReadVariableOpг
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         22
conv2d_5/BiasAdd{
conv2d_5/TanhTanhconv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:         22
conv2d_5/Tanhs
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
flatten_1/ConstЉ
flatten_1/ReshapeReshapeconv2d_5/Tanh:y:0flatten_1/Const:output:0*
T0*(
_output_shapes
:         ў*2
flatten_1/Reshapeд
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	ў*2*
dtype02
dense_2/MatMul/ReadVariableOpЪ
dense_2/MatMulMatMulflatten_1/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         22
dense_2/MatMulц
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02 
dense_2/BiasAdd/ReadVariableOpА
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         22
dense_2/BiasAddp
dense_2/TanhTanhdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:         22
dense_2/TanhЦ
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02
dense_3/MatMul/ReadVariableOpЋ
dense_3/MatMulMatMuldense_2/Tanh:y:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_3/MatMuls
IdentityIdentitydense_3/MatMul:product:0^NoOp*
T0*'
_output_shapes
:         2

IdentityЭ
NoOpNoOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         H: : : : : : : : : 2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:W S
/
_output_shapes
:         H
 
_user_specified_nameinputs
й
f
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_80728

inputs
identityњ
MaxPoolMaxPoolinputs*/
_output_shapes
:         2*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:         22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         $2:W S
/
_output_shapes
:         $2
 
_user_specified_nameinputs
▀
Ч
C__inference_conv2d_4_layer_call_and_return_conditional_losses_80708

inputs8
conv2d_readvariableop_resource:22-
biasadd_readvariableop_resource:2
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:22*
dtype02
Conv2D/ReadVariableOpБ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         $2*
paddingSAME*
strides
2
Conv2Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOpѕ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         $22	
BiasAdd`
TanhTanhBiasAdd:output:0*
T0*/
_output_shapes
:         $22
Tanhk
IdentityIdentityTanh:y:0^NoOp*
T0*/
_output_shapes
:         $22

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         $2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         $2
 
_user_specified_nameinputs
Л
E
)__inference_flatten_1_layer_call_fn_80753

inputs
identityк
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ў** 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_802202
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         ў*2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         2:W S
/
_output_shapes
:         2
 
_user_specified_nameinputs
Т
`
D__inference_flatten_1_layer_call_and_return_conditional_losses_80759

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         ў*2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         ў*2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         2:W S
/
_output_shapes
:         2
 
_user_specified_nameinputs
з
Ћ
'__inference_dense_2_layer_call_fn_80768

inputs
unknown:	ў*2
	unknown_0:2
identityѕбStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_802332
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         22

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ў*: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ў*
 
_user_specified_nameinputs
ф
f
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_80723

inputs
identityГ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЄ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
г&
├
?__inference_ENSO_layer_call_and_return_conditional_losses_80391

inputs(
conv2d_3_80364:2
conv2d_3_80366:2(
conv2d_4_80370:22
conv2d_4_80372:2(
conv2d_5_80376:22
conv2d_5_80378:2 
dense_2_80382:	ў*2
dense_2_80384:2
dense_3_80387:2
identityѕб conv2d_3/StatefulPartitionedCallб conv2d_4/StatefulPartitionedCallб conv2d_5/StatefulPartitionedCallбdense_2/StatefulPartitionedCallбdense_3/StatefulPartitionedCallю
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_3_80364conv2d_3_80366*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         H2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_801622"
 conv2d_3/StatefulPartitionedCallќ
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         $2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_801722!
max_pooling2d_2/PartitionedCallЙ
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv2d_4_80370conv2d_4_80372*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         $2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_801852"
 conv2d_4/StatefulPartitionedCallќ
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_801952!
max_pooling2d_3/PartitionedCallЙ
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv2d_5_80376conv2d_5_80378*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_802082"
 conv2d_5/StatefulPartitionedCall§
flatten_1/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ў** 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_802202
flatten_1/PartitionedCallФ
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_2_80382dense_2_80384*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_802332!
dense_2/StatefulPartitionedCallа
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_80387*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_802462!
dense_3/StatefulPartitionedCallЃ
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identityч
NoOpNoOp!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         H: : : : : : : : : 2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:W S
/
_output_shapes
:         H
 
_user_specified_nameinputs
Щ

З
B__inference_dense_2_layer_call_and_return_conditional_losses_80233

inputs1
matmul_readvariableop_resource:	ў*2-
biasadd_readvariableop_resource:2
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpј
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ў*2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         22
MatMulї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOpЂ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         22	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:         22
Tanhc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:         22

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ў*: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ў*
 
_user_specified_nameinputs"еL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*└
serving_defaultг
Q
conv2d_3_input?
 serving_default_conv2d_3_input:0         H;
dense_30
StatefulPartitionedCall:0         tensorflow/serving/predict:їЋ
ш
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
		optimizer


signatures
#_self_saveable_object_factories
regularization_losses
trainable_variables
	variables
	keras_api
w_default_save_signature
x__call__
*y&call_and_return_all_conditional_losses"
_tf_keras_sequential
Я

kernel
bias
#_self_saveable_object_factories
trainable_variables
regularization_losses
	variables
	keras_api
z__call__
*{&call_and_return_all_conditional_losses"
_tf_keras_layer
╩
#_self_saveable_object_factories
trainable_variables
regularization_losses
	variables
	keras_api
|__call__
*}&call_and_return_all_conditional_losses"
_tf_keras_layer
Я

kernel
bias
#_self_saveable_object_factories
trainable_variables
 regularization_losses
!	variables
"	keras_api
~__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
╠
##_self_saveable_object_factories
$trainable_variables
%regularization_losses
&	variables
'	keras_api
ђ__call__
+Ђ&call_and_return_all_conditional_losses"
_tf_keras_layer
Р

(kernel
)bias
#*_self_saveable_object_factories
+trainable_variables
,regularization_losses
-	variables
.	keras_api
ѓ__call__
+Ѓ&call_and_return_all_conditional_losses"
_tf_keras_layer
╠
#/_self_saveable_object_factories
0trainable_variables
1regularization_losses
2	variables
3	keras_api
ё__call__
+Ё&call_and_return_all_conditional_losses"
_tf_keras_layer
Р

4kernel
5bias
#6_self_saveable_object_factories
7trainable_variables
8regularization_losses
9	variables
:	keras_api
є__call__
+Є&call_and_return_all_conditional_losses"
_tf_keras_layer
п

;kernel
#<_self_saveable_object_factories
=trainable_variables
>regularization_losses
?	variables
@	keras_api
ѕ__call__
+Ѕ&call_and_return_all_conditional_losses"
_tf_keras_layer
I
Aiter
	Bdecay
Clearning_rate
Dmomentum"
	optimizer
-
іserving_default"
signature_map
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
_
0
1
2
3
(4
)5
46
57
;8"
trackable_list_wrapper
_
0
1
2
3
(4
)5
46
57
;8"
trackable_list_wrapper
╩
Emetrics
regularization_losses
Flayer_regularization_losses
trainable_variables
Glayer_metrics
	variables

Hlayers
Inon_trainable_variables
x__call__
w_default_save_signature
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
_generic_user_object
):'22conv2d_3/kernel
:22conv2d_3/bias
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
Г
Jmetrics
Klayer_regularization_losses
trainable_variables
regularization_losses
Llayer_metrics
	variables

Mlayers
Nnon_trainable_variables
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Г
Ometrics
Player_regularization_losses
trainable_variables
regularization_losses
Qlayer_metrics
	variables

Rlayers
Snon_trainable_variables
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses"
_generic_user_object
):'222conv2d_4/kernel
:22conv2d_4/bias
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
Г
Tmetrics
Ulayer_regularization_losses
trainable_variables
 regularization_losses
Vlayer_metrics
!	variables

Wlayers
Xnon_trainable_variables
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
Ymetrics
Zlayer_regularization_losses
$trainable_variables
%regularization_losses
[layer_metrics
&	variables

\layers
]non_trainable_variables
ђ__call__
+Ђ&call_and_return_all_conditional_losses
'Ђ"call_and_return_conditional_losses"
_generic_user_object
):'222conv2d_5/kernel
:22conv2d_5/bias
 "
trackable_dict_wrapper
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
░
^metrics
_layer_regularization_losses
+trainable_variables
,regularization_losses
`layer_metrics
-	variables

alayers
bnon_trainable_variables
ѓ__call__
+Ѓ&call_and_return_all_conditional_losses
'Ѓ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
cmetrics
dlayer_regularization_losses
0trainable_variables
1regularization_losses
elayer_metrics
2	variables

flayers
gnon_trainable_variables
ё__call__
+Ё&call_and_return_all_conditional_losses
'Ё"call_and_return_conditional_losses"
_generic_user_object
!:	ў*22dense_2/kernel
:22dense_2/bias
 "
trackable_dict_wrapper
.
40
51"
trackable_list_wrapper
 "
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
░
hmetrics
ilayer_regularization_losses
7trainable_variables
8regularization_losses
jlayer_metrics
9	variables

klayers
lnon_trainable_variables
є__call__
+Є&call_and_return_all_conditional_losses
'Є"call_and_return_conditional_losses"
_generic_user_object
 :22dense_3/kernel
 "
trackable_dict_wrapper
'
;0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
;0"
trackable_list_wrapper
░
mmetrics
nlayer_regularization_losses
=trainable_variables
>regularization_losses
olayer_metrics
?	variables

players
qnon_trainable_variables
ѕ__call__
+Ѕ&call_and_return_all_conditional_losses
'Ѕ"call_and_return_conditional_losses"
_generic_user_object
:	 (2SGD/iter
: (2	SGD/decay
: (2SGD/learning_rate
: (2SGD/momentum
'
r0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
X
0
1
2
3
4
5
6
7"
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
N
	stotal
	tcount
u	variables
v	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
s0
t1"
trackable_list_wrapper
-
u	variables"
_generic_user_object
мB¤
 __inference__wrapped_model_80100conv2d_3_input"ў
Љ▓Ї
FullArgSpec
argsџ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
я2█
$__inference_ENSO_layer_call_fn_80272
$__inference_ENSO_layer_call_fn_80547
$__inference_ENSO_layer_call_fn_80570
$__inference_ENSO_layer_call_fn_80435└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
╩2К
?__inference_ENSO_layer_call_and_return_conditional_losses_80609
?__inference_ENSO_layer_call_and_return_conditional_losses_80648
?__inference_ENSO_layer_call_and_return_conditional_losses_80465
?__inference_ENSO_layer_call_and_return_conditional_losses_80495└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
м2¤
(__inference_conv2d_3_layer_call_fn_80657б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ь2Ж
C__inference_conv2d_3_layer_call_and_return_conditional_losses_80668б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
і2Є
/__inference_max_pooling2d_2_layer_call_fn_80673
/__inference_max_pooling2d_2_layer_call_fn_80678б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
└2й
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_80683
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_80688б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
м2¤
(__inference_conv2d_4_layer_call_fn_80697б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ь2Ж
C__inference_conv2d_4_layer_call_and_return_conditional_losses_80708б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
і2Є
/__inference_max_pooling2d_3_layer_call_fn_80713
/__inference_max_pooling2d_3_layer_call_fn_80718б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
└2й
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_80723
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_80728б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
м2¤
(__inference_conv2d_5_layer_call_fn_80737б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ь2Ж
C__inference_conv2d_5_layer_call_and_return_conditional_losses_80748б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
М2л
)__inference_flatten_1_layer_call_fn_80753б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ь2в
D__inference_flatten_1_layer_call_and_return_conditional_losses_80759б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Л2╬
'__inference_dense_2_layer_call_fn_80768б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
В2ж
B__inference_dense_2_layer_call_and_return_conditional_losses_80779б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Л2╬
'__inference_dense_3_layer_call_fn_80786б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
В2ж
B__inference_dense_3_layer_call_and_return_conditional_losses_80793б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЛB╬
#__inference_signature_wrapper_80524conv2d_3_input"ћ
Ї▓Ѕ
FullArgSpec
argsџ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 Й
?__inference_ENSO_layer_call_and_return_conditional_losses_80465{	()45;GбD
=б:
0і-
conv2d_3_input         H
p 

 
ф "%б"
і
0         
џ Й
?__inference_ENSO_layer_call_and_return_conditional_losses_80495{	()45;GбD
=б:
0і-
conv2d_3_input         H
p

 
ф "%б"
і
0         
џ Х
?__inference_ENSO_layer_call_and_return_conditional_losses_80609s	()45;?б<
5б2
(і%
inputs         H
p 

 
ф "%б"
і
0         
џ Х
?__inference_ENSO_layer_call_and_return_conditional_losses_80648s	()45;?б<
5б2
(і%
inputs         H
p

 
ф "%б"
і
0         
џ ќ
$__inference_ENSO_layer_call_fn_80272n	()45;GбD
=б:
0і-
conv2d_3_input         H
p 

 
ф "і         ќ
$__inference_ENSO_layer_call_fn_80435n	()45;GбD
=б:
0і-
conv2d_3_input         H
p

 
ф "і         ј
$__inference_ENSO_layer_call_fn_80547f	()45;?б<
5б2
(і%
inputs         H
p 

 
ф "і         ј
$__inference_ENSO_layer_call_fn_80570f	()45;?б<
5б2
(і%
inputs         H
p

 
ф "і         Б
 __inference__wrapped_model_80100	()45;?б<
5б2
0і-
conv2d_3_input         H
ф "1ф.
,
dense_3!і
dense_3         │
C__inference_conv2d_3_layer_call_and_return_conditional_losses_80668l7б4
-б*
(і%
inputs         H
ф "-б*
#і 
0         H2
џ І
(__inference_conv2d_3_layer_call_fn_80657_7б4
-б*
(і%
inputs         H
ф " і         H2│
C__inference_conv2d_4_layer_call_and_return_conditional_losses_80708l7б4
-б*
(і%
inputs         $2
ф "-б*
#і 
0         $2
џ І
(__inference_conv2d_4_layer_call_fn_80697_7б4
-б*
(і%
inputs         $2
ф " і         $2│
C__inference_conv2d_5_layer_call_and_return_conditional_losses_80748l()7б4
-б*
(і%
inputs         2
ф "-б*
#і 
0         2
џ І
(__inference_conv2d_5_layer_call_fn_80737_()7б4
-б*
(і%
inputs         2
ф " і         2Б
B__inference_dense_2_layer_call_and_return_conditional_losses_80779]450б-
&б#
!і
inputs         ў*
ф "%б"
і
0         2
џ {
'__inference_dense_2_layer_call_fn_80768P450б-
&б#
!і
inputs         ў*
ф "і         2А
B__inference_dense_3_layer_call_and_return_conditional_losses_80793[;/б,
%б"
 і
inputs         2
ф "%б"
і
0         
џ y
'__inference_dense_3_layer_call_fn_80786N;/б,
%б"
 і
inputs         2
ф "і         Е
D__inference_flatten_1_layer_call_and_return_conditional_losses_80759a7б4
-б*
(і%
inputs         2
ф "&б#
і
0         ў*
џ Ђ
)__inference_flatten_1_layer_call_fn_80753T7б4
-б*
(і%
inputs         2
ф "і         ў*ь
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_80683ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ Х
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_80688h7б4
-б*
(і%
inputs         H2
ф "-б*
#і 
0         $2
џ ┼
/__inference_max_pooling2d_2_layer_call_fn_80673ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    ј
/__inference_max_pooling2d_2_layer_call_fn_80678[7б4
-б*
(і%
inputs         H2
ф " і         $2ь
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_80723ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ Х
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_80728h7б4
-б*
(і%
inputs         $2
ф "-б*
#і 
0         2
џ ┼
/__inference_max_pooling2d_3_layer_call_fn_80713ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    ј
/__inference_max_pooling2d_3_layer_call_fn_80718[7б4
-б*
(і%
inputs         $2
ф " і         2╣
#__inference_signature_wrapper_80524Љ	()45;QбN
б 
GфD
B
conv2d_3_input0і-
conv2d_3_input         H"1ф.
,
dense_3!і
dense_3         