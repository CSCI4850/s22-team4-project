ĺ
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
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
 ?"serve*2.6.22unknown8??
?
First_Convolution/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*)
shared_nameFirst_Convolution/kernel
?
,First_Convolution/kernel/Read/ReadVariableOpReadVariableOpFirst_Convolution/kernel*'
_output_shapes
:?*
dtype0
?
First_Convolution/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*'
shared_nameFirst_Convolution/bias
~
*First_Convolution/bias/Read/ReadVariableOpReadVariableOpFirst_Convolution/bias*
_output_shapes	
:?*
dtype0
?
Second_Convolution/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:?@**
shared_nameSecond_Convolution/kernel
?
-Second_Convolution/kernel/Read/ReadVariableOpReadVariableOpSecond_Convolution/kernel*'
_output_shapes
:?@*
dtype0
?
Second_Convolution/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameSecond_Convolution/bias

+Second_Convolution/bias/Read/ReadVariableOpReadVariableOpSecond_Convolution/bias*
_output_shapes
:@*
dtype0
?
Third_Convolution/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *)
shared_nameThird_Convolution/kernel
?
,Third_Convolution/kernel/Read/ReadVariableOpReadVariableOpThird_Convolution/kernel*&
_output_shapes
:@ *
dtype0
?
Third_Convolution/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameThird_Convolution/bias
}
*Third_Convolution/bias/Read/ReadVariableOpReadVariableOpThird_Convolution/bias*
_output_shapes
: *
dtype0
~
dense_272/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?1?*!
shared_namedense_272/kernel
w
$dense_272/kernel/Read/ReadVariableOpReadVariableOpdense_272/kernel* 
_output_shapes
:
?1?*
dtype0
u
dense_272/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_272/bias
n
"dense_272/bias/Read/ReadVariableOpReadVariableOpdense_272/bias*
_output_shapes	
:?*
dtype0
~
dense_273/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*!
shared_namedense_273/kernel
w
$dense_273/kernel/Read/ReadVariableOpReadVariableOpdense_273/kernel* 
_output_shapes
:
??*
dtype0
u
dense_273/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_273/bias
n
"dense_273/bias/Read/ReadVariableOpReadVariableOpdense_273/bias*
_output_shapes	
:?*
dtype0
~
dense_274/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*!
shared_namedense_274/kernel
w
$dense_274/kernel/Read/ReadVariableOpReadVariableOpdense_274/kernel* 
_output_shapes
:
??*
dtype0
u
dense_274/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_274/bias
n
"dense_274/bias/Read/ReadVariableOpReadVariableOpdense_274/bias*
_output_shapes	
:?*
dtype0
y
ETH_Val/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*
shared_nameETH_Val/kernel
r
"ETH_Val/kernel/Read/ReadVariableOpReadVariableOpETH_Val/kernel*
_output_shapes
:	?*
dtype0
p
ETH_Val/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameETH_Val/bias
i
 ETH_Val/bias/Read/ReadVariableOpReadVariableOpETH_Val/bias*
_output_shapes
:*
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
Adam/First_Convolution/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*0
shared_name!Adam/First_Convolution/kernel/m
?
3Adam/First_Convolution/kernel/m/Read/ReadVariableOpReadVariableOpAdam/First_Convolution/kernel/m*'
_output_shapes
:?*
dtype0
?
Adam/First_Convolution/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_nameAdam/First_Convolution/bias/m
?
1Adam/First_Convolution/bias/m/Read/ReadVariableOpReadVariableOpAdam/First_Convolution/bias/m*
_output_shapes	
:?*
dtype0
?
 Adam/Second_Convolution/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?@*1
shared_name" Adam/Second_Convolution/kernel/m
?
4Adam/Second_Convolution/kernel/m/Read/ReadVariableOpReadVariableOp Adam/Second_Convolution/kernel/m*'
_output_shapes
:?@*
dtype0
?
Adam/Second_Convolution/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name Adam/Second_Convolution/bias/m
?
2Adam/Second_Convolution/bias/m/Read/ReadVariableOpReadVariableOpAdam/Second_Convolution/bias/m*
_output_shapes
:@*
dtype0
?
Adam/Third_Convolution/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *0
shared_name!Adam/Third_Convolution/kernel/m
?
3Adam/Third_Convolution/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Third_Convolution/kernel/m*&
_output_shapes
:@ *
dtype0
?
Adam/Third_Convolution/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_nameAdam/Third_Convolution/bias/m
?
1Adam/Third_Convolution/bias/m/Read/ReadVariableOpReadVariableOpAdam/Third_Convolution/bias/m*
_output_shapes
: *
dtype0
?
Adam/dense_272/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?1?*(
shared_nameAdam/dense_272/kernel/m
?
+Adam/dense_272/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_272/kernel/m* 
_output_shapes
:
?1?*
dtype0
?
Adam/dense_272/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/dense_272/bias/m
|
)Adam/dense_272/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_272/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_273/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*(
shared_nameAdam/dense_273/kernel/m
?
+Adam/dense_273/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_273/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/dense_273/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/dense_273/bias/m
|
)Adam/dense_273/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_273/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_274/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*(
shared_nameAdam/dense_274/kernel/m
?
+Adam/dense_274/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_274/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/dense_274/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/dense_274/bias/m
|
)Adam/dense_274/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_274/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/ETH_Val/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*&
shared_nameAdam/ETH_Val/kernel/m
?
)Adam/ETH_Val/kernel/m/Read/ReadVariableOpReadVariableOpAdam/ETH_Val/kernel/m*
_output_shapes
:	?*
dtype0
~
Adam/ETH_Val/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/ETH_Val/bias/m
w
'Adam/ETH_Val/bias/m/Read/ReadVariableOpReadVariableOpAdam/ETH_Val/bias/m*
_output_shapes
:*
dtype0
?
Adam/First_Convolution/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*0
shared_name!Adam/First_Convolution/kernel/v
?
3Adam/First_Convolution/kernel/v/Read/ReadVariableOpReadVariableOpAdam/First_Convolution/kernel/v*'
_output_shapes
:?*
dtype0
?
Adam/First_Convolution/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_nameAdam/First_Convolution/bias/v
?
1Adam/First_Convolution/bias/v/Read/ReadVariableOpReadVariableOpAdam/First_Convolution/bias/v*
_output_shapes	
:?*
dtype0
?
 Adam/Second_Convolution/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?@*1
shared_name" Adam/Second_Convolution/kernel/v
?
4Adam/Second_Convolution/kernel/v/Read/ReadVariableOpReadVariableOp Adam/Second_Convolution/kernel/v*'
_output_shapes
:?@*
dtype0
?
Adam/Second_Convolution/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name Adam/Second_Convolution/bias/v
?
2Adam/Second_Convolution/bias/v/Read/ReadVariableOpReadVariableOpAdam/Second_Convolution/bias/v*
_output_shapes
:@*
dtype0
?
Adam/Third_Convolution/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *0
shared_name!Adam/Third_Convolution/kernel/v
?
3Adam/Third_Convolution/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Third_Convolution/kernel/v*&
_output_shapes
:@ *
dtype0
?
Adam/Third_Convolution/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_nameAdam/Third_Convolution/bias/v
?
1Adam/Third_Convolution/bias/v/Read/ReadVariableOpReadVariableOpAdam/Third_Convolution/bias/v*
_output_shapes
: *
dtype0
?
Adam/dense_272/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?1?*(
shared_nameAdam/dense_272/kernel/v
?
+Adam/dense_272/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_272/kernel/v* 
_output_shapes
:
?1?*
dtype0
?
Adam/dense_272/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/dense_272/bias/v
|
)Adam/dense_272/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_272/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_273/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*(
shared_nameAdam/dense_273/kernel/v
?
+Adam/dense_273/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_273/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/dense_273/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/dense_273/bias/v
|
)Adam/dense_273/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_273/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_274/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*(
shared_nameAdam/dense_274/kernel/v
?
+Adam/dense_274/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_274/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/dense_274/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/dense_274/bias/v
|
)Adam/dense_274/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_274/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/ETH_Val/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*&
shared_nameAdam/ETH_Val/kernel/v
?
)Adam/ETH_Val/kernel/v/Read/ReadVariableOpReadVariableOpAdam/ETH_Val/kernel/v*
_output_shapes
:	?*
dtype0
~
Adam/ETH_Val/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/ETH_Val/bias/v
w
'Adam/ETH_Val/bias/v/Read/ReadVariableOpReadVariableOpAdam/ETH_Val/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?Z
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?Z
value?ZB?Z B?Y
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer-5
layer-6
layer_with_weights-3
layer-7
	layer_with_weights-4
	layer-8

layer-9
layer_with_weights-5
layer-10
layer-11
layer_with_weights-6
layer-12
	optimizer

signatures
#_self_saveable_object_factories
regularization_losses
	variables
trainable_variables
	keras_api
%
#_self_saveable_object_factories
?

kernel
bias
#_self_saveable_object_factories
regularization_losses
trainable_variables
	variables
	keras_api
?

kernel
bias
#_self_saveable_object_factories
 regularization_losses
!trainable_variables
"	variables
#	keras_api
?

$kernel
%bias
#&_self_saveable_object_factories
'regularization_losses
(trainable_variables
)	variables
*	keras_api
w
#+_self_saveable_object_factories
,regularization_losses
-trainable_variables
.	variables
/	keras_api
w
#0_self_saveable_object_factories
1regularization_losses
2trainable_variables
3	variables
4	keras_api
w
#5_self_saveable_object_factories
6regularization_losses
7trainable_variables
8	variables
9	keras_api
?

:kernel
;bias
#<_self_saveable_object_factories
=regularization_losses
>trainable_variables
?	variables
@	keras_api
?

Akernel
Bbias
#C_self_saveable_object_factories
Dregularization_losses
Etrainable_variables
F	variables
G	keras_api
w
#H_self_saveable_object_factories
Iregularization_losses
Jtrainable_variables
K	variables
L	keras_api
?

Mkernel
Nbias
#O_self_saveable_object_factories
Pregularization_losses
Qtrainable_variables
R	variables
S	keras_api
w
#T_self_saveable_object_factories
Uregularization_losses
Vtrainable_variables
W	variables
X	keras_api
?

Ykernel
Zbias
#[_self_saveable_object_factories
\regularization_losses
]trainable_variables
^	variables
_	keras_api
?
`iter

abeta_1

bbeta_2
	cdecay
dlearning_ratem?m?m?m?$m?%m?:m?;m?Am?Bm?Mm?Nm?Ym?Zm?v?v?v?v?$v?%v?:v?;v?Av?Bv?Mv?Nv?Yv?Zv?
 
 
 
f
0
1
2
3
$4
%5
:6
;7
A8
B9
M10
N11
Y12
Z13
f
0
1
2
3
$4
%5
:6
;7
A8
B9
M10
N11
Y12
Z13
?
elayer_metrics
regularization_losses
flayer_regularization_losses
gnon_trainable_variables
	variables

hlayers
trainable_variables
imetrics
 
db
VARIABLE_VALUEFirst_Convolution/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEFirst_Convolution/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

0
1

0
1
?
jlayer_metrics
regularization_losses
trainable_variables
klayer_regularization_losses
lnon_trainable_variables
	variables

mlayers
nmetrics
ec
VARIABLE_VALUESecond_Convolution/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUESecond_Convolution/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

0
1

0
1
?
olayer_metrics
 regularization_losses
!trainable_variables
player_regularization_losses
qnon_trainable_variables
"	variables

rlayers
smetrics
db
VARIABLE_VALUEThird_Convolution/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEThird_Convolution/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

$0
%1

$0
%1
?
tlayer_metrics
'regularization_losses
(trainable_variables
ulayer_regularization_losses
vnon_trainable_variables
)	variables

wlayers
xmetrics
 
 
 
 
?
ylayer_metrics
,regularization_losses
-trainable_variables
zlayer_regularization_losses
{non_trainable_variables
.	variables

|layers
}metrics
 
 
 
 
?
~layer_metrics
1regularization_losses
2trainable_variables
layer_regularization_losses
?non_trainable_variables
3	variables
?layers
?metrics
 
 
 
 
?
?layer_metrics
6regularization_losses
7trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
8	variables
?layers
?metrics
\Z
VARIABLE_VALUEdense_272/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_272/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

:0
;1

:0
;1
?
?layer_metrics
=regularization_losses
>trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?	variables
?layers
?metrics
\Z
VARIABLE_VALUEdense_273/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_273/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

A0
B1

A0
B1
?
?layer_metrics
Dregularization_losses
Etrainable_variables
 ?layer_regularization_losses
?non_trainable_variables
F	variables
?layers
?metrics
 
 
 
 
?
?layer_metrics
Iregularization_losses
Jtrainable_variables
 ?layer_regularization_losses
?non_trainable_variables
K	variables
?layers
?metrics
\Z
VARIABLE_VALUEdense_274/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_274/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

M0
N1

M0
N1
?
?layer_metrics
Pregularization_losses
Qtrainable_variables
 ?layer_regularization_losses
?non_trainable_variables
R	variables
?layers
?metrics
 
 
 
 
?
?layer_metrics
Uregularization_losses
Vtrainable_variables
 ?layer_regularization_losses
?non_trainable_variables
W	variables
?layers
?metrics
ZX
VARIABLE_VALUEETH_Val/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEETH_Val/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

Y0
Z1

Y0
Z1
?
?layer_metrics
\regularization_losses
]trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
^	variables
?layers
?metrics
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
 
 
^
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

?0
?1
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
??
VARIABLE_VALUEAdam/First_Convolution/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/First_Convolution/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/Second_Convolution/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/Second_Convolution/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/Third_Convolution/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/Third_Convolution/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_272/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_272/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_273/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_273/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_274/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_274/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/ETH_Val/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/ETH_Val/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/First_Convolution/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/First_Convolution/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/Second_Convolution/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/Second_Convolution/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/Third_Convolution/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/Third_Convolution/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_272/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_272/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_273/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_273/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_274/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_274/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/ETH_Val/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/ETH_Val/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_Input_LayerPlaceholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_Input_LayerFirst_Convolution/kernelFirst_Convolution/biasSecond_Convolution/kernelSecond_Convolution/biasThird_Convolution/kernelThird_Convolution/biasdense_272/kerneldense_272/biasdense_273/kerneldense_273/biasdense_274/kerneldense_274/biasETH_Val/kernelETH_Val/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference_signature_wrapper_92695
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename,First_Convolution/kernel/Read/ReadVariableOp*First_Convolution/bias/Read/ReadVariableOp-Second_Convolution/kernel/Read/ReadVariableOp+Second_Convolution/bias/Read/ReadVariableOp,Third_Convolution/kernel/Read/ReadVariableOp*Third_Convolution/bias/Read/ReadVariableOp$dense_272/kernel/Read/ReadVariableOp"dense_272/bias/Read/ReadVariableOp$dense_273/kernel/Read/ReadVariableOp"dense_273/bias/Read/ReadVariableOp$dense_274/kernel/Read/ReadVariableOp"dense_274/bias/Read/ReadVariableOp"ETH_Val/kernel/Read/ReadVariableOp ETH_Val/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp3Adam/First_Convolution/kernel/m/Read/ReadVariableOp1Adam/First_Convolution/bias/m/Read/ReadVariableOp4Adam/Second_Convolution/kernel/m/Read/ReadVariableOp2Adam/Second_Convolution/bias/m/Read/ReadVariableOp3Adam/Third_Convolution/kernel/m/Read/ReadVariableOp1Adam/Third_Convolution/bias/m/Read/ReadVariableOp+Adam/dense_272/kernel/m/Read/ReadVariableOp)Adam/dense_272/bias/m/Read/ReadVariableOp+Adam/dense_273/kernel/m/Read/ReadVariableOp)Adam/dense_273/bias/m/Read/ReadVariableOp+Adam/dense_274/kernel/m/Read/ReadVariableOp)Adam/dense_274/bias/m/Read/ReadVariableOp)Adam/ETH_Val/kernel/m/Read/ReadVariableOp'Adam/ETH_Val/bias/m/Read/ReadVariableOp3Adam/First_Convolution/kernel/v/Read/ReadVariableOp1Adam/First_Convolution/bias/v/Read/ReadVariableOp4Adam/Second_Convolution/kernel/v/Read/ReadVariableOp2Adam/Second_Convolution/bias/v/Read/ReadVariableOp3Adam/Third_Convolution/kernel/v/Read/ReadVariableOp1Adam/Third_Convolution/bias/v/Read/ReadVariableOp+Adam/dense_272/kernel/v/Read/ReadVariableOp)Adam/dense_272/bias/v/Read/ReadVariableOp+Adam/dense_273/kernel/v/Read/ReadVariableOp)Adam/dense_273/bias/v/Read/ReadVariableOp+Adam/dense_274/kernel/v/Read/ReadVariableOp)Adam/dense_274/bias/v/Read/ReadVariableOp)Adam/ETH_Val/kernel/v/Read/ReadVariableOp'Adam/ETH_Val/bias/v/Read/ReadVariableOpConst*@
Tin9
725	*
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
GPU 2J 8? *'
f"R 
__inference__traced_save_93281
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameFirst_Convolution/kernelFirst_Convolution/biasSecond_Convolution/kernelSecond_Convolution/biasThird_Convolution/kernelThird_Convolution/biasdense_272/kerneldense_272/biasdense_273/kerneldense_273/biasdense_274/kerneldense_274/biasETH_Val/kernelETH_Val/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/First_Convolution/kernel/mAdam/First_Convolution/bias/m Adam/Second_Convolution/kernel/mAdam/Second_Convolution/bias/mAdam/Third_Convolution/kernel/mAdam/Third_Convolution/bias/mAdam/dense_272/kernel/mAdam/dense_272/bias/mAdam/dense_273/kernel/mAdam/dense_273/bias/mAdam/dense_274/kernel/mAdam/dense_274/bias/mAdam/ETH_Val/kernel/mAdam/ETH_Val/bias/mAdam/First_Convolution/kernel/vAdam/First_Convolution/bias/v Adam/Second_Convolution/kernel/vAdam/Second_Convolution/bias/vAdam/Third_Convolution/kernel/vAdam/Third_Convolution/bias/vAdam/dense_272/kernel/vAdam/dense_272/bias/vAdam/dense_273/kernel/vAdam/dense_273/bias/vAdam/dense_274/kernel/vAdam/dense_274/bias/vAdam/ETH_Val/kernel/vAdam/ETH_Val/bias/v*?
Tin8
624*
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
GPU 2J 8? **
f%R#
!__inference__traced_restore_93444??	
?
?
,__inference_NFT_Valuator_layer_call_fn_92305
input_layer"
unknown:?
	unknown_0:	?$
	unknown_1:?@
	unknown_2:@#
	unknown_3:@ 
	unknown_4: 
	unknown_5:
?1?
	unknown_6:	?
	unknown_7:
??
	unknown_8:	?
	unknown_9:
??

unknown_10:	?

unknown_11:	?

unknown_12:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_layerunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_NFT_Valuator_layer_call_and_return_conditional_losses_922742
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:???????????: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
1
_output_shapes
:???????????
%
_user_specified_nameInput_Layer
?
l
B__inference_add_137_layer_call_and_return_conditional_losses_92255

inputs
inputs_1
identityX
addAddV2inputsinputs_1*
T0*(
_output_shapes
:??????????2
add\
IdentityIdentityadd:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?:
?
G__inference_NFT_Valuator_layer_call_and_return_conditional_losses_92610
input_layer2
first_convolution_92569:?&
first_convolution_92571:	?3
second_convolution_92574:?@&
second_convolution_92576:@1
third_convolution_92579:@ %
third_convolution_92581: #
dense_272_92587:
?1?
dense_272_92589:	?#
dense_273_92592:
??
dense_273_92594:	?#
dense_274_92598:
??
dense_274_92600:	? 
eth_val_92604:	?
eth_val_92606:
identity??ETH_Val/StatefulPartitionedCall?)First_Convolution/StatefulPartitionedCall?*Second_Convolution/StatefulPartitionedCall?)Third_Convolution/StatefulPartitionedCall?!dense_272/StatefulPartitionedCall?!dense_273/StatefulPartitionedCall?!dense_274/StatefulPartitionedCall?
)First_Convolution/StatefulPartitionedCallStatefulPartitionedCallinput_layerfirst_convolution_92569first_convolution_92571*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????yy?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_First_Convolution_layer_call_and_return_conditional_losses_921292+
)First_Convolution/StatefulPartitionedCall?
*Second_Convolution/StatefulPartitionedCallStatefulPartitionedCall2First_Convolution/StatefulPartitionedCall:output:0second_convolution_92574second_convolution_92576*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????tt@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_Second_Convolution_layer_call_and_return_conditional_losses_921462,
*Second_Convolution/StatefulPartitionedCall?
)Third_Convolution/StatefulPartitionedCallStatefulPartitionedCall3Second_Convolution/StatefulPartitionedCall:output:0third_convolution_92579third_convolution_92581*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????qq *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_Third_Convolution_layer_call_and_return_conditional_losses_921632+
)Third_Convolution/StatefulPartitionedCall?
Max_Pooling/PartitionedCallPartitionedCall2Third_Convolution/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_Max_Pooling_layer_call_and_return_conditional_losses_921732
Max_Pooling/PartitionedCall?
dropout_95/PartitionedCallPartitionedCall$Max_Pooling/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_95_layer_call_and_return_conditional_losses_921802
dropout_95/PartitionedCall?
flatten_50/PartitionedCallPartitionedCall#dropout_95/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????1* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_50_layer_call_and_return_conditional_losses_921882
flatten_50/PartitionedCall?
!dense_272/StatefulPartitionedCallStatefulPartitionedCall#flatten_50/PartitionedCall:output:0dense_272_92587dense_272_92589*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_272_layer_call_and_return_conditional_losses_922012#
!dense_272/StatefulPartitionedCall?
!dense_273/StatefulPartitionedCallStatefulPartitionedCall*dense_272/StatefulPartitionedCall:output:0dense_273_92592dense_273_92594*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_273_layer_call_and_return_conditional_losses_922182#
!dense_273/StatefulPartitionedCall?
add_136/PartitionedCallPartitionedCall*dense_273/StatefulPartitionedCall:output:0*dense_272/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_add_136_layer_call_and_return_conditional_losses_922302
add_136/PartitionedCall?
!dense_274/StatefulPartitionedCallStatefulPartitionedCall add_136/PartitionedCall:output:0dense_274_92598dense_274_92600*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_274_layer_call_and_return_conditional_losses_922432#
!dense_274/StatefulPartitionedCall?
add_137/PartitionedCallPartitionedCall*dense_274/StatefulPartitionedCall:output:0 add_136/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_add_137_layer_call_and_return_conditional_losses_922552
add_137/PartitionedCall?
ETH_Val/StatefulPartitionedCallStatefulPartitionedCall add_137/PartitionedCall:output:0eth_val_92604eth_val_92606*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_ETH_Val_layer_call_and_return_conditional_losses_922672!
ETH_Val/StatefulPartitionedCall?
IdentityIdentity(ETH_Val/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp ^ETH_Val/StatefulPartitionedCall*^First_Convolution/StatefulPartitionedCall+^Second_Convolution/StatefulPartitionedCall*^Third_Convolution/StatefulPartitionedCall"^dense_272/StatefulPartitionedCall"^dense_273/StatefulPartitionedCall"^dense_274/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:???????????: : : : : : : : : : : : : : 2B
ETH_Val/StatefulPartitionedCallETH_Val/StatefulPartitionedCall2V
)First_Convolution/StatefulPartitionedCall)First_Convolution/StatefulPartitionedCall2X
*Second_Convolution/StatefulPartitionedCall*Second_Convolution/StatefulPartitionedCall2V
)Third_Convolution/StatefulPartitionedCall)Third_Convolution/StatefulPartitionedCall2F
!dense_272/StatefulPartitionedCall!dense_272/StatefulPartitionedCall2F
!dense_273/StatefulPartitionedCall!dense_273/StatefulPartitionedCall2F
!dense_274/StatefulPartitionedCall!dense_274/StatefulPartitionedCall:^ Z
1
_output_shapes
:???????????
%
_user_specified_nameInput_Layer
?
S
'__inference_add_137_layer_call_fn_93080
inputs_0
inputs_1
identity?
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_add_137_layer_call_and_return_conditional_losses_922552
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????:??????????:R N
(
_output_shapes
:??????????
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
inputs/1
?
?
1__inference_First_Convolution_layer_call_fn_92893

inputs"
unknown:?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????yy?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_First_Convolution_layer_call_and_return_conditional_losses_921292
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????yy?2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
b
F__inference_Max_Pooling_layer_call_and_return_conditional_losses_92173

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????qq :W S
/
_output_shapes
:?????????qq 
 
_user_specified_nameinputs
?
c
E__inference_dropout_95_layer_call_and_return_conditional_losses_92180

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:????????? 2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:????????? 2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
#__inference_signature_wrapper_92695
input_layer"
unknown:?
	unknown_0:	?$
	unknown_1:?@
	unknown_2:@#
	unknown_3:@ 
	unknown_4: 
	unknown_5:
?1?
	unknown_6:	?
	unknown_7:
??
	unknown_8:	?
	unknown_9:
??

unknown_10:	?

unknown_11:	?

unknown_12:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_layerunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__wrapped_model_920892
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:???????????: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
1
_output_shapes
:???????????
%
_user_specified_nameInput_Layer
?9
?
G__inference_NFT_Valuator_layer_call_and_return_conditional_losses_92274

inputs2
first_convolution_92130:?&
first_convolution_92132:	?3
second_convolution_92147:?@&
second_convolution_92149:@1
third_convolution_92164:@ %
third_convolution_92166: #
dense_272_92202:
?1?
dense_272_92204:	?#
dense_273_92219:
??
dense_273_92221:	?#
dense_274_92244:
??
dense_274_92246:	? 
eth_val_92268:	?
eth_val_92270:
identity??ETH_Val/StatefulPartitionedCall?)First_Convolution/StatefulPartitionedCall?*Second_Convolution/StatefulPartitionedCall?)Third_Convolution/StatefulPartitionedCall?!dense_272/StatefulPartitionedCall?!dense_273/StatefulPartitionedCall?!dense_274/StatefulPartitionedCall?
)First_Convolution/StatefulPartitionedCallStatefulPartitionedCallinputsfirst_convolution_92130first_convolution_92132*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????yy?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_First_Convolution_layer_call_and_return_conditional_losses_921292+
)First_Convolution/StatefulPartitionedCall?
*Second_Convolution/StatefulPartitionedCallStatefulPartitionedCall2First_Convolution/StatefulPartitionedCall:output:0second_convolution_92147second_convolution_92149*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????tt@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_Second_Convolution_layer_call_and_return_conditional_losses_921462,
*Second_Convolution/StatefulPartitionedCall?
)Third_Convolution/StatefulPartitionedCallStatefulPartitionedCall3Second_Convolution/StatefulPartitionedCall:output:0third_convolution_92164third_convolution_92166*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????qq *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_Third_Convolution_layer_call_and_return_conditional_losses_921632+
)Third_Convolution/StatefulPartitionedCall?
Max_Pooling/PartitionedCallPartitionedCall2Third_Convolution/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_Max_Pooling_layer_call_and_return_conditional_losses_921732
Max_Pooling/PartitionedCall?
dropout_95/PartitionedCallPartitionedCall$Max_Pooling/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_95_layer_call_and_return_conditional_losses_921802
dropout_95/PartitionedCall?
flatten_50/PartitionedCallPartitionedCall#dropout_95/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????1* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_50_layer_call_and_return_conditional_losses_921882
flatten_50/PartitionedCall?
!dense_272/StatefulPartitionedCallStatefulPartitionedCall#flatten_50/PartitionedCall:output:0dense_272_92202dense_272_92204*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_272_layer_call_and_return_conditional_losses_922012#
!dense_272/StatefulPartitionedCall?
!dense_273/StatefulPartitionedCallStatefulPartitionedCall*dense_272/StatefulPartitionedCall:output:0dense_273_92219dense_273_92221*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_273_layer_call_and_return_conditional_losses_922182#
!dense_273/StatefulPartitionedCall?
add_136/PartitionedCallPartitionedCall*dense_273/StatefulPartitionedCall:output:0*dense_272/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_add_136_layer_call_and_return_conditional_losses_922302
add_136/PartitionedCall?
!dense_274/StatefulPartitionedCallStatefulPartitionedCall add_136/PartitionedCall:output:0dense_274_92244dense_274_92246*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_274_layer_call_and_return_conditional_losses_922432#
!dense_274/StatefulPartitionedCall?
add_137/PartitionedCallPartitionedCall*dense_274/StatefulPartitionedCall:output:0 add_136/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_add_137_layer_call_and_return_conditional_losses_922552
add_137/PartitionedCall?
ETH_Val/StatefulPartitionedCallStatefulPartitionedCall add_137/PartitionedCall:output:0eth_val_92268eth_val_92270*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_ETH_Val_layer_call_and_return_conditional_losses_922672!
ETH_Val/StatefulPartitionedCall?
IdentityIdentity(ETH_Val/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp ^ETH_Val/StatefulPartitionedCall*^First_Convolution/StatefulPartitionedCall+^Second_Convolution/StatefulPartitionedCall*^Third_Convolution/StatefulPartitionedCall"^dense_272/StatefulPartitionedCall"^dense_273/StatefulPartitionedCall"^dense_274/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:???????????: : : : : : : : : : : : : : 2B
ETH_Val/StatefulPartitionedCallETH_Val/StatefulPartitionedCall2V
)First_Convolution/StatefulPartitionedCall)First_Convolution/StatefulPartitionedCall2X
*Second_Convolution/StatefulPartitionedCall*Second_Convolution/StatefulPartitionedCall2V
)Third_Convolution/StatefulPartitionedCall)Third_Convolution/StatefulPartitionedCall2F
!dense_272/StatefulPartitionedCall!dense_272/StatefulPartitionedCall2F
!dense_273/StatefulPartitionedCall!dense_273/StatefulPartitionedCall2F
!dense_274/StatefulPartitionedCall!dense_274/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?;
?
G__inference_NFT_Valuator_layer_call_and_return_conditional_losses_92654
input_layer2
first_convolution_92613:?&
first_convolution_92615:	?3
second_convolution_92618:?@&
second_convolution_92620:@1
third_convolution_92623:@ %
third_convolution_92625: #
dense_272_92631:
?1?
dense_272_92633:	?#
dense_273_92636:
??
dense_273_92638:	?#
dense_274_92642:
??
dense_274_92644:	? 
eth_val_92648:	?
eth_val_92650:
identity??ETH_Val/StatefulPartitionedCall?)First_Convolution/StatefulPartitionedCall?*Second_Convolution/StatefulPartitionedCall?)Third_Convolution/StatefulPartitionedCall?!dense_272/StatefulPartitionedCall?!dense_273/StatefulPartitionedCall?!dense_274/StatefulPartitionedCall?"dropout_95/StatefulPartitionedCall?
)First_Convolution/StatefulPartitionedCallStatefulPartitionedCallinput_layerfirst_convolution_92613first_convolution_92615*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????yy?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_First_Convolution_layer_call_and_return_conditional_losses_921292+
)First_Convolution/StatefulPartitionedCall?
*Second_Convolution/StatefulPartitionedCallStatefulPartitionedCall2First_Convolution/StatefulPartitionedCall:output:0second_convolution_92618second_convolution_92620*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????tt@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_Second_Convolution_layer_call_and_return_conditional_losses_921462,
*Second_Convolution/StatefulPartitionedCall?
)Third_Convolution/StatefulPartitionedCallStatefulPartitionedCall3Second_Convolution/StatefulPartitionedCall:output:0third_convolution_92623third_convolution_92625*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????qq *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_Third_Convolution_layer_call_and_return_conditional_losses_921632+
)Third_Convolution/StatefulPartitionedCall?
Max_Pooling/PartitionedCallPartitionedCall2Third_Convolution/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_Max_Pooling_layer_call_and_return_conditional_losses_921732
Max_Pooling/PartitionedCall?
"dropout_95/StatefulPartitionedCallStatefulPartitionedCall$Max_Pooling/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_95_layer_call_and_return_conditional_losses_923852$
"dropout_95/StatefulPartitionedCall?
flatten_50/PartitionedCallPartitionedCall+dropout_95/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????1* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_50_layer_call_and_return_conditional_losses_921882
flatten_50/PartitionedCall?
!dense_272/StatefulPartitionedCallStatefulPartitionedCall#flatten_50/PartitionedCall:output:0dense_272_92631dense_272_92633*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_272_layer_call_and_return_conditional_losses_922012#
!dense_272/StatefulPartitionedCall?
!dense_273/StatefulPartitionedCallStatefulPartitionedCall*dense_272/StatefulPartitionedCall:output:0dense_273_92636dense_273_92638*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_273_layer_call_and_return_conditional_losses_922182#
!dense_273/StatefulPartitionedCall?
add_136/PartitionedCallPartitionedCall*dense_273/StatefulPartitionedCall:output:0*dense_272/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_add_136_layer_call_and_return_conditional_losses_922302
add_136/PartitionedCall?
!dense_274/StatefulPartitionedCallStatefulPartitionedCall add_136/PartitionedCall:output:0dense_274_92642dense_274_92644*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_274_layer_call_and_return_conditional_losses_922432#
!dense_274/StatefulPartitionedCall?
add_137/PartitionedCallPartitionedCall*dense_274/StatefulPartitionedCall:output:0 add_136/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_add_137_layer_call_and_return_conditional_losses_922552
add_137/PartitionedCall?
ETH_Val/StatefulPartitionedCallStatefulPartitionedCall add_137/PartitionedCall:output:0eth_val_92648eth_val_92650*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_ETH_Val_layer_call_and_return_conditional_losses_922672!
ETH_Val/StatefulPartitionedCall?
IdentityIdentity(ETH_Val/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp ^ETH_Val/StatefulPartitionedCall*^First_Convolution/StatefulPartitionedCall+^Second_Convolution/StatefulPartitionedCall*^Third_Convolution/StatefulPartitionedCall"^dense_272/StatefulPartitionedCall"^dense_273/StatefulPartitionedCall"^dense_274/StatefulPartitionedCall#^dropout_95/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:???????????: : : : : : : : : : : : : : 2B
ETH_Val/StatefulPartitionedCallETH_Val/StatefulPartitionedCall2V
)First_Convolution/StatefulPartitionedCall)First_Convolution/StatefulPartitionedCall2X
*Second_Convolution/StatefulPartitionedCall*Second_Convolution/StatefulPartitionedCall2V
)Third_Convolution/StatefulPartitionedCall)Third_Convolution/StatefulPartitionedCall2F
!dense_272/StatefulPartitionedCall!dense_272/StatefulPartitionedCall2F
!dense_273/StatefulPartitionedCall!dense_273/StatefulPartitionedCall2F
!dense_274/StatefulPartitionedCall!dense_274/StatefulPartitionedCall2H
"dropout_95/StatefulPartitionedCall"dropout_95/StatefulPartitionedCall:^ Z
1
_output_shapes
:???????????
%
_user_specified_nameInput_Layer
?
?
L__inference_First_Convolution_layer_call_and_return_conditional_losses_92904

inputs9
conv2d_readvariableop_resource:?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:?*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????yy?*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????yy?2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????yy?2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:?????????yy?2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
n
B__inference_add_137_layer_call_and_return_conditional_losses_93086
inputs_0
inputs_1
identityZ
addAddV2inputs_0inputs_1*
T0*(
_output_shapes
:??????????2
add\
IdentityIdentityadd:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????:??????????:R N
(
_output_shapes
:??????????
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
inputs/1
?
?
D__inference_dense_272_layer_call_and_return_conditional_losses_92201

inputs2
matmul_readvariableop_resource:
?1?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
?1?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????1: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????1
 
_user_specified_nameinputs
?
?
L__inference_First_Convolution_layer_call_and_return_conditional_losses_92129

inputs9
conv2d_readvariableop_resource:?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:?*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????yy?*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????yy?2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????yy?2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:?????????yy?2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
G
+__inference_Max_Pooling_layer_call_fn_92949

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
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_Max_Pooling_layer_call_and_return_conditional_losses_920982
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
?
?
1__inference_Third_Convolution_layer_call_fn_92933

inputs!
unknown:@ 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????qq *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_Third_Convolution_layer_call_and_return_conditional_losses_921632
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????qq 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????tt@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????tt@
 
_user_specified_nameinputs
?
F
*__inference_flatten_50_layer_call_fn_92996

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????1* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_50_layer_call_and_return_conditional_losses_921882
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????12

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
,__inference_NFT_Valuator_layer_call_fn_92728

inputs"
unknown:?
	unknown_0:	?$
	unknown_1:?@
	unknown_2:@#
	unknown_3:@ 
	unknown_4: 
	unknown_5:
?1?
	unknown_6:	?
	unknown_7:
??
	unknown_8:	?
	unknown_9:
??

unknown_10:	?

unknown_11:	?

unknown_12:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_NFT_Valuator_layer_call_and_return_conditional_losses_922742
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:???????????: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
M__inference_Second_Convolution_layer_call_and_return_conditional_losses_92924

inputs9
conv2d_readvariableop_resource:?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:?@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????tt@*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????tt@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????tt@2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????tt@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????yy?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????yy?
 
_user_specified_nameinputs
?
?
)__inference_dense_272_layer_call_fn_93011

inputs
unknown:
?1?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_272_layer_call_and_return_conditional_losses_922012
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????1: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????1
 
_user_specified_nameinputs
?

?
B__inference_ETH_Val_layer_call_and_return_conditional_losses_93105

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
F__inference_Max_Pooling_layer_call_and_return_conditional_losses_92098

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
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
?
?
,__inference_NFT_Valuator_layer_call_fn_92566
input_layer"
unknown:?
	unknown_0:	?$
	unknown_1:?@
	unknown_2:@#
	unknown_3:@ 
	unknown_4: 
	unknown_5:
?1?
	unknown_6:	?
	unknown_7:
??
	unknown_8:	?
	unknown_9:
??

unknown_10:	?

unknown_11:	?

unknown_12:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_layerunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_NFT_Valuator_layer_call_and_return_conditional_losses_925022
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:???????????: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
1
_output_shapes
:???????????
%
_user_specified_nameInput_Layer
?
?
D__inference_dense_274_layer_call_and_return_conditional_losses_93074

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?\
?
G__inference_NFT_Valuator_layer_call_and_return_conditional_losses_92884

inputsK
0first_convolution_conv2d_readvariableop_resource:?@
1first_convolution_biasadd_readvariableop_resource:	?L
1second_convolution_conv2d_readvariableop_resource:?@@
2second_convolution_biasadd_readvariableop_resource:@J
0third_convolution_conv2d_readvariableop_resource:@ ?
1third_convolution_biasadd_readvariableop_resource: <
(dense_272_matmul_readvariableop_resource:
?1?8
)dense_272_biasadd_readvariableop_resource:	?<
(dense_273_matmul_readvariableop_resource:
??8
)dense_273_biasadd_readvariableop_resource:	?<
(dense_274_matmul_readvariableop_resource:
??8
)dense_274_biasadd_readvariableop_resource:	?9
&eth_val_matmul_readvariableop_resource:	?5
'eth_val_biasadd_readvariableop_resource:
identity??ETH_Val/BiasAdd/ReadVariableOp?ETH_Val/MatMul/ReadVariableOp?(First_Convolution/BiasAdd/ReadVariableOp?'First_Convolution/Conv2D/ReadVariableOp?)Second_Convolution/BiasAdd/ReadVariableOp?(Second_Convolution/Conv2D/ReadVariableOp?(Third_Convolution/BiasAdd/ReadVariableOp?'Third_Convolution/Conv2D/ReadVariableOp? dense_272/BiasAdd/ReadVariableOp?dense_272/MatMul/ReadVariableOp? dense_273/BiasAdd/ReadVariableOp?dense_273/MatMul/ReadVariableOp? dense_274/BiasAdd/ReadVariableOp?dense_274/MatMul/ReadVariableOp?
'First_Convolution/Conv2D/ReadVariableOpReadVariableOp0first_convolution_conv2d_readvariableop_resource*'
_output_shapes
:?*
dtype02)
'First_Convolution/Conv2D/ReadVariableOp?
First_Convolution/Conv2DConv2Dinputs/First_Convolution/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????yy?*
paddingVALID*
strides
2
First_Convolution/Conv2D?
(First_Convolution/BiasAdd/ReadVariableOpReadVariableOp1first_convolution_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02*
(First_Convolution/BiasAdd/ReadVariableOp?
First_Convolution/BiasAddBiasAdd!First_Convolution/Conv2D:output:00First_Convolution/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????yy?2
First_Convolution/BiasAdd?
First_Convolution/ReluRelu"First_Convolution/BiasAdd:output:0*
T0*0
_output_shapes
:?????????yy?2
First_Convolution/Relu?
(Second_Convolution/Conv2D/ReadVariableOpReadVariableOp1second_convolution_conv2d_readvariableop_resource*'
_output_shapes
:?@*
dtype02*
(Second_Convolution/Conv2D/ReadVariableOp?
Second_Convolution/Conv2DConv2D$First_Convolution/Relu:activations:00Second_Convolution/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????tt@*
paddingVALID*
strides
2
Second_Convolution/Conv2D?
)Second_Convolution/BiasAdd/ReadVariableOpReadVariableOp2second_convolution_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)Second_Convolution/BiasAdd/ReadVariableOp?
Second_Convolution/BiasAddBiasAdd"Second_Convolution/Conv2D:output:01Second_Convolution/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????tt@2
Second_Convolution/BiasAdd?
Second_Convolution/ReluRelu#Second_Convolution/BiasAdd:output:0*
T0*/
_output_shapes
:?????????tt@2
Second_Convolution/Relu?
'Third_Convolution/Conv2D/ReadVariableOpReadVariableOp0third_convolution_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02)
'Third_Convolution/Conv2D/ReadVariableOp?
Third_Convolution/Conv2DConv2D%Second_Convolution/Relu:activations:0/Third_Convolution/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????qq *
paddingVALID*
strides
2
Third_Convolution/Conv2D?
(Third_Convolution/BiasAdd/ReadVariableOpReadVariableOp1third_convolution_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(Third_Convolution/BiasAdd/ReadVariableOp?
Third_Convolution/BiasAddBiasAdd!Third_Convolution/Conv2D:output:00Third_Convolution/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????qq 2
Third_Convolution/BiasAdd?
Third_Convolution/ReluRelu"Third_Convolution/BiasAdd:output:0*
T0*/
_output_shapes
:?????????qq 2
Third_Convolution/Relu?
Max_Pooling/MaxPoolMaxPool$Third_Convolution/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
Max_Pooling/MaxPooly
dropout_95/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_95/dropout/Const?
dropout_95/dropout/MulMulMax_Pooling/MaxPool:output:0!dropout_95/dropout/Const:output:0*
T0*/
_output_shapes
:????????? 2
dropout_95/dropout/Mul?
dropout_95/dropout/ShapeShapeMax_Pooling/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_95/dropout/Shape?
/dropout_95/dropout/random_uniform/RandomUniformRandomUniform!dropout_95/dropout/Shape:output:0*
T0*/
_output_shapes
:????????? *
dtype021
/dropout_95/dropout/random_uniform/RandomUniform?
!dropout_95/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2#
!dropout_95/dropout/GreaterEqual/y?
dropout_95/dropout/GreaterEqualGreaterEqual8dropout_95/dropout/random_uniform/RandomUniform:output:0*dropout_95/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:????????? 2!
dropout_95/dropout/GreaterEqual?
dropout_95/dropout/CastCast#dropout_95/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:????????? 2
dropout_95/dropout/Cast?
dropout_95/dropout/Mul_1Muldropout_95/dropout/Mul:z:0dropout_95/dropout/Cast:y:0*
T0*/
_output_shapes
:????????? 2
dropout_95/dropout/Mul_1u
flatten_50/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
flatten_50/Const?
flatten_50/ReshapeReshapedropout_95/dropout/Mul_1:z:0flatten_50/Const:output:0*
T0*(
_output_shapes
:??????????12
flatten_50/Reshape?
dense_272/MatMul/ReadVariableOpReadVariableOp(dense_272_matmul_readvariableop_resource* 
_output_shapes
:
?1?*
dtype02!
dense_272/MatMul/ReadVariableOp?
dense_272/MatMulMatMulflatten_50/Reshape:output:0'dense_272/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_272/MatMul?
 dense_272/BiasAdd/ReadVariableOpReadVariableOp)dense_272_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_272/BiasAdd/ReadVariableOp?
dense_272/BiasAddBiasAdddense_272/MatMul:product:0(dense_272/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_272/BiasAddw
dense_272/ReluReludense_272/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_272/Relu?
dense_273/MatMul/ReadVariableOpReadVariableOp(dense_273_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_273/MatMul/ReadVariableOp?
dense_273/MatMulMatMuldense_272/Relu:activations:0'dense_273/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_273/MatMul?
 dense_273/BiasAdd/ReadVariableOpReadVariableOp)dense_273_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_273/BiasAdd/ReadVariableOp?
dense_273/BiasAddBiasAdddense_273/MatMul:product:0(dense_273/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_273/BiasAddw
dense_273/ReluReludense_273/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_273/Relu?
add_136/addAddV2dense_273/Relu:activations:0dense_272/Relu:activations:0*
T0*(
_output_shapes
:??????????2
add_136/add?
dense_274/MatMul/ReadVariableOpReadVariableOp(dense_274_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_274/MatMul/ReadVariableOp?
dense_274/MatMulMatMuladd_136/add:z:0'dense_274/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_274/MatMul?
 dense_274/BiasAdd/ReadVariableOpReadVariableOp)dense_274_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_274/BiasAdd/ReadVariableOp?
dense_274/BiasAddBiasAdddense_274/MatMul:product:0(dense_274/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_274/BiasAddw
dense_274/ReluReludense_274/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_274/Relu?
add_137/addAddV2dense_274/Relu:activations:0add_136/add:z:0*
T0*(
_output_shapes
:??????????2
add_137/add?
ETH_Val/MatMul/ReadVariableOpReadVariableOp&eth_val_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
ETH_Val/MatMul/ReadVariableOp?
ETH_Val/MatMulMatMuladd_137/add:z:0%ETH_Val/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
ETH_Val/MatMul?
ETH_Val/BiasAdd/ReadVariableOpReadVariableOp'eth_val_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
ETH_Val/BiasAdd/ReadVariableOp?
ETH_Val/BiasAddBiasAddETH_Val/MatMul:product:0&ETH_Val/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
ETH_Val/BiasAdds
IdentityIdentityETH_Val/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^ETH_Val/BiasAdd/ReadVariableOp^ETH_Val/MatMul/ReadVariableOp)^First_Convolution/BiasAdd/ReadVariableOp(^First_Convolution/Conv2D/ReadVariableOp*^Second_Convolution/BiasAdd/ReadVariableOp)^Second_Convolution/Conv2D/ReadVariableOp)^Third_Convolution/BiasAdd/ReadVariableOp(^Third_Convolution/Conv2D/ReadVariableOp!^dense_272/BiasAdd/ReadVariableOp ^dense_272/MatMul/ReadVariableOp!^dense_273/BiasAdd/ReadVariableOp ^dense_273/MatMul/ReadVariableOp!^dense_274/BiasAdd/ReadVariableOp ^dense_274/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:???????????: : : : : : : : : : : : : : 2@
ETH_Val/BiasAdd/ReadVariableOpETH_Val/BiasAdd/ReadVariableOp2>
ETH_Val/MatMul/ReadVariableOpETH_Val/MatMul/ReadVariableOp2T
(First_Convolution/BiasAdd/ReadVariableOp(First_Convolution/BiasAdd/ReadVariableOp2R
'First_Convolution/Conv2D/ReadVariableOp'First_Convolution/Conv2D/ReadVariableOp2V
)Second_Convolution/BiasAdd/ReadVariableOp)Second_Convolution/BiasAdd/ReadVariableOp2T
(Second_Convolution/Conv2D/ReadVariableOp(Second_Convolution/Conv2D/ReadVariableOp2T
(Third_Convolution/BiasAdd/ReadVariableOp(Third_Convolution/BiasAdd/ReadVariableOp2R
'Third_Convolution/Conv2D/ReadVariableOp'Third_Convolution/Conv2D/ReadVariableOp2D
 dense_272/BiasAdd/ReadVariableOp dense_272/BiasAdd/ReadVariableOp2B
dense_272/MatMul/ReadVariableOpdense_272/MatMul/ReadVariableOp2D
 dense_273/BiasAdd/ReadVariableOp dense_273/BiasAdd/ReadVariableOp2B
dense_273/MatMul/ReadVariableOpdense_273/MatMul/ReadVariableOp2D
 dense_274/BiasAdd/ReadVariableOp dense_274/BiasAdd/ReadVariableOp2B
dense_274/MatMul/ReadVariableOpdense_274/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?

?
B__inference_ETH_Val_layer_call_and_return_conditional_losses_92267

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
D__inference_dense_273_layer_call_and_return_conditional_losses_93042

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?g
?
 __inference__wrapped_model_92089
input_layerX
=nft_valuator_first_convolution_conv2d_readvariableop_resource:?M
>nft_valuator_first_convolution_biasadd_readvariableop_resource:	?Y
>nft_valuator_second_convolution_conv2d_readvariableop_resource:?@M
?nft_valuator_second_convolution_biasadd_readvariableop_resource:@W
=nft_valuator_third_convolution_conv2d_readvariableop_resource:@ L
>nft_valuator_third_convolution_biasadd_readvariableop_resource: I
5nft_valuator_dense_272_matmul_readvariableop_resource:
?1?E
6nft_valuator_dense_272_biasadd_readvariableop_resource:	?I
5nft_valuator_dense_273_matmul_readvariableop_resource:
??E
6nft_valuator_dense_273_biasadd_readvariableop_resource:	?I
5nft_valuator_dense_274_matmul_readvariableop_resource:
??E
6nft_valuator_dense_274_biasadd_readvariableop_resource:	?F
3nft_valuator_eth_val_matmul_readvariableop_resource:	?B
4nft_valuator_eth_val_biasadd_readvariableop_resource:
identity??+NFT_Valuator/ETH_Val/BiasAdd/ReadVariableOp?*NFT_Valuator/ETH_Val/MatMul/ReadVariableOp?5NFT_Valuator/First_Convolution/BiasAdd/ReadVariableOp?4NFT_Valuator/First_Convolution/Conv2D/ReadVariableOp?6NFT_Valuator/Second_Convolution/BiasAdd/ReadVariableOp?5NFT_Valuator/Second_Convolution/Conv2D/ReadVariableOp?5NFT_Valuator/Third_Convolution/BiasAdd/ReadVariableOp?4NFT_Valuator/Third_Convolution/Conv2D/ReadVariableOp?-NFT_Valuator/dense_272/BiasAdd/ReadVariableOp?,NFT_Valuator/dense_272/MatMul/ReadVariableOp?-NFT_Valuator/dense_273/BiasAdd/ReadVariableOp?,NFT_Valuator/dense_273/MatMul/ReadVariableOp?-NFT_Valuator/dense_274/BiasAdd/ReadVariableOp?,NFT_Valuator/dense_274/MatMul/ReadVariableOp?
4NFT_Valuator/First_Convolution/Conv2D/ReadVariableOpReadVariableOp=nft_valuator_first_convolution_conv2d_readvariableop_resource*'
_output_shapes
:?*
dtype026
4NFT_Valuator/First_Convolution/Conv2D/ReadVariableOp?
%NFT_Valuator/First_Convolution/Conv2DConv2Dinput_layer<NFT_Valuator/First_Convolution/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????yy?*
paddingVALID*
strides
2'
%NFT_Valuator/First_Convolution/Conv2D?
5NFT_Valuator/First_Convolution/BiasAdd/ReadVariableOpReadVariableOp>nft_valuator_first_convolution_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype027
5NFT_Valuator/First_Convolution/BiasAdd/ReadVariableOp?
&NFT_Valuator/First_Convolution/BiasAddBiasAdd.NFT_Valuator/First_Convolution/Conv2D:output:0=NFT_Valuator/First_Convolution/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????yy?2(
&NFT_Valuator/First_Convolution/BiasAdd?
#NFT_Valuator/First_Convolution/ReluRelu/NFT_Valuator/First_Convolution/BiasAdd:output:0*
T0*0
_output_shapes
:?????????yy?2%
#NFT_Valuator/First_Convolution/Relu?
5NFT_Valuator/Second_Convolution/Conv2D/ReadVariableOpReadVariableOp>nft_valuator_second_convolution_conv2d_readvariableop_resource*'
_output_shapes
:?@*
dtype027
5NFT_Valuator/Second_Convolution/Conv2D/ReadVariableOp?
&NFT_Valuator/Second_Convolution/Conv2DConv2D1NFT_Valuator/First_Convolution/Relu:activations:0=NFT_Valuator/Second_Convolution/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????tt@*
paddingVALID*
strides
2(
&NFT_Valuator/Second_Convolution/Conv2D?
6NFT_Valuator/Second_Convolution/BiasAdd/ReadVariableOpReadVariableOp?nft_valuator_second_convolution_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype028
6NFT_Valuator/Second_Convolution/BiasAdd/ReadVariableOp?
'NFT_Valuator/Second_Convolution/BiasAddBiasAdd/NFT_Valuator/Second_Convolution/Conv2D:output:0>NFT_Valuator/Second_Convolution/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????tt@2)
'NFT_Valuator/Second_Convolution/BiasAdd?
$NFT_Valuator/Second_Convolution/ReluRelu0NFT_Valuator/Second_Convolution/BiasAdd:output:0*
T0*/
_output_shapes
:?????????tt@2&
$NFT_Valuator/Second_Convolution/Relu?
4NFT_Valuator/Third_Convolution/Conv2D/ReadVariableOpReadVariableOp=nft_valuator_third_convolution_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype026
4NFT_Valuator/Third_Convolution/Conv2D/ReadVariableOp?
%NFT_Valuator/Third_Convolution/Conv2DConv2D2NFT_Valuator/Second_Convolution/Relu:activations:0<NFT_Valuator/Third_Convolution/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????qq *
paddingVALID*
strides
2'
%NFT_Valuator/Third_Convolution/Conv2D?
5NFT_Valuator/Third_Convolution/BiasAdd/ReadVariableOpReadVariableOp>nft_valuator_third_convolution_biasadd_readvariableop_resource*
_output_shapes
: *
dtype027
5NFT_Valuator/Third_Convolution/BiasAdd/ReadVariableOp?
&NFT_Valuator/Third_Convolution/BiasAddBiasAdd.NFT_Valuator/Third_Convolution/Conv2D:output:0=NFT_Valuator/Third_Convolution/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????qq 2(
&NFT_Valuator/Third_Convolution/BiasAdd?
#NFT_Valuator/Third_Convolution/ReluRelu/NFT_Valuator/Third_Convolution/BiasAdd:output:0*
T0*/
_output_shapes
:?????????qq 2%
#NFT_Valuator/Third_Convolution/Relu?
 NFT_Valuator/Max_Pooling/MaxPoolMaxPool1NFT_Valuator/Third_Convolution/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2"
 NFT_Valuator/Max_Pooling/MaxPool?
 NFT_Valuator/dropout_95/IdentityIdentity)NFT_Valuator/Max_Pooling/MaxPool:output:0*
T0*/
_output_shapes
:????????? 2"
 NFT_Valuator/dropout_95/Identity?
NFT_Valuator/flatten_50/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
NFT_Valuator/flatten_50/Const?
NFT_Valuator/flatten_50/ReshapeReshape)NFT_Valuator/dropout_95/Identity:output:0&NFT_Valuator/flatten_50/Const:output:0*
T0*(
_output_shapes
:??????????12!
NFT_Valuator/flatten_50/Reshape?
,NFT_Valuator/dense_272/MatMul/ReadVariableOpReadVariableOp5nft_valuator_dense_272_matmul_readvariableop_resource* 
_output_shapes
:
?1?*
dtype02.
,NFT_Valuator/dense_272/MatMul/ReadVariableOp?
NFT_Valuator/dense_272/MatMulMatMul(NFT_Valuator/flatten_50/Reshape:output:04NFT_Valuator/dense_272/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
NFT_Valuator/dense_272/MatMul?
-NFT_Valuator/dense_272/BiasAdd/ReadVariableOpReadVariableOp6nft_valuator_dense_272_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-NFT_Valuator/dense_272/BiasAdd/ReadVariableOp?
NFT_Valuator/dense_272/BiasAddBiasAdd'NFT_Valuator/dense_272/MatMul:product:05NFT_Valuator/dense_272/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
NFT_Valuator/dense_272/BiasAdd?
NFT_Valuator/dense_272/ReluRelu'NFT_Valuator/dense_272/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
NFT_Valuator/dense_272/Relu?
,NFT_Valuator/dense_273/MatMul/ReadVariableOpReadVariableOp5nft_valuator_dense_273_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,NFT_Valuator/dense_273/MatMul/ReadVariableOp?
NFT_Valuator/dense_273/MatMulMatMul)NFT_Valuator/dense_272/Relu:activations:04NFT_Valuator/dense_273/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
NFT_Valuator/dense_273/MatMul?
-NFT_Valuator/dense_273/BiasAdd/ReadVariableOpReadVariableOp6nft_valuator_dense_273_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-NFT_Valuator/dense_273/BiasAdd/ReadVariableOp?
NFT_Valuator/dense_273/BiasAddBiasAdd'NFT_Valuator/dense_273/MatMul:product:05NFT_Valuator/dense_273/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
NFT_Valuator/dense_273/BiasAdd?
NFT_Valuator/dense_273/ReluRelu'NFT_Valuator/dense_273/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
NFT_Valuator/dense_273/Relu?
NFT_Valuator/add_136/addAddV2)NFT_Valuator/dense_273/Relu:activations:0)NFT_Valuator/dense_272/Relu:activations:0*
T0*(
_output_shapes
:??????????2
NFT_Valuator/add_136/add?
,NFT_Valuator/dense_274/MatMul/ReadVariableOpReadVariableOp5nft_valuator_dense_274_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,NFT_Valuator/dense_274/MatMul/ReadVariableOp?
NFT_Valuator/dense_274/MatMulMatMulNFT_Valuator/add_136/add:z:04NFT_Valuator/dense_274/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
NFT_Valuator/dense_274/MatMul?
-NFT_Valuator/dense_274/BiasAdd/ReadVariableOpReadVariableOp6nft_valuator_dense_274_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-NFT_Valuator/dense_274/BiasAdd/ReadVariableOp?
NFT_Valuator/dense_274/BiasAddBiasAdd'NFT_Valuator/dense_274/MatMul:product:05NFT_Valuator/dense_274/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
NFT_Valuator/dense_274/BiasAdd?
NFT_Valuator/dense_274/ReluRelu'NFT_Valuator/dense_274/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
NFT_Valuator/dense_274/Relu?
NFT_Valuator/add_137/addAddV2)NFT_Valuator/dense_274/Relu:activations:0NFT_Valuator/add_136/add:z:0*
T0*(
_output_shapes
:??????????2
NFT_Valuator/add_137/add?
*NFT_Valuator/ETH_Val/MatMul/ReadVariableOpReadVariableOp3nft_valuator_eth_val_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02,
*NFT_Valuator/ETH_Val/MatMul/ReadVariableOp?
NFT_Valuator/ETH_Val/MatMulMatMulNFT_Valuator/add_137/add:z:02NFT_Valuator/ETH_Val/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
NFT_Valuator/ETH_Val/MatMul?
+NFT_Valuator/ETH_Val/BiasAdd/ReadVariableOpReadVariableOp4nft_valuator_eth_val_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+NFT_Valuator/ETH_Val/BiasAdd/ReadVariableOp?
NFT_Valuator/ETH_Val/BiasAddBiasAdd%NFT_Valuator/ETH_Val/MatMul:product:03NFT_Valuator/ETH_Val/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
NFT_Valuator/ETH_Val/BiasAdd?
IdentityIdentity%NFT_Valuator/ETH_Val/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp,^NFT_Valuator/ETH_Val/BiasAdd/ReadVariableOp+^NFT_Valuator/ETH_Val/MatMul/ReadVariableOp6^NFT_Valuator/First_Convolution/BiasAdd/ReadVariableOp5^NFT_Valuator/First_Convolution/Conv2D/ReadVariableOp7^NFT_Valuator/Second_Convolution/BiasAdd/ReadVariableOp6^NFT_Valuator/Second_Convolution/Conv2D/ReadVariableOp6^NFT_Valuator/Third_Convolution/BiasAdd/ReadVariableOp5^NFT_Valuator/Third_Convolution/Conv2D/ReadVariableOp.^NFT_Valuator/dense_272/BiasAdd/ReadVariableOp-^NFT_Valuator/dense_272/MatMul/ReadVariableOp.^NFT_Valuator/dense_273/BiasAdd/ReadVariableOp-^NFT_Valuator/dense_273/MatMul/ReadVariableOp.^NFT_Valuator/dense_274/BiasAdd/ReadVariableOp-^NFT_Valuator/dense_274/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:???????????: : : : : : : : : : : : : : 2Z
+NFT_Valuator/ETH_Val/BiasAdd/ReadVariableOp+NFT_Valuator/ETH_Val/BiasAdd/ReadVariableOp2X
*NFT_Valuator/ETH_Val/MatMul/ReadVariableOp*NFT_Valuator/ETH_Val/MatMul/ReadVariableOp2n
5NFT_Valuator/First_Convolution/BiasAdd/ReadVariableOp5NFT_Valuator/First_Convolution/BiasAdd/ReadVariableOp2l
4NFT_Valuator/First_Convolution/Conv2D/ReadVariableOp4NFT_Valuator/First_Convolution/Conv2D/ReadVariableOp2p
6NFT_Valuator/Second_Convolution/BiasAdd/ReadVariableOp6NFT_Valuator/Second_Convolution/BiasAdd/ReadVariableOp2n
5NFT_Valuator/Second_Convolution/Conv2D/ReadVariableOp5NFT_Valuator/Second_Convolution/Conv2D/ReadVariableOp2n
5NFT_Valuator/Third_Convolution/BiasAdd/ReadVariableOp5NFT_Valuator/Third_Convolution/BiasAdd/ReadVariableOp2l
4NFT_Valuator/Third_Convolution/Conv2D/ReadVariableOp4NFT_Valuator/Third_Convolution/Conv2D/ReadVariableOp2^
-NFT_Valuator/dense_272/BiasAdd/ReadVariableOp-NFT_Valuator/dense_272/BiasAdd/ReadVariableOp2\
,NFT_Valuator/dense_272/MatMul/ReadVariableOp,NFT_Valuator/dense_272/MatMul/ReadVariableOp2^
-NFT_Valuator/dense_273/BiasAdd/ReadVariableOp-NFT_Valuator/dense_273/BiasAdd/ReadVariableOp2\
,NFT_Valuator/dense_273/MatMul/ReadVariableOp,NFT_Valuator/dense_273/MatMul/ReadVariableOp2^
-NFT_Valuator/dense_274/BiasAdd/ReadVariableOp-NFT_Valuator/dense_274/BiasAdd/ReadVariableOp2\
,NFT_Valuator/dense_274/MatMul/ReadVariableOp,NFT_Valuator/dense_274/MatMul/ReadVariableOp:^ Z
1
_output_shapes
:???????????
%
_user_specified_nameInput_Layer
?
S
'__inference_add_136_layer_call_fn_93048
inputs_0
inputs_1
identity?
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_add_136_layer_call_and_return_conditional_losses_922302
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????:??????????:R N
(
_output_shapes
:??????????
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
inputs/1
?
?
)__inference_dense_274_layer_call_fn_93063

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_274_layer_call_and_return_conditional_losses_922432
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
)__inference_dense_273_layer_call_fn_93031

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_273_layer_call_and_return_conditional_losses_922182
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
a
E__inference_flatten_50_layer_call_and_return_conditional_losses_92188

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????12	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????12

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
??
? 
!__inference__traced_restore_93444
file_prefixD
)assignvariableop_first_convolution_kernel:?8
)assignvariableop_1_first_convolution_bias:	?G
,assignvariableop_2_second_convolution_kernel:?@8
*assignvariableop_3_second_convolution_bias:@E
+assignvariableop_4_third_convolution_kernel:@ 7
)assignvariableop_5_third_convolution_bias: 7
#assignvariableop_6_dense_272_kernel:
?1?0
!assignvariableop_7_dense_272_bias:	?7
#assignvariableop_8_dense_273_kernel:
??0
!assignvariableop_9_dense_273_bias:	?8
$assignvariableop_10_dense_274_kernel:
??1
"assignvariableop_11_dense_274_bias:	?5
"assignvariableop_12_eth_val_kernel:	?.
 assignvariableop_13_eth_val_bias:'
assignvariableop_14_adam_iter:	 )
assignvariableop_15_adam_beta_1: )
assignvariableop_16_adam_beta_2: (
assignvariableop_17_adam_decay: 0
&assignvariableop_18_adam_learning_rate: #
assignvariableop_19_total: #
assignvariableop_20_count: %
assignvariableop_21_total_1: %
assignvariableop_22_count_1: N
3assignvariableop_23_adam_first_convolution_kernel_m:?@
1assignvariableop_24_adam_first_convolution_bias_m:	?O
4assignvariableop_25_adam_second_convolution_kernel_m:?@@
2assignvariableop_26_adam_second_convolution_bias_m:@M
3assignvariableop_27_adam_third_convolution_kernel_m:@ ?
1assignvariableop_28_adam_third_convolution_bias_m: ?
+assignvariableop_29_adam_dense_272_kernel_m:
?1?8
)assignvariableop_30_adam_dense_272_bias_m:	??
+assignvariableop_31_adam_dense_273_kernel_m:
??8
)assignvariableop_32_adam_dense_273_bias_m:	??
+assignvariableop_33_adam_dense_274_kernel_m:
??8
)assignvariableop_34_adam_dense_274_bias_m:	?<
)assignvariableop_35_adam_eth_val_kernel_m:	?5
'assignvariableop_36_adam_eth_val_bias_m:N
3assignvariableop_37_adam_first_convolution_kernel_v:?@
1assignvariableop_38_adam_first_convolution_bias_v:	?O
4assignvariableop_39_adam_second_convolution_kernel_v:?@@
2assignvariableop_40_adam_second_convolution_bias_v:@M
3assignvariableop_41_adam_third_convolution_kernel_v:@ ?
1assignvariableop_42_adam_third_convolution_bias_v: ?
+assignvariableop_43_adam_dense_272_kernel_v:
?1?8
)assignvariableop_44_adam_dense_272_bias_v:	??
+assignvariableop_45_adam_dense_273_kernel_v:
??8
)assignvariableop_46_adam_dense_273_bias_v:	??
+assignvariableop_47_adam_dense_274_kernel_v:
??8
)assignvariableop_48_adam_dense_274_bias_v:	?<
)assignvariableop_49_adam_eth_val_kernel_v:	?5
'assignvariableop_50_adam_eth_val_bias_v:
identity_52??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*?
value?B?4B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*{
valuerBp4B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::*B
dtypes8
624	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp)assignvariableop_first_convolution_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp)assignvariableop_1_first_convolution_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp,assignvariableop_2_second_convolution_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp*assignvariableop_3_second_convolution_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp+assignvariableop_4_third_convolution_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp)assignvariableop_5_third_convolution_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp#assignvariableop_6_dense_272_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_dense_272_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp#assignvariableop_8_dense_273_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp!assignvariableop_9_dense_273_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp$assignvariableop_10_dense_274_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp"assignvariableop_11_dense_274_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp"assignvariableop_12_eth_val_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp assignvariableop_13_eth_val_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_iterIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_beta_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_beta_2Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_decayIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp&assignvariableop_18_adam_learning_rateIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOpassignvariableop_19_totalIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOpassignvariableop_20_countIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOpassignvariableop_21_total_1Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOpassignvariableop_22_count_1Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp3assignvariableop_23_adam_first_convolution_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp1assignvariableop_24_adam_first_convolution_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp4assignvariableop_25_adam_second_convolution_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp2assignvariableop_26_adam_second_convolution_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp3assignvariableop_27_adam_third_convolution_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp1assignvariableop_28_adam_third_convolution_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_272_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_272_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp+assignvariableop_31_adam_dense_273_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adam_dense_273_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp+assignvariableop_33_adam_dense_274_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp)assignvariableop_34_adam_dense_274_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp)assignvariableop_35_adam_eth_val_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp'assignvariableop_36_adam_eth_val_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp3assignvariableop_37_adam_first_convolution_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp1assignvariableop_38_adam_first_convolution_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp4assignvariableop_39_adam_second_convolution_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp2assignvariableop_40_adam_second_convolution_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp3assignvariableop_41_adam_third_convolution_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp1assignvariableop_42_adam_third_convolution_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp+assignvariableop_43_adam_dense_272_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp)assignvariableop_44_adam_dense_272_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp+assignvariableop_45_adam_dense_273_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOp)assignvariableop_46_adam_dense_273_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOp+assignvariableop_47_adam_dense_274_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOp)assignvariableop_48_adam_dense_274_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOp)assignvariableop_49_adam_eth_val_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOp'assignvariableop_50_adam_eth_val_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_509
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?	
Identity_51Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_51f
Identity_52IdentityIdentity_51:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_52?	
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_52Identity_52:output:0*{
_input_shapesj
h: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
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
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
D__inference_dense_274_layer_call_and_return_conditional_losses_92243

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
l
B__inference_add_136_layer_call_and_return_conditional_losses_92230

inputs
inputs_1
identityX
addAddV2inputsinputs_1*
T0*(
_output_shapes
:??????????2
add\
IdentityIdentityadd:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
F
*__inference_dropout_95_layer_call_fn_92969

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
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_95_layer_call_and_return_conditional_losses_921802
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
,__inference_NFT_Valuator_layer_call_fn_92761

inputs"
unknown:?
	unknown_0:	?$
	unknown_1:?@
	unknown_2:@#
	unknown_3:@ 
	unknown_4: 
	unknown_5:
?1?
	unknown_6:	?
	unknown_7:
??
	unknown_8:	?
	unknown_9:
??

unknown_10:	?

unknown_11:	?

unknown_12:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_NFT_Valuator_layer_call_and_return_conditional_losses_925022
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:???????????: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
n
B__inference_add_136_layer_call_and_return_conditional_losses_93054
inputs_0
inputs_1
identityZ
addAddV2inputs_0inputs_1*
T0*(
_output_shapes
:??????????2
add\
IdentityIdentityadd:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????:??????????:R N
(
_output_shapes
:??????????
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
inputs/1
?
G
+__inference_Max_Pooling_layer_call_fn_92954

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
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_Max_Pooling_layer_call_and_return_conditional_losses_921732
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????qq :W S
/
_output_shapes
:?????????qq 
 
_user_specified_nameinputs
?
?
D__inference_dense_272_layer_call_and_return_conditional_losses_93022

inputs2
matmul_readvariableop_resource:
?1?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
?1?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????1: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????1
 
_user_specified_nameinputs
?
?
L__inference_Third_Convolution_layer_call_and_return_conditional_losses_92944

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????qq *
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????qq 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????qq 2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????qq 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????tt@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????tt@
 
_user_specified_nameinputs
?
d
E__inference_dropout_95_layer_call_and_return_conditional_losses_92991

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:????????? 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:????????? *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:????????? 2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:????????? 2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:????????? 2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
D__inference_dense_273_layer_call_and_return_conditional_losses_92218

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
L__inference_Third_Convolution_layer_call_and_return_conditional_losses_92163

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????qq *
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????qq 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????qq 2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????qq 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????tt@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????tt@
 
_user_specified_nameinputs
?
d
E__inference_dropout_95_layer_call_and_return_conditional_losses_92385

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:????????? 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:????????? *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:????????? 2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:????????? 2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:????????? 2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
2__inference_Second_Convolution_layer_call_fn_92913

inputs"
unknown:?@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????tt@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_Second_Convolution_layer_call_and_return_conditional_losses_921462
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????tt@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????yy?: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????yy?
 
_user_specified_nameinputs
?R
?
G__inference_NFT_Valuator_layer_call_and_return_conditional_losses_92819

inputsK
0first_convolution_conv2d_readvariableop_resource:?@
1first_convolution_biasadd_readvariableop_resource:	?L
1second_convolution_conv2d_readvariableop_resource:?@@
2second_convolution_biasadd_readvariableop_resource:@J
0third_convolution_conv2d_readvariableop_resource:@ ?
1third_convolution_biasadd_readvariableop_resource: <
(dense_272_matmul_readvariableop_resource:
?1?8
)dense_272_biasadd_readvariableop_resource:	?<
(dense_273_matmul_readvariableop_resource:
??8
)dense_273_biasadd_readvariableop_resource:	?<
(dense_274_matmul_readvariableop_resource:
??8
)dense_274_biasadd_readvariableop_resource:	?9
&eth_val_matmul_readvariableop_resource:	?5
'eth_val_biasadd_readvariableop_resource:
identity??ETH_Val/BiasAdd/ReadVariableOp?ETH_Val/MatMul/ReadVariableOp?(First_Convolution/BiasAdd/ReadVariableOp?'First_Convolution/Conv2D/ReadVariableOp?)Second_Convolution/BiasAdd/ReadVariableOp?(Second_Convolution/Conv2D/ReadVariableOp?(Third_Convolution/BiasAdd/ReadVariableOp?'Third_Convolution/Conv2D/ReadVariableOp? dense_272/BiasAdd/ReadVariableOp?dense_272/MatMul/ReadVariableOp? dense_273/BiasAdd/ReadVariableOp?dense_273/MatMul/ReadVariableOp? dense_274/BiasAdd/ReadVariableOp?dense_274/MatMul/ReadVariableOp?
'First_Convolution/Conv2D/ReadVariableOpReadVariableOp0first_convolution_conv2d_readvariableop_resource*'
_output_shapes
:?*
dtype02)
'First_Convolution/Conv2D/ReadVariableOp?
First_Convolution/Conv2DConv2Dinputs/First_Convolution/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????yy?*
paddingVALID*
strides
2
First_Convolution/Conv2D?
(First_Convolution/BiasAdd/ReadVariableOpReadVariableOp1first_convolution_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02*
(First_Convolution/BiasAdd/ReadVariableOp?
First_Convolution/BiasAddBiasAdd!First_Convolution/Conv2D:output:00First_Convolution/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????yy?2
First_Convolution/BiasAdd?
First_Convolution/ReluRelu"First_Convolution/BiasAdd:output:0*
T0*0
_output_shapes
:?????????yy?2
First_Convolution/Relu?
(Second_Convolution/Conv2D/ReadVariableOpReadVariableOp1second_convolution_conv2d_readvariableop_resource*'
_output_shapes
:?@*
dtype02*
(Second_Convolution/Conv2D/ReadVariableOp?
Second_Convolution/Conv2DConv2D$First_Convolution/Relu:activations:00Second_Convolution/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????tt@*
paddingVALID*
strides
2
Second_Convolution/Conv2D?
)Second_Convolution/BiasAdd/ReadVariableOpReadVariableOp2second_convolution_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)Second_Convolution/BiasAdd/ReadVariableOp?
Second_Convolution/BiasAddBiasAdd"Second_Convolution/Conv2D:output:01Second_Convolution/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????tt@2
Second_Convolution/BiasAdd?
Second_Convolution/ReluRelu#Second_Convolution/BiasAdd:output:0*
T0*/
_output_shapes
:?????????tt@2
Second_Convolution/Relu?
'Third_Convolution/Conv2D/ReadVariableOpReadVariableOp0third_convolution_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02)
'Third_Convolution/Conv2D/ReadVariableOp?
Third_Convolution/Conv2DConv2D%Second_Convolution/Relu:activations:0/Third_Convolution/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????qq *
paddingVALID*
strides
2
Third_Convolution/Conv2D?
(Third_Convolution/BiasAdd/ReadVariableOpReadVariableOp1third_convolution_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(Third_Convolution/BiasAdd/ReadVariableOp?
Third_Convolution/BiasAddBiasAdd!Third_Convolution/Conv2D:output:00Third_Convolution/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????qq 2
Third_Convolution/BiasAdd?
Third_Convolution/ReluRelu"Third_Convolution/BiasAdd:output:0*
T0*/
_output_shapes
:?????????qq 2
Third_Convolution/Relu?
Max_Pooling/MaxPoolMaxPool$Third_Convolution/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
Max_Pooling/MaxPool?
dropout_95/IdentityIdentityMax_Pooling/MaxPool:output:0*
T0*/
_output_shapes
:????????? 2
dropout_95/Identityu
flatten_50/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
flatten_50/Const?
flatten_50/ReshapeReshapedropout_95/Identity:output:0flatten_50/Const:output:0*
T0*(
_output_shapes
:??????????12
flatten_50/Reshape?
dense_272/MatMul/ReadVariableOpReadVariableOp(dense_272_matmul_readvariableop_resource* 
_output_shapes
:
?1?*
dtype02!
dense_272/MatMul/ReadVariableOp?
dense_272/MatMulMatMulflatten_50/Reshape:output:0'dense_272/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_272/MatMul?
 dense_272/BiasAdd/ReadVariableOpReadVariableOp)dense_272_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_272/BiasAdd/ReadVariableOp?
dense_272/BiasAddBiasAdddense_272/MatMul:product:0(dense_272/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_272/BiasAddw
dense_272/ReluReludense_272/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_272/Relu?
dense_273/MatMul/ReadVariableOpReadVariableOp(dense_273_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_273/MatMul/ReadVariableOp?
dense_273/MatMulMatMuldense_272/Relu:activations:0'dense_273/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_273/MatMul?
 dense_273/BiasAdd/ReadVariableOpReadVariableOp)dense_273_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_273/BiasAdd/ReadVariableOp?
dense_273/BiasAddBiasAdddense_273/MatMul:product:0(dense_273/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_273/BiasAddw
dense_273/ReluReludense_273/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_273/Relu?
add_136/addAddV2dense_273/Relu:activations:0dense_272/Relu:activations:0*
T0*(
_output_shapes
:??????????2
add_136/add?
dense_274/MatMul/ReadVariableOpReadVariableOp(dense_274_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_274/MatMul/ReadVariableOp?
dense_274/MatMulMatMuladd_136/add:z:0'dense_274/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_274/MatMul?
 dense_274/BiasAdd/ReadVariableOpReadVariableOp)dense_274_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_274/BiasAdd/ReadVariableOp?
dense_274/BiasAddBiasAdddense_274/MatMul:product:0(dense_274/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_274/BiasAddw
dense_274/ReluReludense_274/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_274/Relu?
add_137/addAddV2dense_274/Relu:activations:0add_136/add:z:0*
T0*(
_output_shapes
:??????????2
add_137/add?
ETH_Val/MatMul/ReadVariableOpReadVariableOp&eth_val_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
ETH_Val/MatMul/ReadVariableOp?
ETH_Val/MatMulMatMuladd_137/add:z:0%ETH_Val/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
ETH_Val/MatMul?
ETH_Val/BiasAdd/ReadVariableOpReadVariableOp'eth_val_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
ETH_Val/BiasAdd/ReadVariableOp?
ETH_Val/BiasAddBiasAddETH_Val/MatMul:product:0&ETH_Val/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
ETH_Val/BiasAdds
IdentityIdentityETH_Val/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^ETH_Val/BiasAdd/ReadVariableOp^ETH_Val/MatMul/ReadVariableOp)^First_Convolution/BiasAdd/ReadVariableOp(^First_Convolution/Conv2D/ReadVariableOp*^Second_Convolution/BiasAdd/ReadVariableOp)^Second_Convolution/Conv2D/ReadVariableOp)^Third_Convolution/BiasAdd/ReadVariableOp(^Third_Convolution/Conv2D/ReadVariableOp!^dense_272/BiasAdd/ReadVariableOp ^dense_272/MatMul/ReadVariableOp!^dense_273/BiasAdd/ReadVariableOp ^dense_273/MatMul/ReadVariableOp!^dense_274/BiasAdd/ReadVariableOp ^dense_274/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:???????????: : : : : : : : : : : : : : 2@
ETH_Val/BiasAdd/ReadVariableOpETH_Val/BiasAdd/ReadVariableOp2>
ETH_Val/MatMul/ReadVariableOpETH_Val/MatMul/ReadVariableOp2T
(First_Convolution/BiasAdd/ReadVariableOp(First_Convolution/BiasAdd/ReadVariableOp2R
'First_Convolution/Conv2D/ReadVariableOp'First_Convolution/Conv2D/ReadVariableOp2V
)Second_Convolution/BiasAdd/ReadVariableOp)Second_Convolution/BiasAdd/ReadVariableOp2T
(Second_Convolution/Conv2D/ReadVariableOp(Second_Convolution/Conv2D/ReadVariableOp2T
(Third_Convolution/BiasAdd/ReadVariableOp(Third_Convolution/BiasAdd/ReadVariableOp2R
'Third_Convolution/Conv2D/ReadVariableOp'Third_Convolution/Conv2D/ReadVariableOp2D
 dense_272/BiasAdd/ReadVariableOp dense_272/BiasAdd/ReadVariableOp2B
dense_272/MatMul/ReadVariableOpdense_272/MatMul/ReadVariableOp2D
 dense_273/BiasAdd/ReadVariableOp dense_273/BiasAdd/ReadVariableOp2B
dense_273/MatMul/ReadVariableOpdense_273/MatMul/ReadVariableOp2D
 dense_274/BiasAdd/ReadVariableOp dense_274/BiasAdd/ReadVariableOp2B
dense_274/MatMul/ReadVariableOpdense_274/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
c
E__inference_dropout_95_layer_call_and_return_conditional_losses_92979

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:????????? 2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:????????? 2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
b
F__inference_Max_Pooling_layer_call_and_return_conditional_losses_92964

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????qq :W S
/
_output_shapes
:?????????qq 
 
_user_specified_nameinputs
?
b
F__inference_Max_Pooling_layer_call_and_return_conditional_losses_92959

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
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
?
c
*__inference_dropout_95_layer_call_fn_92974

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_95_layer_call_and_return_conditional_losses_923852
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?k
?
__inference__traced_save_93281
file_prefix7
3savev2_first_convolution_kernel_read_readvariableop5
1savev2_first_convolution_bias_read_readvariableop8
4savev2_second_convolution_kernel_read_readvariableop6
2savev2_second_convolution_bias_read_readvariableop7
3savev2_third_convolution_kernel_read_readvariableop5
1savev2_third_convolution_bias_read_readvariableop/
+savev2_dense_272_kernel_read_readvariableop-
)savev2_dense_272_bias_read_readvariableop/
+savev2_dense_273_kernel_read_readvariableop-
)savev2_dense_273_bias_read_readvariableop/
+savev2_dense_274_kernel_read_readvariableop-
)savev2_dense_274_bias_read_readvariableop-
)savev2_eth_val_kernel_read_readvariableop+
'savev2_eth_val_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop>
:savev2_adam_first_convolution_kernel_m_read_readvariableop<
8savev2_adam_first_convolution_bias_m_read_readvariableop?
;savev2_adam_second_convolution_kernel_m_read_readvariableop=
9savev2_adam_second_convolution_bias_m_read_readvariableop>
:savev2_adam_third_convolution_kernel_m_read_readvariableop<
8savev2_adam_third_convolution_bias_m_read_readvariableop6
2savev2_adam_dense_272_kernel_m_read_readvariableop4
0savev2_adam_dense_272_bias_m_read_readvariableop6
2savev2_adam_dense_273_kernel_m_read_readvariableop4
0savev2_adam_dense_273_bias_m_read_readvariableop6
2savev2_adam_dense_274_kernel_m_read_readvariableop4
0savev2_adam_dense_274_bias_m_read_readvariableop4
0savev2_adam_eth_val_kernel_m_read_readvariableop2
.savev2_adam_eth_val_bias_m_read_readvariableop>
:savev2_adam_first_convolution_kernel_v_read_readvariableop<
8savev2_adam_first_convolution_bias_v_read_readvariableop?
;savev2_adam_second_convolution_kernel_v_read_readvariableop=
9savev2_adam_second_convolution_bias_v_read_readvariableop>
:savev2_adam_third_convolution_kernel_v_read_readvariableop<
8savev2_adam_third_convolution_bias_v_read_readvariableop6
2savev2_adam_dense_272_kernel_v_read_readvariableop4
0savev2_adam_dense_272_bias_v_read_readvariableop6
2savev2_adam_dense_273_kernel_v_read_readvariableop4
0savev2_adam_dense_273_bias_v_read_readvariableop6
2savev2_adam_dense_274_kernel_v_read_readvariableop4
0savev2_adam_dense_274_bias_v_read_readvariableop4
0savev2_adam_eth_val_kernel_v_read_readvariableop2
.savev2_adam_eth_val_bias_v_read_readvariableop
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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*?
value?B?4B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*{
valuerBp4B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:03savev2_first_convolution_kernel_read_readvariableop1savev2_first_convolution_bias_read_readvariableop4savev2_second_convolution_kernel_read_readvariableop2savev2_second_convolution_bias_read_readvariableop3savev2_third_convolution_kernel_read_readvariableop1savev2_third_convolution_bias_read_readvariableop+savev2_dense_272_kernel_read_readvariableop)savev2_dense_272_bias_read_readvariableop+savev2_dense_273_kernel_read_readvariableop)savev2_dense_273_bias_read_readvariableop+savev2_dense_274_kernel_read_readvariableop)savev2_dense_274_bias_read_readvariableop)savev2_eth_val_kernel_read_readvariableop'savev2_eth_val_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop:savev2_adam_first_convolution_kernel_m_read_readvariableop8savev2_adam_first_convolution_bias_m_read_readvariableop;savev2_adam_second_convolution_kernel_m_read_readvariableop9savev2_adam_second_convolution_bias_m_read_readvariableop:savev2_adam_third_convolution_kernel_m_read_readvariableop8savev2_adam_third_convolution_bias_m_read_readvariableop2savev2_adam_dense_272_kernel_m_read_readvariableop0savev2_adam_dense_272_bias_m_read_readvariableop2savev2_adam_dense_273_kernel_m_read_readvariableop0savev2_adam_dense_273_bias_m_read_readvariableop2savev2_adam_dense_274_kernel_m_read_readvariableop0savev2_adam_dense_274_bias_m_read_readvariableop0savev2_adam_eth_val_kernel_m_read_readvariableop.savev2_adam_eth_val_bias_m_read_readvariableop:savev2_adam_first_convolution_kernel_v_read_readvariableop8savev2_adam_first_convolution_bias_v_read_readvariableop;savev2_adam_second_convolution_kernel_v_read_readvariableop9savev2_adam_second_convolution_bias_v_read_readvariableop:savev2_adam_third_convolution_kernel_v_read_readvariableop8savev2_adam_third_convolution_bias_v_read_readvariableop2savev2_adam_dense_272_kernel_v_read_readvariableop0savev2_adam_dense_272_bias_v_read_readvariableop2savev2_adam_dense_273_kernel_v_read_readvariableop0savev2_adam_dense_273_bias_v_read_readvariableop2savev2_adam_dense_274_kernel_v_read_readvariableop0savev2_adam_dense_274_bias_v_read_readvariableop0savev2_adam_eth_val_kernel_v_read_readvariableop.savev2_adam_eth_val_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *B
dtypes8
624	2
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
_input_shapes?
?: :?:?:?@:@:@ : :
?1?:?:
??:?:
??:?:	?:: : : : : : : : : :?:?:?@:@:@ : :
?1?:?:
??:?:
??:?:	?::?:?:?@:@:@ : :
?1?:?:
??:?:
??:?:	?:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:-)
'
_output_shapes
:?:!

_output_shapes	
:?:-)
'
_output_shapes
:?@: 

_output_shapes
:@:,(
&
_output_shapes
:@ : 

_output_shapes
: :&"
 
_output_shapes
:
?1?:!

_output_shapes	
:?:&	"
 
_output_shapes
:
??:!


_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?: 

_output_shapes
::
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?:!

_output_shapes	
:?:-)
'
_output_shapes
:?@: 

_output_shapes
:@:,(
&
_output_shapes
:@ : 

_output_shapes
: :&"
 
_output_shapes
:
?1?:!

_output_shapes	
:?:& "
 
_output_shapes
:
??:!!

_output_shapes	
:?:&""
 
_output_shapes
:
??:!#

_output_shapes	
:?:%$!

_output_shapes
:	?: %

_output_shapes
::-&)
'
_output_shapes
:?:!'

_output_shapes	
:?:-()
'
_output_shapes
:?@: )

_output_shapes
:@:,*(
&
_output_shapes
:@ : +

_output_shapes
: :&,"
 
_output_shapes
:
?1?:!-

_output_shapes	
:?:&."
 
_output_shapes
:
??:!/

_output_shapes	
:?:&0"
 
_output_shapes
:
??:!1

_output_shapes	
:?:%2!

_output_shapes
:	?: 3

_output_shapes
::4

_output_shapes
: 
?
?
M__inference_Second_Convolution_layer_call_and_return_conditional_losses_92146

inputs9
conv2d_readvariableop_resource:?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:?@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????tt@*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????tt@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????tt@2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????tt@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????yy?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????yy?
 
_user_specified_nameinputs
?
?
'__inference_ETH_Val_layer_call_fn_93095

inputs
unknown:	?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_ETH_Val_layer_call_and_return_conditional_losses_922672
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?;
?
G__inference_NFT_Valuator_layer_call_and_return_conditional_losses_92502

inputs2
first_convolution_92461:?&
first_convolution_92463:	?3
second_convolution_92466:?@&
second_convolution_92468:@1
third_convolution_92471:@ %
third_convolution_92473: #
dense_272_92479:
?1?
dense_272_92481:	?#
dense_273_92484:
??
dense_273_92486:	?#
dense_274_92490:
??
dense_274_92492:	? 
eth_val_92496:	?
eth_val_92498:
identity??ETH_Val/StatefulPartitionedCall?)First_Convolution/StatefulPartitionedCall?*Second_Convolution/StatefulPartitionedCall?)Third_Convolution/StatefulPartitionedCall?!dense_272/StatefulPartitionedCall?!dense_273/StatefulPartitionedCall?!dense_274/StatefulPartitionedCall?"dropout_95/StatefulPartitionedCall?
)First_Convolution/StatefulPartitionedCallStatefulPartitionedCallinputsfirst_convolution_92461first_convolution_92463*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????yy?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_First_Convolution_layer_call_and_return_conditional_losses_921292+
)First_Convolution/StatefulPartitionedCall?
*Second_Convolution/StatefulPartitionedCallStatefulPartitionedCall2First_Convolution/StatefulPartitionedCall:output:0second_convolution_92466second_convolution_92468*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????tt@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_Second_Convolution_layer_call_and_return_conditional_losses_921462,
*Second_Convolution/StatefulPartitionedCall?
)Third_Convolution/StatefulPartitionedCallStatefulPartitionedCall3Second_Convolution/StatefulPartitionedCall:output:0third_convolution_92471third_convolution_92473*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????qq *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_Third_Convolution_layer_call_and_return_conditional_losses_921632+
)Third_Convolution/StatefulPartitionedCall?
Max_Pooling/PartitionedCallPartitionedCall2Third_Convolution/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_Max_Pooling_layer_call_and_return_conditional_losses_921732
Max_Pooling/PartitionedCall?
"dropout_95/StatefulPartitionedCallStatefulPartitionedCall$Max_Pooling/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_95_layer_call_and_return_conditional_losses_923852$
"dropout_95/StatefulPartitionedCall?
flatten_50/PartitionedCallPartitionedCall+dropout_95/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????1* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_50_layer_call_and_return_conditional_losses_921882
flatten_50/PartitionedCall?
!dense_272/StatefulPartitionedCallStatefulPartitionedCall#flatten_50/PartitionedCall:output:0dense_272_92479dense_272_92481*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_272_layer_call_and_return_conditional_losses_922012#
!dense_272/StatefulPartitionedCall?
!dense_273/StatefulPartitionedCallStatefulPartitionedCall*dense_272/StatefulPartitionedCall:output:0dense_273_92484dense_273_92486*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_273_layer_call_and_return_conditional_losses_922182#
!dense_273/StatefulPartitionedCall?
add_136/PartitionedCallPartitionedCall*dense_273/StatefulPartitionedCall:output:0*dense_272/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_add_136_layer_call_and_return_conditional_losses_922302
add_136/PartitionedCall?
!dense_274/StatefulPartitionedCallStatefulPartitionedCall add_136/PartitionedCall:output:0dense_274_92490dense_274_92492*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_274_layer_call_and_return_conditional_losses_922432#
!dense_274/StatefulPartitionedCall?
add_137/PartitionedCallPartitionedCall*dense_274/StatefulPartitionedCall:output:0 add_136/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_add_137_layer_call_and_return_conditional_losses_922552
add_137/PartitionedCall?
ETH_Val/StatefulPartitionedCallStatefulPartitionedCall add_137/PartitionedCall:output:0eth_val_92496eth_val_92498*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_ETH_Val_layer_call_and_return_conditional_losses_922672!
ETH_Val/StatefulPartitionedCall?
IdentityIdentity(ETH_Val/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp ^ETH_Val/StatefulPartitionedCall*^First_Convolution/StatefulPartitionedCall+^Second_Convolution/StatefulPartitionedCall*^Third_Convolution/StatefulPartitionedCall"^dense_272/StatefulPartitionedCall"^dense_273/StatefulPartitionedCall"^dense_274/StatefulPartitionedCall#^dropout_95/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:???????????: : : : : : : : : : : : : : 2B
ETH_Val/StatefulPartitionedCallETH_Val/StatefulPartitionedCall2V
)First_Convolution/StatefulPartitionedCall)First_Convolution/StatefulPartitionedCall2X
*Second_Convolution/StatefulPartitionedCall*Second_Convolution/StatefulPartitionedCall2V
)Third_Convolution/StatefulPartitionedCall)Third_Convolution/StatefulPartitionedCall2F
!dense_272/StatefulPartitionedCall!dense_272/StatefulPartitionedCall2F
!dense_273/StatefulPartitionedCall!dense_273/StatefulPartitionedCall2F
!dense_274/StatefulPartitionedCall!dense_274/StatefulPartitionedCall2H
"dropout_95/StatefulPartitionedCall"dropout_95/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
a
E__inference_flatten_50_layer_call_and_return_conditional_losses_93002

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????12	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????12

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
Input_Layer>
serving_default_Input_Layer:0???????????;
ETH_Val0
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer-5
layer-6
layer_with_weights-3
layer-7
	layer_with_weights-4
	layer-8

layer-9
layer_with_weights-5
layer-10
layer-11
layer_with_weights-6
layer-12
	optimizer

signatures
#_self_saveable_object_factories
regularization_losses
	variables
trainable_variables
	keras_api
?_default_save_signature
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_network
D
#_self_saveable_object_factories"
_tf_keras_input_layer
?

kernel
bias
#_self_saveable_object_factories
regularization_losses
trainable_variables
	variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
#_self_saveable_object_factories
 regularization_losses
!trainable_variables
"	variables
#	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

$kernel
%bias
#&_self_saveable_object_factories
'regularization_losses
(trainable_variables
)	variables
*	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
#+_self_saveable_object_factories
,regularization_losses
-trainable_variables
.	variables
/	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
#0_self_saveable_object_factories
1regularization_losses
2trainable_variables
3	variables
4	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
#5_self_saveable_object_factories
6regularization_losses
7trainable_variables
8	variables
9	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

:kernel
;bias
#<_self_saveable_object_factories
=regularization_losses
>trainable_variables
?	variables
@	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Akernel
Bbias
#C_self_saveable_object_factories
Dregularization_losses
Etrainable_variables
F	variables
G	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
#H_self_saveable_object_factories
Iregularization_losses
Jtrainable_variables
K	variables
L	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Mkernel
Nbias
#O_self_saveable_object_factories
Pregularization_losses
Qtrainable_variables
R	variables
S	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
#T_self_saveable_object_factories
Uregularization_losses
Vtrainable_variables
W	variables
X	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Ykernel
Zbias
#[_self_saveable_object_factories
\regularization_losses
]trainable_variables
^	variables
_	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
`iter

abeta_1

bbeta_2
	cdecay
dlearning_ratem?m?m?m?$m?%m?:m?;m?Am?Bm?Mm?Nm?Ym?Zm?v?v?v?v?$v?%v?:v?;v?Av?Bv?Mv?Nv?Yv?Zv?"
	optimizer
-
?serving_default"
signature_map
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
?
0
1
2
3
$4
%5
:6
;7
A8
B9
M10
N11
Y12
Z13"
trackable_list_wrapper
?
0
1
2
3
$4
%5
:6
;7
A8
B9
M10
N11
Y12
Z13"
trackable_list_wrapper
?
elayer_metrics
regularization_losses
flayer_regularization_losses
gnon_trainable_variables
	variables

hlayers
trainable_variables
imetrics
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
3:1?2First_Convolution/kernel
%:#?2First_Convolution/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
jlayer_metrics
regularization_losses
trainable_variables
klayer_regularization_losses
lnon_trainable_variables
	variables

mlayers
nmetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
4:2?@2Second_Convolution/kernel
%:#@2Second_Convolution/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
olayer_metrics
 regularization_losses
!trainable_variables
player_regularization_losses
qnon_trainable_variables
"	variables

rlayers
smetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
2:0@ 2Third_Convolution/kernel
$:" 2Third_Convolution/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
?
tlayer_metrics
'regularization_losses
(trainable_variables
ulayer_regularization_losses
vnon_trainable_variables
)	variables

wlayers
xmetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
ylayer_metrics
,regularization_losses
-trainable_variables
zlayer_regularization_losses
{non_trainable_variables
.	variables

|layers
}metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
~layer_metrics
1regularization_losses
2trainable_variables
layer_regularization_losses
?non_trainable_variables
3	variables
?layers
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
6regularization_losses
7trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
8	variables
?layers
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
$:"
?1?2dense_272/kernel
:?2dense_272/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
?
?layer_metrics
=regularization_losses
>trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?	variables
?layers
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
$:"
??2dense_273/kernel
:?2dense_273/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
A0
B1"
trackable_list_wrapper
.
A0
B1"
trackable_list_wrapper
?
?layer_metrics
Dregularization_losses
Etrainable_variables
 ?layer_regularization_losses
?non_trainable_variables
F	variables
?layers
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
Iregularization_losses
Jtrainable_variables
 ?layer_regularization_losses
?non_trainable_variables
K	variables
?layers
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
$:"
??2dense_274/kernel
:?2dense_274/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
M0
N1"
trackable_list_wrapper
.
M0
N1"
trackable_list_wrapper
?
?layer_metrics
Pregularization_losses
Qtrainable_variables
 ?layer_regularization_losses
?non_trainable_variables
R	variables
?layers
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
Uregularization_losses
Vtrainable_variables
 ?layer_regularization_losses
?non_trainable_variables
W	variables
?layers
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:	?2ETH_Val/kernel
:2ETH_Val/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
Y0
Z1"
trackable_list_wrapper
.
Y0
Z1"
trackable_list_wrapper
?
?layer_metrics
\regularization_losses
]trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
^	variables
?layers
?metrics
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
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
~
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
12"
trackable_list_wrapper
0
?0
?1"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
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
8:6?2Adam/First_Convolution/kernel/m
*:(?2Adam/First_Convolution/bias/m
9:7?@2 Adam/Second_Convolution/kernel/m
*:(@2Adam/Second_Convolution/bias/m
7:5@ 2Adam/Third_Convolution/kernel/m
):' 2Adam/Third_Convolution/bias/m
):'
?1?2Adam/dense_272/kernel/m
": ?2Adam/dense_272/bias/m
):'
??2Adam/dense_273/kernel/m
": ?2Adam/dense_273/bias/m
):'
??2Adam/dense_274/kernel/m
": ?2Adam/dense_274/bias/m
&:$	?2Adam/ETH_Val/kernel/m
:2Adam/ETH_Val/bias/m
8:6?2Adam/First_Convolution/kernel/v
*:(?2Adam/First_Convolution/bias/v
9:7?@2 Adam/Second_Convolution/kernel/v
*:(@2Adam/Second_Convolution/bias/v
7:5@ 2Adam/Third_Convolution/kernel/v
):' 2Adam/Third_Convolution/bias/v
):'
?1?2Adam/dense_272/kernel/v
": ?2Adam/dense_272/bias/v
):'
??2Adam/dense_273/kernel/v
": ?2Adam/dense_273/bias/v
):'
??2Adam/dense_274/kernel/v
": ?2Adam/dense_274/bias/v
&:$	?2Adam/ETH_Val/kernel/v
:2Adam/ETH_Val/bias/v
?B?
 __inference__wrapped_model_92089Input_Layer"?
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
?2?
,__inference_NFT_Valuator_layer_call_fn_92305
,__inference_NFT_Valuator_layer_call_fn_92728
,__inference_NFT_Valuator_layer_call_fn_92761
,__inference_NFT_Valuator_layer_call_fn_92566?
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
?2?
G__inference_NFT_Valuator_layer_call_and_return_conditional_losses_92819
G__inference_NFT_Valuator_layer_call_and_return_conditional_losses_92884
G__inference_NFT_Valuator_layer_call_and_return_conditional_losses_92610
G__inference_NFT_Valuator_layer_call_and_return_conditional_losses_92654?
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
?2?
1__inference_First_Convolution_layer_call_fn_92893?
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
L__inference_First_Convolution_layer_call_and_return_conditional_losses_92904?
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
2__inference_Second_Convolution_layer_call_fn_92913?
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
M__inference_Second_Convolution_layer_call_and_return_conditional_losses_92924?
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
1__inference_Third_Convolution_layer_call_fn_92933?
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
L__inference_Third_Convolution_layer_call_and_return_conditional_losses_92944?
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
+__inference_Max_Pooling_layer_call_fn_92949
+__inference_Max_Pooling_layer_call_fn_92954?
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
F__inference_Max_Pooling_layer_call_and_return_conditional_losses_92959
F__inference_Max_Pooling_layer_call_and_return_conditional_losses_92964?
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
*__inference_dropout_95_layer_call_fn_92969
*__inference_dropout_95_layer_call_fn_92974?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_dropout_95_layer_call_and_return_conditional_losses_92979
E__inference_dropout_95_layer_call_and_return_conditional_losses_92991?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_flatten_50_layer_call_fn_92996?
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
E__inference_flatten_50_layer_call_and_return_conditional_losses_93002?
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
)__inference_dense_272_layer_call_fn_93011?
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
D__inference_dense_272_layer_call_and_return_conditional_losses_93022?
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
)__inference_dense_273_layer_call_fn_93031?
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
D__inference_dense_273_layer_call_and_return_conditional_losses_93042?
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
'__inference_add_136_layer_call_fn_93048?
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
B__inference_add_136_layer_call_and_return_conditional_losses_93054?
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
)__inference_dense_274_layer_call_fn_93063?
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
D__inference_dense_274_layer_call_and_return_conditional_losses_93074?
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
'__inference_add_137_layer_call_fn_93080?
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
B__inference_add_137_layer_call_and_return_conditional_losses_93086?
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
'__inference_ETH_Val_layer_call_fn_93095?
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
B__inference_ETH_Val_layer_call_and_return_conditional_losses_93105?
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
#__inference_signature_wrapper_92695Input_Layer"?
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
B__inference_ETH_Val_layer_call_and_return_conditional_losses_93105]YZ0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? {
'__inference_ETH_Val_layer_call_fn_93095PYZ0?-
&?#
!?
inputs??????????
? "???????????
L__inference_First_Convolution_layer_call_and_return_conditional_losses_92904o9?6
/?,
*?'
inputs???????????
? ".?+
$?!
0?????????yy?
? ?
1__inference_First_Convolution_layer_call_fn_92893b9?6
/?,
*?'
inputs???????????
? "!??????????yy??
F__inference_Max_Pooling_layer_call_and_return_conditional_losses_92959?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
F__inference_Max_Pooling_layer_call_and_return_conditional_losses_92964h7?4
-?*
(?%
inputs?????????qq 
? "-?*
#? 
0????????? 
? ?
+__inference_Max_Pooling_layer_call_fn_92949?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
+__inference_Max_Pooling_layer_call_fn_92954[7?4
-?*
(?%
inputs?????????qq 
? " ?????????? ?
G__inference_NFT_Valuator_layer_call_and_return_conditional_losses_92610$%:;ABMNYZF?C
<?9
/?,
Input_Layer???????????
p 

 
? "%?"
?
0?????????
? ?
G__inference_NFT_Valuator_layer_call_and_return_conditional_losses_92654$%:;ABMNYZF?C
<?9
/?,
Input_Layer???????????
p

 
? "%?"
?
0?????????
? ?
G__inference_NFT_Valuator_layer_call_and_return_conditional_losses_92819z$%:;ABMNYZA?>
7?4
*?'
inputs???????????
p 

 
? "%?"
?
0?????????
? ?
G__inference_NFT_Valuator_layer_call_and_return_conditional_losses_92884z$%:;ABMNYZA?>
7?4
*?'
inputs???????????
p

 
? "%?"
?
0?????????
? ?
,__inference_NFT_Valuator_layer_call_fn_92305r$%:;ABMNYZF?C
<?9
/?,
Input_Layer???????????
p 

 
? "???????????
,__inference_NFT_Valuator_layer_call_fn_92566r$%:;ABMNYZF?C
<?9
/?,
Input_Layer???????????
p

 
? "???????????
,__inference_NFT_Valuator_layer_call_fn_92728m$%:;ABMNYZA?>
7?4
*?'
inputs???????????
p 

 
? "???????????
,__inference_NFT_Valuator_layer_call_fn_92761m$%:;ABMNYZA?>
7?4
*?'
inputs???????????
p

 
? "???????????
M__inference_Second_Convolution_layer_call_and_return_conditional_losses_92924m8?5
.?+
)?&
inputs?????????yy?
? "-?*
#? 
0?????????tt@
? ?
2__inference_Second_Convolution_layer_call_fn_92913`8?5
.?+
)?&
inputs?????????yy?
? " ??????????tt@?
L__inference_Third_Convolution_layer_call_and_return_conditional_losses_92944l$%7?4
-?*
(?%
inputs?????????tt@
? "-?*
#? 
0?????????qq 
? ?
1__inference_Third_Convolution_layer_call_fn_92933_$%7?4
-?*
(?%
inputs?????????tt@
? " ??????????qq ?
 __inference__wrapped_model_92089?$%:;ABMNYZ>?;
4?1
/?,
Input_Layer???????????
? "1?.
,
ETH_Val!?
ETH_Val??????????
B__inference_add_136_layer_call_and_return_conditional_losses_93054?\?Y
R?O
M?J
#? 
inputs/0??????????
#? 
inputs/1??????????
? "&?#
?
0??????????
? ?
'__inference_add_136_layer_call_fn_93048y\?Y
R?O
M?J
#? 
inputs/0??????????
#? 
inputs/1??????????
? "????????????
B__inference_add_137_layer_call_and_return_conditional_losses_93086?\?Y
R?O
M?J
#? 
inputs/0??????????
#? 
inputs/1??????????
? "&?#
?
0??????????
? ?
'__inference_add_137_layer_call_fn_93080y\?Y
R?O
M?J
#? 
inputs/0??????????
#? 
inputs/1??????????
? "????????????
D__inference_dense_272_layer_call_and_return_conditional_losses_93022^:;0?-
&?#
!?
inputs??????????1
? "&?#
?
0??????????
? ~
)__inference_dense_272_layer_call_fn_93011Q:;0?-
&?#
!?
inputs??????????1
? "????????????
D__inference_dense_273_layer_call_and_return_conditional_losses_93042^AB0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ~
)__inference_dense_273_layer_call_fn_93031QAB0?-
&?#
!?
inputs??????????
? "????????????
D__inference_dense_274_layer_call_and_return_conditional_losses_93074^MN0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ~
)__inference_dense_274_layer_call_fn_93063QMN0?-
&?#
!?
inputs??????????
? "????????????
E__inference_dropout_95_layer_call_and_return_conditional_losses_92979l;?8
1?.
(?%
inputs????????? 
p 
? "-?*
#? 
0????????? 
? ?
E__inference_dropout_95_layer_call_and_return_conditional_losses_92991l;?8
1?.
(?%
inputs????????? 
p
? "-?*
#? 
0????????? 
? ?
*__inference_dropout_95_layer_call_fn_92969_;?8
1?.
(?%
inputs????????? 
p 
? " ?????????? ?
*__inference_dropout_95_layer_call_fn_92974_;?8
1?.
(?%
inputs????????? 
p
? " ?????????? ?
E__inference_flatten_50_layer_call_and_return_conditional_losses_93002a7?4
-?*
(?%
inputs????????? 
? "&?#
?
0??????????1
? ?
*__inference_flatten_50_layer_call_fn_92996T7?4
-?*
(?%
inputs????????? 
? "???????????1?
#__inference_signature_wrapper_92695?$%:;ABMNYZM?J
? 
C?@
>
Input_Layer/?,
Input_Layer???????????"1?.
,
ETH_Val!?
ETH_Val?????????