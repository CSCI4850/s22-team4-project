??
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
shape:?*)
shared_nameFirst_Convolution/kernel
?
,First_Convolution/kernel/Read/ReadVariableOpReadVariableOpFirst_Convolution/kernel*'
_output_shapes
:?*
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
z
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?1?*
shared_namedense_3/kernel
s
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel* 
_output_shapes
:
?1?*
dtype0
q
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_3/bias
j
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes	
:?*
dtype0
z
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*
shared_namedense_4/kernel
s
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel* 
_output_shapes
:
??*
dtype0
q
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_4/bias
j
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes	
:?*
dtype0
z
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*
shared_namedense_5/kernel
s
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel* 
_output_shapes
:
??*
dtype0
q
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_5/bias
j
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
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
shape:?*0
shared_name!Adam/First_Convolution/kernel/m
?
3Adam/First_Convolution/kernel/m/Read/ReadVariableOpReadVariableOpAdam/First_Convolution/kernel/m*'
_output_shapes
:?*
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
Adam/dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?1?*&
shared_nameAdam/dense_3/kernel/m
?
)Adam/dense_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/m* 
_output_shapes
:
?1?*
dtype0

Adam/dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/dense_3/bias/m
x
'Adam/dense_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*&
shared_nameAdam/dense_4/kernel/m
?
)Adam/dense_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/m* 
_output_shapes
:
??*
dtype0

Adam/dense_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/dense_4/bias/m
x
'Adam/dense_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*&
shared_nameAdam/dense_5/kernel/m
?
)Adam/dense_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/m* 
_output_shapes
:
??*
dtype0

Adam/dense_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/dense_5/bias/m
x
'Adam/dense_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/m*
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
shape:?*0
shared_name!Adam/First_Convolution/kernel/v
?
3Adam/First_Convolution/kernel/v/Read/ReadVariableOpReadVariableOpAdam/First_Convolution/kernel/v*'
_output_shapes
:?*
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
Adam/dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?1?*&
shared_nameAdam/dense_3/kernel/v
?
)Adam/dense_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/v* 
_output_shapes
:
?1?*
dtype0

Adam/dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/dense_3/bias/v
x
'Adam/dense_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*&
shared_nameAdam/dense_4/kernel/v
?
)Adam/dense_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/v* 
_output_shapes
:
??*
dtype0

Adam/dense_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/dense_4/bias/v
x
'Adam/dense_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*&
shared_nameAdam/dense_5/kernel/v
?
)Adam/dense_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/v* 
_output_shapes
:
??*
dtype0

Adam/dense_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/dense_5/bias/v
x
'Adam/dense_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/v*
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
?U
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?U
value?UB?U B?U
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
regularization_losses
	variables
trainable_variables
	keras_api

signatures
 
h

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
h

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
h

 kernel
!bias
"regularization_losses
#	variables
$trainable_variables
%	keras_api
R
&regularization_losses
'	variables
(trainable_variables
)	keras_api
R
*regularization_losses
+	variables
,trainable_variables
-	keras_api
R
.regularization_losses
/	variables
0trainable_variables
1	keras_api
h

2kernel
3bias
4regularization_losses
5	variables
6trainable_variables
7	keras_api
h

8kernel
9bias
:regularization_losses
;	variables
<trainable_variables
=	keras_api
R
>regularization_losses
?	variables
@trainable_variables
A	keras_api
h

Bkernel
Cbias
Dregularization_losses
E	variables
Ftrainable_variables
G	keras_api
R
Hregularization_losses
I	variables
Jtrainable_variables
K	keras_api
h

Lkernel
Mbias
Nregularization_losses
O	variables
Ptrainable_variables
Q	keras_api
?
Riter

Sbeta_1

Tbeta_2
	Udecay
Vlearning_ratem?m?m?m? m?!m?2m?3m?8m?9m?Bm?Cm?Lm?Mm?v?v?v?v? v?!v?2v?3v?8v?9v?Bv?Cv?Lv?Mv?
 
f
0
1
2
3
 4
!5
26
37
88
99
B10
C11
L12
M13
f
0
1
2
3
 4
!5
26
37
88
99
B10
C11
L12
M13
?
regularization_losses

Wlayers
Xlayer_metrics
Ynon_trainable_variables
	variables
Zmetrics
trainable_variables
[layer_regularization_losses
 
db
VARIABLE_VALUEFirst_Convolution/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEFirst_Convolution/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
regularization_losses

\layers
]layer_metrics
^non_trainable_variables
	variables
_metrics
trainable_variables
`layer_regularization_losses
ec
VARIABLE_VALUESecond_Convolution/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUESecond_Convolution/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
regularization_losses

alayers
blayer_metrics
cnon_trainable_variables
	variables
dmetrics
trainable_variables
elayer_regularization_losses
db
VARIABLE_VALUEThird_Convolution/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEThird_Convolution/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

 0
!1

 0
!1
?
"regularization_losses

flayers
glayer_metrics
hnon_trainable_variables
#	variables
imetrics
$trainable_variables
jlayer_regularization_losses
 
 
 
?
&regularization_losses

klayers
llayer_metrics
mnon_trainable_variables
'	variables
nmetrics
(trainable_variables
olayer_regularization_losses
 
 
 
?
*regularization_losses

players
qlayer_metrics
rnon_trainable_variables
+	variables
smetrics
,trainable_variables
tlayer_regularization_losses
 
 
 
?
.regularization_losses

ulayers
vlayer_metrics
wnon_trainable_variables
/	variables
xmetrics
0trainable_variables
ylayer_regularization_losses
ZX
VARIABLE_VALUEdense_3/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_3/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

20
31

20
31
?
4regularization_losses

zlayers
{layer_metrics
|non_trainable_variables
5	variables
}metrics
6trainable_variables
~layer_regularization_losses
ZX
VARIABLE_VALUEdense_4/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_4/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

80
91

80
91
?
:regularization_losses

layers
?layer_metrics
?non_trainable_variables
;	variables
?metrics
<trainable_variables
 ?layer_regularization_losses
 
 
 
?
>regularization_losses
?layers
?layer_metrics
?non_trainable_variables
?	variables
?metrics
@trainable_variables
 ?layer_regularization_losses
ZX
VARIABLE_VALUEdense_5/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_5/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
 

B0
C1

B0
C1
?
Dregularization_losses
?layers
?layer_metrics
?non_trainable_variables
E	variables
?metrics
Ftrainable_variables
 ?layer_regularization_losses
 
 
 
?
Hregularization_losses
?layers
?layer_metrics
?non_trainable_variables
I	variables
?metrics
Jtrainable_variables
 ?layer_regularization_losses
ZX
VARIABLE_VALUEETH_Val/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEETH_Val/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
 

L0
M1

L0
M1
?
Nregularization_losses
?layers
?layer_metrics
?non_trainable_variables
O	variables
?metrics
Ptrainable_variables
 ?layer_regularization_losses
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
 
 
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
}{
VARIABLE_VALUEAdam/dense_3/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_3/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_4/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_4/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_5/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_5/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
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
}{
VARIABLE_VALUEAdam/dense_3/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_3/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_4/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_4/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_5/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_5/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/ETH_Val/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/ETH_Val/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_Input_LayerPlaceholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_Input_LayerFirst_Convolution/kernelFirst_Convolution/biasSecond_Convolution/kernelSecond_Convolution/biasThird_Convolution/kernelThird_Convolution/biasdense_3/kerneldense_3/biasdense_4/kerneldense_4/biasdense_5/kerneldense_5/biasETH_Val/kernelETH_Val/bias*
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
#__inference_signature_wrapper_21831
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename,First_Convolution/kernel/Read/ReadVariableOp*First_Convolution/bias/Read/ReadVariableOp-Second_Convolution/kernel/Read/ReadVariableOp+Second_Convolution/bias/Read/ReadVariableOp,Third_Convolution/kernel/Read/ReadVariableOp*Third_Convolution/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOp"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOp"dense_5/kernel/Read/ReadVariableOp dense_5/bias/Read/ReadVariableOp"ETH_Val/kernel/Read/ReadVariableOp ETH_Val/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp3Adam/First_Convolution/kernel/m/Read/ReadVariableOp1Adam/First_Convolution/bias/m/Read/ReadVariableOp4Adam/Second_Convolution/kernel/m/Read/ReadVariableOp2Adam/Second_Convolution/bias/m/Read/ReadVariableOp3Adam/Third_Convolution/kernel/m/Read/ReadVariableOp1Adam/Third_Convolution/bias/m/Read/ReadVariableOp)Adam/dense_3/kernel/m/Read/ReadVariableOp'Adam/dense_3/bias/m/Read/ReadVariableOp)Adam/dense_4/kernel/m/Read/ReadVariableOp'Adam/dense_4/bias/m/Read/ReadVariableOp)Adam/dense_5/kernel/m/Read/ReadVariableOp'Adam/dense_5/bias/m/Read/ReadVariableOp)Adam/ETH_Val/kernel/m/Read/ReadVariableOp'Adam/ETH_Val/bias/m/Read/ReadVariableOp3Adam/First_Convolution/kernel/v/Read/ReadVariableOp1Adam/First_Convolution/bias/v/Read/ReadVariableOp4Adam/Second_Convolution/kernel/v/Read/ReadVariableOp2Adam/Second_Convolution/bias/v/Read/ReadVariableOp3Adam/Third_Convolution/kernel/v/Read/ReadVariableOp1Adam/Third_Convolution/bias/v/Read/ReadVariableOp)Adam/dense_3/kernel/v/Read/ReadVariableOp'Adam/dense_3/bias/v/Read/ReadVariableOp)Adam/dense_4/kernel/v/Read/ReadVariableOp'Adam/dense_4/bias/v/Read/ReadVariableOp)Adam/dense_5/kernel/v/Read/ReadVariableOp'Adam/dense_5/bias/v/Read/ReadVariableOp)Adam/ETH_Val/kernel/v/Read/ReadVariableOp'Adam/ETH_Val/bias/v/Read/ReadVariableOpConst*@
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
__inference__traced_save_22417
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameFirst_Convolution/kernelFirst_Convolution/biasSecond_Convolution/kernelSecond_Convolution/biasThird_Convolution/kernelThird_Convolution/biasdense_3/kerneldense_3/biasdense_4/kerneldense_4/biasdense_5/kerneldense_5/biasETH_Val/kernelETH_Val/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/First_Convolution/kernel/mAdam/First_Convolution/bias/m Adam/Second_Convolution/kernel/mAdam/Second_Convolution/bias/mAdam/Third_Convolution/kernel/mAdam/Third_Convolution/bias/mAdam/dense_3/kernel/mAdam/dense_3/bias/mAdam/dense_4/kernel/mAdam/dense_4/bias/mAdam/dense_5/kernel/mAdam/dense_5/bias/mAdam/ETH_Val/kernel/mAdam/ETH_Val/bias/mAdam/First_Convolution/kernel/vAdam/First_Convolution/bias/v Adam/Second_Convolution/kernel/vAdam/Second_Convolution/bias/vAdam/Third_Convolution/kernel/vAdam/Third_Convolution/bias/vAdam/dense_3/kernel/vAdam/dense_3/bias/vAdam/dense_4/kernel/vAdam/dense_4/bias/vAdam/dense_5/kernel/vAdam/dense_5/bias/vAdam/ETH_Val/kernel/vAdam/ETH_Val/bias/v*?
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
!__inference__traced_restore_22580??	
?
G
+__inference_Max_Pooling_layer_call_fn_22100

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
F__inference_Max_Pooling_layer_call_and_return_conditional_losses_213092
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
B__inference_dense_3_layer_call_and_return_conditional_losses_22149

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
?
,__inference_NFT_Valuator_layer_call_fn_22020

inputs"
unknown:?
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
G__inference_NFT_Valuator_layer_call_and_return_conditional_losses_216382
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
9:???????????: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?

?
B__inference_ETH_Val_layer_call_and_return_conditional_losses_21403

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
?
`
D__inference_flatten_1_layer_call_and_return_conditional_losses_22133

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
?
?
,__inference_NFT_Valuator_layer_call_fn_21441
input_layer"
unknown:?
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
G__inference_NFT_Valuator_layer_call_and_return_conditional_losses_214102
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
9:???????????: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
1
_output_shapes
:???????????
%
_user_specified_nameInput_Layer
??
? 
!__inference__traced_restore_22580
file_prefixD
)assignvariableop_first_convolution_kernel:?8
)assignvariableop_1_first_convolution_bias:	?G
,assignvariableop_2_second_convolution_kernel:?@8
*assignvariableop_3_second_convolution_bias:@E
+assignvariableop_4_third_convolution_kernel:@ 7
)assignvariableop_5_third_convolution_bias: 5
!assignvariableop_6_dense_3_kernel:
?1?.
assignvariableop_7_dense_3_bias:	?5
!assignvariableop_8_dense_4_kernel:
??.
assignvariableop_9_dense_4_bias:	?6
"assignvariableop_10_dense_5_kernel:
??/
 assignvariableop_11_dense_5_bias:	?5
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
3assignvariableop_23_adam_first_convolution_kernel_m:?@
1assignvariableop_24_adam_first_convolution_bias_m:	?O
4assignvariableop_25_adam_second_convolution_kernel_m:?@@
2assignvariableop_26_adam_second_convolution_bias_m:@M
3assignvariableop_27_adam_third_convolution_kernel_m:@ ?
1assignvariableop_28_adam_third_convolution_bias_m: =
)assignvariableop_29_adam_dense_3_kernel_m:
?1?6
'assignvariableop_30_adam_dense_3_bias_m:	?=
)assignvariableop_31_adam_dense_4_kernel_m:
??6
'assignvariableop_32_adam_dense_4_bias_m:	?=
)assignvariableop_33_adam_dense_5_kernel_m:
??6
'assignvariableop_34_adam_dense_5_bias_m:	?<
)assignvariableop_35_adam_eth_val_kernel_m:	?5
'assignvariableop_36_adam_eth_val_bias_m:N
3assignvariableop_37_adam_first_convolution_kernel_v:?@
1assignvariableop_38_adam_first_convolution_bias_v:	?O
4assignvariableop_39_adam_second_convolution_kernel_v:?@@
2assignvariableop_40_adam_second_convolution_bias_v:@M
3assignvariableop_41_adam_third_convolution_kernel_v:@ ?
1assignvariableop_42_adam_third_convolution_bias_v: =
)assignvariableop_43_adam_dense_3_kernel_v:
?1?6
'assignvariableop_44_adam_dense_3_bias_v:	?=
)assignvariableop_45_adam_dense_4_kernel_v:
??6
'assignvariableop_46_adam_dense_4_bias_v:	?=
)assignvariableop_47_adam_dense_5_kernel_v:
??6
'assignvariableop_48_adam_dense_5_bias_v:	?<
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
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_3_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_3_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_4_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_4_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp"assignvariableop_10_dense_5_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp assignvariableop_11_dense_5_biasIdentity_11:output:0"/device:CPU:0*
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
AssignVariableOp_29AssignVariableOp)assignvariableop_29_adam_dense_3_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp'assignvariableop_30_adam_dense_3_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp)assignvariableop_31_adam_dense_4_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp'assignvariableop_32_adam_dense_4_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp)assignvariableop_33_adam_dense_5_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp'assignvariableop_34_adam_dense_5_bias_mIdentity_34:output:0"/device:CPU:0*
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
AssignVariableOp_43AssignVariableOp)assignvariableop_43_adam_dense_3_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp'assignvariableop_44_adam_dense_3_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp)assignvariableop_45_adam_dense_4_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOp'assignvariableop_46_adam_dense_4_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOp)assignvariableop_47_adam_dense_5_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOp'assignvariableop_48_adam_dense_5_bias_vIdentity_48:output:0"/device:CPU:0*
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
B__inference_dense_5_layer_call_and_return_conditional_losses_21379

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
b
D__inference_dropout_1_layer_call_and_return_conditional_losses_22105

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
?Q
?
G__inference_NFT_Valuator_layer_call_and_return_conditional_losses_21889

inputsK
0first_convolution_conv2d_readvariableop_resource:?@
1first_convolution_biasadd_readvariableop_resource:	?L
1second_convolution_conv2d_readvariableop_resource:?@@
2second_convolution_biasadd_readvariableop_resource:@J
0third_convolution_conv2d_readvariableop_resource:@ ?
1third_convolution_biasadd_readvariableop_resource: :
&dense_3_matmul_readvariableop_resource:
?1?6
'dense_3_biasadd_readvariableop_resource:	?:
&dense_4_matmul_readvariableop_resource:
??6
'dense_4_biasadd_readvariableop_resource:	?:
&dense_5_matmul_readvariableop_resource:
??6
'dense_5_biasadd_readvariableop_resource:	?9
&eth_val_matmul_readvariableop_resource:	?5
'eth_val_biasadd_readvariableop_resource:
identity??ETH_Val/BiasAdd/ReadVariableOp?ETH_Val/MatMul/ReadVariableOp?(First_Convolution/BiasAdd/ReadVariableOp?'First_Convolution/Conv2D/ReadVariableOp?)Second_Convolution/BiasAdd/ReadVariableOp?(Second_Convolution/Conv2D/ReadVariableOp?(Third_Convolution/BiasAdd/ReadVariableOp?'Third_Convolution/Conv2D/ReadVariableOp?dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOp?dense_4/BiasAdd/ReadVariableOp?dense_4/MatMul/ReadVariableOp?dense_5/BiasAdd/ReadVariableOp?dense_5/MatMul/ReadVariableOp?
'First_Convolution/Conv2D/ReadVariableOpReadVariableOp0first_convolution_conv2d_readvariableop_resource*'
_output_shapes
:?*
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
dropout_1/IdentityIdentityMax_Pooling/MaxPool:output:0*
T0*/
_output_shapes
:????????? 2
dropout_1/Identitys
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
flatten_1/Const?
flatten_1/ReshapeReshapedropout_1/Identity:output:0flatten_1/Const:output:0*
T0*(
_output_shapes
:??????????12
flatten_1/Reshape?
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource* 
_output_shapes
:
?1?*
dtype02
dense_3/MatMul/ReadVariableOp?
dense_3/MatMulMatMulflatten_1/Reshape:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_3/MatMul?
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_3/BiasAdd/ReadVariableOp?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_3/BiasAddq
dense_3/ReluReludense_3/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_3/Relu?
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_4/MatMul/ReadVariableOp?
dense_4/MatMulMatMuldense_3/Relu:activations:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_4/MatMul?
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_4/BiasAdd/ReadVariableOp?
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_4/BiasAddq
dense_4/ReluReludense_4/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_4/Relu?
	add_2/addAddV2dense_4/Relu:activations:0dense_3/Relu:activations:0*
T0*(
_output_shapes
:??????????2
	add_2/add?
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_5/MatMul/ReadVariableOp?
dense_5/MatMulMatMuladd_2/add:z:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_5/MatMul?
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_5/BiasAdd/ReadVariableOp?
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_5/BiasAddq
dense_5/ReluReludense_5/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_5/Relu}
	add_3/addAddV2dense_5/Relu:activations:0add_2/add:z:0*
T0*(
_output_shapes
:??????????2
	add_3/add?
ETH_Val/MatMul/ReadVariableOpReadVariableOp&eth_val_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
ETH_Val/MatMul/ReadVariableOp?
ETH_Val/MatMulMatMuladd_3/add:z:0%ETH_Val/MatMul/ReadVariableOp:value:0*
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
NoOpNoOp^ETH_Val/BiasAdd/ReadVariableOp^ETH_Val/MatMul/ReadVariableOp)^First_Convolution/BiasAdd/ReadVariableOp(^First_Convolution/Conv2D/ReadVariableOp*^Second_Convolution/BiasAdd/ReadVariableOp)^Second_Convolution/Conv2D/ReadVariableOp)^Third_Convolution/BiasAdd/ReadVariableOp(^Third_Convolution/Conv2D/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:???????????: : : : : : : : : : : : : : 2@
ETH_Val/BiasAdd/ReadVariableOpETH_Val/BiasAdd/ReadVariableOp2>
ETH_Val/MatMul/ReadVariableOpETH_Val/MatMul/ReadVariableOp2T
(First_Convolution/BiasAdd/ReadVariableOp(First_Convolution/BiasAdd/ReadVariableOp2R
'First_Convolution/Conv2D/ReadVariableOp'First_Convolution/Conv2D/ReadVariableOp2V
)Second_Convolution/BiasAdd/ReadVariableOp)Second_Convolution/BiasAdd/ReadVariableOp2T
(Second_Convolution/Conv2D/ReadVariableOp(Second_Convolution/Conv2D/ReadVariableOp2T
(Third_Convolution/BiasAdd/ReadVariableOp(Third_Convolution/BiasAdd/ReadVariableOp2R
'Third_Convolution/Conv2D/ReadVariableOp'Third_Convolution/Conv2D/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
l
@__inference_add_3_layer_call_and_return_conditional_losses_22216
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
B__inference_dense_4_layer_call_and_return_conditional_losses_21354

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
?
?
'__inference_ETH_Val_layer_call_fn_22241

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
B__inference_ETH_Val_layer_call_and_return_conditional_losses_214032
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
?9
?
G__inference_NFT_Valuator_layer_call_and_return_conditional_losses_21746
input_layer2
first_convolution_21705:?&
first_convolution_21707:	?3
second_convolution_21710:?@&
second_convolution_21712:@1
third_convolution_21715:@ %
third_convolution_21717: !
dense_3_21723:
?1?
dense_3_21725:	?!
dense_4_21728:
??
dense_4_21730:	?!
dense_5_21734:
??
dense_5_21736:	? 
eth_val_21740:	?
eth_val_21742:
identity??ETH_Val/StatefulPartitionedCall?)First_Convolution/StatefulPartitionedCall?*Second_Convolution/StatefulPartitionedCall?)Third_Convolution/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?dense_5/StatefulPartitionedCall?
)First_Convolution/StatefulPartitionedCallStatefulPartitionedCallinput_layerfirst_convolution_21705first_convolution_21707*
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
L__inference_First_Convolution_layer_call_and_return_conditional_losses_212652+
)First_Convolution/StatefulPartitionedCall?
*Second_Convolution/StatefulPartitionedCallStatefulPartitionedCall2First_Convolution/StatefulPartitionedCall:output:0second_convolution_21710second_convolution_21712*
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
M__inference_Second_Convolution_layer_call_and_return_conditional_losses_212822,
*Second_Convolution/StatefulPartitionedCall?
)Third_Convolution/StatefulPartitionedCallStatefulPartitionedCall3Second_Convolution/StatefulPartitionedCall:output:0third_convolution_21715third_convolution_21717*
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
L__inference_Third_Convolution_layer_call_and_return_conditional_losses_212992+
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
F__inference_Max_Pooling_layer_call_and_return_conditional_losses_213092
Max_Pooling/PartitionedCall?
dropout_1/PartitionedCallPartitionedCall$Max_Pooling/PartitionedCall:output:0*
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
GPU 2J 8? *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_213162
dropout_1/PartitionedCall?
flatten_1/PartitionedCallPartitionedCall"dropout_1/PartitionedCall:output:0*
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
GPU 2J 8? *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_213242
flatten_1/PartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_3_21723dense_3_21725*
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
GPU 2J 8? *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_213372!
dense_3/StatefulPartitionedCall?
dense_4/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0dense_4_21728dense_4_21730*
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
GPU 2J 8? *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_213542!
dense_4/StatefulPartitionedCall?
add_2/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0(dense_3/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *I
fDRB
@__inference_add_2_layer_call_and_return_conditional_losses_213662
add_2/PartitionedCall?
dense_5/StatefulPartitionedCallStatefulPartitionedCalladd_2/PartitionedCall:output:0dense_5_21734dense_5_21736*
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
GPU 2J 8? *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_213792!
dense_5/StatefulPartitionedCall?
add_3/PartitionedCallPartitionedCall(dense_5/StatefulPartitionedCall:output:0add_2/PartitionedCall:output:0*
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
GPU 2J 8? *I
fDRB
@__inference_add_3_layer_call_and_return_conditional_losses_213912
add_3/PartitionedCall?
ETH_Val/StatefulPartitionedCallStatefulPartitionedCalladd_3/PartitionedCall:output:0eth_val_21740eth_val_21742*
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
B__inference_ETH_Val_layer_call_and_return_conditional_losses_214032!
ETH_Val/StatefulPartitionedCall?
IdentityIdentity(ETH_Val/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp ^ETH_Val/StatefulPartitionedCall*^First_Convolution/StatefulPartitionedCall+^Second_Convolution/StatefulPartitionedCall*^Third_Convolution/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:???????????: : : : : : : : : : : : : : 2B
ETH_Val/StatefulPartitionedCallETH_Val/StatefulPartitionedCall2V
)First_Convolution/StatefulPartitionedCall)First_Convolution/StatefulPartitionedCall2X
*Second_Convolution/StatefulPartitionedCall*Second_Convolution/StatefulPartitionedCall2V
)Third_Convolution/StatefulPartitionedCall)Third_Convolution/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:^ Z
1
_output_shapes
:???????????
%
_user_specified_nameInput_Layer
?
?
B__inference_dense_5_layer_call_and_return_conditional_losses_22201

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
?
?
'__inference_dense_3_layer_call_fn_22158

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
GPU 2J 8? *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_213372
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
?
b
)__inference_dropout_1_layer_call_fn_22127

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
GPU 2J 8? *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_215212
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
?
__inference__traced_save_22417
file_prefix7
3savev2_first_convolution_kernel_read_readvariableop5
1savev2_first_convolution_bias_read_readvariableop8
4savev2_second_convolution_kernel_read_readvariableop6
2savev2_second_convolution_bias_read_readvariableop7
3savev2_third_convolution_kernel_read_readvariableop5
1savev2_third_convolution_bias_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop-
)savev2_dense_5_kernel_read_readvariableop+
'savev2_dense_5_bias_read_readvariableop-
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
8savev2_adam_third_convolution_bias_m_read_readvariableop4
0savev2_adam_dense_3_kernel_m_read_readvariableop2
.savev2_adam_dense_3_bias_m_read_readvariableop4
0savev2_adam_dense_4_kernel_m_read_readvariableop2
.savev2_adam_dense_4_bias_m_read_readvariableop4
0savev2_adam_dense_5_kernel_m_read_readvariableop2
.savev2_adam_dense_5_bias_m_read_readvariableop4
0savev2_adam_eth_val_kernel_m_read_readvariableop2
.savev2_adam_eth_val_bias_m_read_readvariableop>
:savev2_adam_first_convolution_kernel_v_read_readvariableop<
8savev2_adam_first_convolution_bias_v_read_readvariableop?
;savev2_adam_second_convolution_kernel_v_read_readvariableop=
9savev2_adam_second_convolution_bias_v_read_readvariableop>
:savev2_adam_third_convolution_kernel_v_read_readvariableop<
8savev2_adam_third_convolution_bias_v_read_readvariableop4
0savev2_adam_dense_3_kernel_v_read_readvariableop2
.savev2_adam_dense_3_bias_v_read_readvariableop4
0savev2_adam_dense_4_kernel_v_read_readvariableop2
.savev2_adam_dense_4_bias_v_read_readvariableop4
0savev2_adam_dense_5_kernel_v_read_readvariableop2
.savev2_adam_dense_5_bias_v_read_readvariableop4
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:03savev2_first_convolution_kernel_read_readvariableop1savev2_first_convolution_bias_read_readvariableop4savev2_second_convolution_kernel_read_readvariableop2savev2_second_convolution_bias_read_readvariableop3savev2_third_convolution_kernel_read_readvariableop1savev2_third_convolution_bias_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop)savev2_dense_5_kernel_read_readvariableop'savev2_dense_5_bias_read_readvariableop)savev2_eth_val_kernel_read_readvariableop'savev2_eth_val_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop:savev2_adam_first_convolution_kernel_m_read_readvariableop8savev2_adam_first_convolution_bias_m_read_readvariableop;savev2_adam_second_convolution_kernel_m_read_readvariableop9savev2_adam_second_convolution_bias_m_read_readvariableop:savev2_adam_third_convolution_kernel_m_read_readvariableop8savev2_adam_third_convolution_bias_m_read_readvariableop0savev2_adam_dense_3_kernel_m_read_readvariableop.savev2_adam_dense_3_bias_m_read_readvariableop0savev2_adam_dense_4_kernel_m_read_readvariableop.savev2_adam_dense_4_bias_m_read_readvariableop0savev2_adam_dense_5_kernel_m_read_readvariableop.savev2_adam_dense_5_bias_m_read_readvariableop0savev2_adam_eth_val_kernel_m_read_readvariableop.savev2_adam_eth_val_bias_m_read_readvariableop:savev2_adam_first_convolution_kernel_v_read_readvariableop8savev2_adam_first_convolution_bias_v_read_readvariableop;savev2_adam_second_convolution_kernel_v_read_readvariableop9savev2_adam_second_convolution_bias_v_read_readvariableop:savev2_adam_third_convolution_kernel_v_read_readvariableop8savev2_adam_third_convolution_bias_v_read_readvariableop0savev2_adam_dense_3_kernel_v_read_readvariableop.savev2_adam_dense_3_bias_v_read_readvariableop0savev2_adam_dense_4_kernel_v_read_readvariableop.savev2_adam_dense_4_bias_v_read_readvariableop0savev2_adam_dense_5_kernel_v_read_readvariableop.savev2_adam_dense_5_bias_v_read_readvariableop0savev2_adam_eth_val_kernel_v_read_readvariableop.savev2_adam_eth_val_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?: :?:?:?@:@:@ : :
?1?:?:
??:?:
??:?:	?:: : : : : : : : : :?:?:?@:@:@ : :
?1?:?:
??:?:
??:?:	?::?:?:?@:@:@ : :
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
:?:!
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
:?:!
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
:?:!'
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
?
b
F__inference_Max_Pooling_layer_call_and_return_conditional_losses_21234

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
?f
?
 __inference__wrapped_model_21225
input_layerX
=nft_valuator_first_convolution_conv2d_readvariableop_resource:?M
>nft_valuator_first_convolution_biasadd_readvariableop_resource:	?Y
>nft_valuator_second_convolution_conv2d_readvariableop_resource:?@M
?nft_valuator_second_convolution_biasadd_readvariableop_resource:@W
=nft_valuator_third_convolution_conv2d_readvariableop_resource:@ L
>nft_valuator_third_convolution_biasadd_readvariableop_resource: G
3nft_valuator_dense_3_matmul_readvariableop_resource:
?1?C
4nft_valuator_dense_3_biasadd_readvariableop_resource:	?G
3nft_valuator_dense_4_matmul_readvariableop_resource:
??C
4nft_valuator_dense_4_biasadd_readvariableop_resource:	?G
3nft_valuator_dense_5_matmul_readvariableop_resource:
??C
4nft_valuator_dense_5_biasadd_readvariableop_resource:	?F
3nft_valuator_eth_val_matmul_readvariableop_resource:	?B
4nft_valuator_eth_val_biasadd_readvariableop_resource:
identity??+NFT_Valuator/ETH_Val/BiasAdd/ReadVariableOp?*NFT_Valuator/ETH_Val/MatMul/ReadVariableOp?5NFT_Valuator/First_Convolution/BiasAdd/ReadVariableOp?4NFT_Valuator/First_Convolution/Conv2D/ReadVariableOp?6NFT_Valuator/Second_Convolution/BiasAdd/ReadVariableOp?5NFT_Valuator/Second_Convolution/Conv2D/ReadVariableOp?5NFT_Valuator/Third_Convolution/BiasAdd/ReadVariableOp?4NFT_Valuator/Third_Convolution/Conv2D/ReadVariableOp?+NFT_Valuator/dense_3/BiasAdd/ReadVariableOp?*NFT_Valuator/dense_3/MatMul/ReadVariableOp?+NFT_Valuator/dense_4/BiasAdd/ReadVariableOp?*NFT_Valuator/dense_4/MatMul/ReadVariableOp?+NFT_Valuator/dense_5/BiasAdd/ReadVariableOp?*NFT_Valuator/dense_5/MatMul/ReadVariableOp?
4NFT_Valuator/First_Convolution/Conv2D/ReadVariableOpReadVariableOp=nft_valuator_first_convolution_conv2d_readvariableop_resource*'
_output_shapes
:?*
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
NFT_Valuator/dropout_1/IdentityIdentity)NFT_Valuator/Max_Pooling/MaxPool:output:0*
T0*/
_output_shapes
:????????? 2!
NFT_Valuator/dropout_1/Identity?
NFT_Valuator/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
NFT_Valuator/flatten_1/Const?
NFT_Valuator/flatten_1/ReshapeReshape(NFT_Valuator/dropout_1/Identity:output:0%NFT_Valuator/flatten_1/Const:output:0*
T0*(
_output_shapes
:??????????12 
NFT_Valuator/flatten_1/Reshape?
*NFT_Valuator/dense_3/MatMul/ReadVariableOpReadVariableOp3nft_valuator_dense_3_matmul_readvariableop_resource* 
_output_shapes
:
?1?*
dtype02,
*NFT_Valuator/dense_3/MatMul/ReadVariableOp?
NFT_Valuator/dense_3/MatMulMatMul'NFT_Valuator/flatten_1/Reshape:output:02NFT_Valuator/dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
NFT_Valuator/dense_3/MatMul?
+NFT_Valuator/dense_3/BiasAdd/ReadVariableOpReadVariableOp4nft_valuator_dense_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+NFT_Valuator/dense_3/BiasAdd/ReadVariableOp?
NFT_Valuator/dense_3/BiasAddBiasAdd%NFT_Valuator/dense_3/MatMul:product:03NFT_Valuator/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
NFT_Valuator/dense_3/BiasAdd?
NFT_Valuator/dense_3/ReluRelu%NFT_Valuator/dense_3/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
NFT_Valuator/dense_3/Relu?
*NFT_Valuator/dense_4/MatMul/ReadVariableOpReadVariableOp3nft_valuator_dense_4_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02,
*NFT_Valuator/dense_4/MatMul/ReadVariableOp?
NFT_Valuator/dense_4/MatMulMatMul'NFT_Valuator/dense_3/Relu:activations:02NFT_Valuator/dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
NFT_Valuator/dense_4/MatMul?
+NFT_Valuator/dense_4/BiasAdd/ReadVariableOpReadVariableOp4nft_valuator_dense_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+NFT_Valuator/dense_4/BiasAdd/ReadVariableOp?
NFT_Valuator/dense_4/BiasAddBiasAdd%NFT_Valuator/dense_4/MatMul:product:03NFT_Valuator/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
NFT_Valuator/dense_4/BiasAdd?
NFT_Valuator/dense_4/ReluRelu%NFT_Valuator/dense_4/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
NFT_Valuator/dense_4/Relu?
NFT_Valuator/add_2/addAddV2'NFT_Valuator/dense_4/Relu:activations:0'NFT_Valuator/dense_3/Relu:activations:0*
T0*(
_output_shapes
:??????????2
NFT_Valuator/add_2/add?
*NFT_Valuator/dense_5/MatMul/ReadVariableOpReadVariableOp3nft_valuator_dense_5_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02,
*NFT_Valuator/dense_5/MatMul/ReadVariableOp?
NFT_Valuator/dense_5/MatMulMatMulNFT_Valuator/add_2/add:z:02NFT_Valuator/dense_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
NFT_Valuator/dense_5/MatMul?
+NFT_Valuator/dense_5/BiasAdd/ReadVariableOpReadVariableOp4nft_valuator_dense_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+NFT_Valuator/dense_5/BiasAdd/ReadVariableOp?
NFT_Valuator/dense_5/BiasAddBiasAdd%NFT_Valuator/dense_5/MatMul:product:03NFT_Valuator/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
NFT_Valuator/dense_5/BiasAdd?
NFT_Valuator/dense_5/ReluRelu%NFT_Valuator/dense_5/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
NFT_Valuator/dense_5/Relu?
NFT_Valuator/add_3/addAddV2'NFT_Valuator/dense_5/Relu:activations:0NFT_Valuator/add_2/add:z:0*
T0*(
_output_shapes
:??????????2
NFT_Valuator/add_3/add?
*NFT_Valuator/ETH_Val/MatMul/ReadVariableOpReadVariableOp3nft_valuator_eth_val_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02,
*NFT_Valuator/ETH_Val/MatMul/ReadVariableOp?
NFT_Valuator/ETH_Val/MatMulMatMulNFT_Valuator/add_3/add:z:02NFT_Valuator/ETH_Val/MatMul/ReadVariableOp:value:0*
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
NoOpNoOp,^NFT_Valuator/ETH_Val/BiasAdd/ReadVariableOp+^NFT_Valuator/ETH_Val/MatMul/ReadVariableOp6^NFT_Valuator/First_Convolution/BiasAdd/ReadVariableOp5^NFT_Valuator/First_Convolution/Conv2D/ReadVariableOp7^NFT_Valuator/Second_Convolution/BiasAdd/ReadVariableOp6^NFT_Valuator/Second_Convolution/Conv2D/ReadVariableOp6^NFT_Valuator/Third_Convolution/BiasAdd/ReadVariableOp5^NFT_Valuator/Third_Convolution/Conv2D/ReadVariableOp,^NFT_Valuator/dense_3/BiasAdd/ReadVariableOp+^NFT_Valuator/dense_3/MatMul/ReadVariableOp,^NFT_Valuator/dense_4/BiasAdd/ReadVariableOp+^NFT_Valuator/dense_4/MatMul/ReadVariableOp,^NFT_Valuator/dense_5/BiasAdd/ReadVariableOp+^NFT_Valuator/dense_5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:???????????: : : : : : : : : : : : : : 2Z
+NFT_Valuator/ETH_Val/BiasAdd/ReadVariableOp+NFT_Valuator/ETH_Val/BiasAdd/ReadVariableOp2X
*NFT_Valuator/ETH_Val/MatMul/ReadVariableOp*NFT_Valuator/ETH_Val/MatMul/ReadVariableOp2n
5NFT_Valuator/First_Convolution/BiasAdd/ReadVariableOp5NFT_Valuator/First_Convolution/BiasAdd/ReadVariableOp2l
4NFT_Valuator/First_Convolution/Conv2D/ReadVariableOp4NFT_Valuator/First_Convolution/Conv2D/ReadVariableOp2p
6NFT_Valuator/Second_Convolution/BiasAdd/ReadVariableOp6NFT_Valuator/Second_Convolution/BiasAdd/ReadVariableOp2n
5NFT_Valuator/Second_Convolution/Conv2D/ReadVariableOp5NFT_Valuator/Second_Convolution/Conv2D/ReadVariableOp2n
5NFT_Valuator/Third_Convolution/BiasAdd/ReadVariableOp5NFT_Valuator/Third_Convolution/BiasAdd/ReadVariableOp2l
4NFT_Valuator/Third_Convolution/Conv2D/ReadVariableOp4NFT_Valuator/Third_Convolution/Conv2D/ReadVariableOp2Z
+NFT_Valuator/dense_3/BiasAdd/ReadVariableOp+NFT_Valuator/dense_3/BiasAdd/ReadVariableOp2X
*NFT_Valuator/dense_3/MatMul/ReadVariableOp*NFT_Valuator/dense_3/MatMul/ReadVariableOp2Z
+NFT_Valuator/dense_4/BiasAdd/ReadVariableOp+NFT_Valuator/dense_4/BiasAdd/ReadVariableOp2X
*NFT_Valuator/dense_4/MatMul/ReadVariableOp*NFT_Valuator/dense_4/MatMul/ReadVariableOp2Z
+NFT_Valuator/dense_5/BiasAdd/ReadVariableOp+NFT_Valuator/dense_5/BiasAdd/ReadVariableOp2X
*NFT_Valuator/dense_5/MatMul/ReadVariableOp*NFT_Valuator/dense_5/MatMul/ReadVariableOp:^ Z
1
_output_shapes
:???????????
%
_user_specified_nameInput_Layer
?
?
1__inference_Third_Convolution_layer_call_fn_22080

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
L__inference_Third_Convolution_layer_call_and_return_conditional_losses_212992
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
?
j
@__inference_add_2_layer_call_and_return_conditional_losses_21366

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
?
?
2__inference_Second_Convolution_layer_call_fn_22060

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
M__inference_Second_Convolution_layer_call_and_return_conditional_losses_212822
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
?
?
#__inference_signature_wrapper_21831
input_layer"
unknown:?
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
 __inference__wrapped_model_212252
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
9:???????????: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
1
_output_shapes
:???????????
%
_user_specified_nameInput_Layer
?
b
F__inference_Max_Pooling_layer_call_and_return_conditional_losses_21309

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
?
c
D__inference_dropout_1_layer_call_and_return_conditional_losses_22117

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
?
L__inference_Third_Convolution_layer_call_and_return_conditional_losses_21299

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
?
b
D__inference_dropout_1_layer_call_and_return_conditional_losses_21316

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
c
D__inference_dropout_1_layer_call_and_return_conditional_losses_21521

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
?
M__inference_Second_Convolution_layer_call_and_return_conditional_losses_21282

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
?
b
F__inference_Max_Pooling_layer_call_and_return_conditional_losses_22085

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
?
L__inference_Third_Convolution_layer_call_and_return_conditional_losses_22071

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
?
?
'__inference_dense_5_layer_call_fn_22210

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
GPU 2J 8? *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_213792
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
?
?
B__inference_dense_4_layer_call_and_return_conditional_losses_22169

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
?
,__inference_NFT_Valuator_layer_call_fn_21987

inputs"
unknown:?
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
G__inference_NFT_Valuator_layer_call_and_return_conditional_losses_214102
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
9:???????????: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?Z
?
G__inference_NFT_Valuator_layer_call_and_return_conditional_losses_21954

inputsK
0first_convolution_conv2d_readvariableop_resource:?@
1first_convolution_biasadd_readvariableop_resource:	?L
1second_convolution_conv2d_readvariableop_resource:?@@
2second_convolution_biasadd_readvariableop_resource:@J
0third_convolution_conv2d_readvariableop_resource:@ ?
1third_convolution_biasadd_readvariableop_resource: :
&dense_3_matmul_readvariableop_resource:
?1?6
'dense_3_biasadd_readvariableop_resource:	?:
&dense_4_matmul_readvariableop_resource:
??6
'dense_4_biasadd_readvariableop_resource:	?:
&dense_5_matmul_readvariableop_resource:
??6
'dense_5_biasadd_readvariableop_resource:	?9
&eth_val_matmul_readvariableop_resource:	?5
'eth_val_biasadd_readvariableop_resource:
identity??ETH_Val/BiasAdd/ReadVariableOp?ETH_Val/MatMul/ReadVariableOp?(First_Convolution/BiasAdd/ReadVariableOp?'First_Convolution/Conv2D/ReadVariableOp?)Second_Convolution/BiasAdd/ReadVariableOp?(Second_Convolution/Conv2D/ReadVariableOp?(Third_Convolution/BiasAdd/ReadVariableOp?'Third_Convolution/Conv2D/ReadVariableOp?dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOp?dense_4/BiasAdd/ReadVariableOp?dense_4/MatMul/ReadVariableOp?dense_5/BiasAdd/ReadVariableOp?dense_5/MatMul/ReadVariableOp?
'First_Convolution/Conv2D/ReadVariableOpReadVariableOp0first_convolution_conv2d_readvariableop_resource*'
_output_shapes
:?*
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
Max_Pooling/MaxPoolw
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_1/dropout/Const?
dropout_1/dropout/MulMulMax_Pooling/MaxPool:output:0 dropout_1/dropout/Const:output:0*
T0*/
_output_shapes
:????????? 2
dropout_1/dropout/Mul~
dropout_1/dropout/ShapeShapeMax_Pooling/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_1/dropout/Shape?
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*/
_output_shapes
:????????? *
dtype020
.dropout_1/dropout/random_uniform/RandomUniform?
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2"
 dropout_1/dropout/GreaterEqual/y?
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:????????? 2 
dropout_1/dropout/GreaterEqual?
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:????????? 2
dropout_1/dropout/Cast?
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*/
_output_shapes
:????????? 2
dropout_1/dropout/Mul_1s
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
flatten_1/Const?
flatten_1/ReshapeReshapedropout_1/dropout/Mul_1:z:0flatten_1/Const:output:0*
T0*(
_output_shapes
:??????????12
flatten_1/Reshape?
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource* 
_output_shapes
:
?1?*
dtype02
dense_3/MatMul/ReadVariableOp?
dense_3/MatMulMatMulflatten_1/Reshape:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_3/MatMul?
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_3/BiasAdd/ReadVariableOp?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_3/BiasAddq
dense_3/ReluReludense_3/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_3/Relu?
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_4/MatMul/ReadVariableOp?
dense_4/MatMulMatMuldense_3/Relu:activations:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_4/MatMul?
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_4/BiasAdd/ReadVariableOp?
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_4/BiasAddq
dense_4/ReluReludense_4/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_4/Relu?
	add_2/addAddV2dense_4/Relu:activations:0dense_3/Relu:activations:0*
T0*(
_output_shapes
:??????????2
	add_2/add?
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_5/MatMul/ReadVariableOp?
dense_5/MatMulMatMuladd_2/add:z:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_5/MatMul?
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_5/BiasAdd/ReadVariableOp?
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_5/BiasAddq
dense_5/ReluReludense_5/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_5/Relu}
	add_3/addAddV2dense_5/Relu:activations:0add_2/add:z:0*
T0*(
_output_shapes
:??????????2
	add_3/add?
ETH_Val/MatMul/ReadVariableOpReadVariableOp&eth_val_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
ETH_Val/MatMul/ReadVariableOp?
ETH_Val/MatMulMatMuladd_3/add:z:0%ETH_Val/MatMul/ReadVariableOp:value:0*
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
NoOpNoOp^ETH_Val/BiasAdd/ReadVariableOp^ETH_Val/MatMul/ReadVariableOp)^First_Convolution/BiasAdd/ReadVariableOp(^First_Convolution/Conv2D/ReadVariableOp*^Second_Convolution/BiasAdd/ReadVariableOp)^Second_Convolution/Conv2D/ReadVariableOp)^Third_Convolution/BiasAdd/ReadVariableOp(^Third_Convolution/Conv2D/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:???????????: : : : : : : : : : : : : : 2@
ETH_Val/BiasAdd/ReadVariableOpETH_Val/BiasAdd/ReadVariableOp2>
ETH_Val/MatMul/ReadVariableOpETH_Val/MatMul/ReadVariableOp2T
(First_Convolution/BiasAdd/ReadVariableOp(First_Convolution/BiasAdd/ReadVariableOp2R
'First_Convolution/Conv2D/ReadVariableOp'First_Convolution/Conv2D/ReadVariableOp2V
)Second_Convolution/BiasAdd/ReadVariableOp)Second_Convolution/BiasAdd/ReadVariableOp2T
(Second_Convolution/Conv2D/ReadVariableOp(Second_Convolution/Conv2D/ReadVariableOp2T
(Third_Convolution/BiasAdd/ReadVariableOp(Third_Convolution/BiasAdd/ReadVariableOp2R
'Third_Convolution/Conv2D/ReadVariableOp'Third_Convolution/Conv2D/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?:
?
G__inference_NFT_Valuator_layer_call_and_return_conditional_losses_21790
input_layer2
first_convolution_21749:?&
first_convolution_21751:	?3
second_convolution_21754:?@&
second_convolution_21756:@1
third_convolution_21759:@ %
third_convolution_21761: !
dense_3_21767:
?1?
dense_3_21769:	?!
dense_4_21772:
??
dense_4_21774:	?!
dense_5_21778:
??
dense_5_21780:	? 
eth_val_21784:	?
eth_val_21786:
identity??ETH_Val/StatefulPartitionedCall?)First_Convolution/StatefulPartitionedCall?*Second_Convolution/StatefulPartitionedCall?)Third_Convolution/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?dense_5/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?
)First_Convolution/StatefulPartitionedCallStatefulPartitionedCallinput_layerfirst_convolution_21749first_convolution_21751*
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
L__inference_First_Convolution_layer_call_and_return_conditional_losses_212652+
)First_Convolution/StatefulPartitionedCall?
*Second_Convolution/StatefulPartitionedCallStatefulPartitionedCall2First_Convolution/StatefulPartitionedCall:output:0second_convolution_21754second_convolution_21756*
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
M__inference_Second_Convolution_layer_call_and_return_conditional_losses_212822,
*Second_Convolution/StatefulPartitionedCall?
)Third_Convolution/StatefulPartitionedCallStatefulPartitionedCall3Second_Convolution/StatefulPartitionedCall:output:0third_convolution_21759third_convolution_21761*
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
L__inference_Third_Convolution_layer_call_and_return_conditional_losses_212992+
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
F__inference_Max_Pooling_layer_call_and_return_conditional_losses_213092
Max_Pooling/PartitionedCall?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall$Max_Pooling/PartitionedCall:output:0*
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
GPU 2J 8? *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_215212#
!dropout_1/StatefulPartitionedCall?
flatten_1/PartitionedCallPartitionedCall*dropout_1/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_213242
flatten_1/PartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_3_21767dense_3_21769*
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
GPU 2J 8? *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_213372!
dense_3/StatefulPartitionedCall?
dense_4/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0dense_4_21772dense_4_21774*
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
GPU 2J 8? *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_213542!
dense_4/StatefulPartitionedCall?
add_2/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0(dense_3/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *I
fDRB
@__inference_add_2_layer_call_and_return_conditional_losses_213662
add_2/PartitionedCall?
dense_5/StatefulPartitionedCallStatefulPartitionedCalladd_2/PartitionedCall:output:0dense_5_21778dense_5_21780*
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
GPU 2J 8? *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_213792!
dense_5/StatefulPartitionedCall?
add_3/PartitionedCallPartitionedCall(dense_5/StatefulPartitionedCall:output:0add_2/PartitionedCall:output:0*
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
GPU 2J 8? *I
fDRB
@__inference_add_3_layer_call_and_return_conditional_losses_213912
add_3/PartitionedCall?
ETH_Val/StatefulPartitionedCallStatefulPartitionedCalladd_3/PartitionedCall:output:0eth_val_21784eth_val_21786*
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
B__inference_ETH_Val_layer_call_and_return_conditional_losses_214032!
ETH_Val/StatefulPartitionedCall?
IdentityIdentity(ETH_Val/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp ^ETH_Val/StatefulPartitionedCall*^First_Convolution/StatefulPartitionedCall+^Second_Convolution/StatefulPartitionedCall*^Third_Convolution/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:???????????: : : : : : : : : : : : : : 2B
ETH_Val/StatefulPartitionedCallETH_Val/StatefulPartitionedCall2V
)First_Convolution/StatefulPartitionedCall)First_Convolution/StatefulPartitionedCall2X
*Second_Convolution/StatefulPartitionedCall*Second_Convolution/StatefulPartitionedCall2V
)Third_Convolution/StatefulPartitionedCall)Third_Convolution/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall:^ Z
1
_output_shapes
:???????????
%
_user_specified_nameInput_Layer
?
j
@__inference_add_3_layer_call_and_return_conditional_losses_21391

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
E
)__inference_dropout_1_layer_call_fn_22122

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
GPU 2J 8? *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_213162
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
?
?
1__inference_First_Convolution_layer_call_fn_22040

inputs"
unknown:?
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
L__inference_First_Convolution_layer_call_and_return_conditional_losses_212652
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
!:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
'__inference_dense_4_layer_call_fn_22178

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
GPU 2J 8? *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_213542
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
`
D__inference_flatten_1_layer_call_and_return_conditional_losses_21324

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
?
?
L__inference_First_Convolution_layer_call_and_return_conditional_losses_22031

inputs9
conv2d_readvariableop_resource:?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:?*
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
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?:
?
G__inference_NFT_Valuator_layer_call_and_return_conditional_losses_21638

inputs2
first_convolution_21597:?&
first_convolution_21599:	?3
second_convolution_21602:?@&
second_convolution_21604:@1
third_convolution_21607:@ %
third_convolution_21609: !
dense_3_21615:
?1?
dense_3_21617:	?!
dense_4_21620:
??
dense_4_21622:	?!
dense_5_21626:
??
dense_5_21628:	? 
eth_val_21632:	?
eth_val_21634:
identity??ETH_Val/StatefulPartitionedCall?)First_Convolution/StatefulPartitionedCall?*Second_Convolution/StatefulPartitionedCall?)Third_Convolution/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?dense_5/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?
)First_Convolution/StatefulPartitionedCallStatefulPartitionedCallinputsfirst_convolution_21597first_convolution_21599*
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
L__inference_First_Convolution_layer_call_and_return_conditional_losses_212652+
)First_Convolution/StatefulPartitionedCall?
*Second_Convolution/StatefulPartitionedCallStatefulPartitionedCall2First_Convolution/StatefulPartitionedCall:output:0second_convolution_21602second_convolution_21604*
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
M__inference_Second_Convolution_layer_call_and_return_conditional_losses_212822,
*Second_Convolution/StatefulPartitionedCall?
)Third_Convolution/StatefulPartitionedCallStatefulPartitionedCall3Second_Convolution/StatefulPartitionedCall:output:0third_convolution_21607third_convolution_21609*
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
L__inference_Third_Convolution_layer_call_and_return_conditional_losses_212992+
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
F__inference_Max_Pooling_layer_call_and_return_conditional_losses_213092
Max_Pooling/PartitionedCall?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall$Max_Pooling/PartitionedCall:output:0*
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
GPU 2J 8? *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_215212#
!dropout_1/StatefulPartitionedCall?
flatten_1/PartitionedCallPartitionedCall*dropout_1/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_213242
flatten_1/PartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_3_21615dense_3_21617*
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
GPU 2J 8? *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_213372!
dense_3/StatefulPartitionedCall?
dense_4/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0dense_4_21620dense_4_21622*
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
GPU 2J 8? *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_213542!
dense_4/StatefulPartitionedCall?
add_2/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0(dense_3/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *I
fDRB
@__inference_add_2_layer_call_and_return_conditional_losses_213662
add_2/PartitionedCall?
dense_5/StatefulPartitionedCallStatefulPartitionedCalladd_2/PartitionedCall:output:0dense_5_21626dense_5_21628*
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
GPU 2J 8? *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_213792!
dense_5/StatefulPartitionedCall?
add_3/PartitionedCallPartitionedCall(dense_5/StatefulPartitionedCall:output:0add_2/PartitionedCall:output:0*
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
GPU 2J 8? *I
fDRB
@__inference_add_3_layer_call_and_return_conditional_losses_213912
add_3/PartitionedCall?
ETH_Val/StatefulPartitionedCallStatefulPartitionedCalladd_3/PartitionedCall:output:0eth_val_21632eth_val_21634*
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
B__inference_ETH_Val_layer_call_and_return_conditional_losses_214032!
ETH_Val/StatefulPartitionedCall?
IdentityIdentity(ETH_Val/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp ^ETH_Val/StatefulPartitionedCall*^First_Convolution/StatefulPartitionedCall+^Second_Convolution/StatefulPartitionedCall*^Third_Convolution/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:???????????: : : : : : : : : : : : : : 2B
ETH_Val/StatefulPartitionedCallETH_Val/StatefulPartitionedCall2V
)First_Convolution/StatefulPartitionedCall)First_Convolution/StatefulPartitionedCall2X
*Second_Convolution/StatefulPartitionedCall*Second_Convolution/StatefulPartitionedCall2V
)Third_Convolution/StatefulPartitionedCall)Third_Convolution/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
E
)__inference_flatten_1_layer_call_fn_22138

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
GPU 2J 8? *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_213242
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
?
M__inference_Second_Convolution_layer_call_and_return_conditional_losses_22051

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
?
?
B__inference_dense_3_layer_call_and_return_conditional_losses_21337

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
?9
?
G__inference_NFT_Valuator_layer_call_and_return_conditional_losses_21410

inputs2
first_convolution_21266:?&
first_convolution_21268:	?3
second_convolution_21283:?@&
second_convolution_21285:@1
third_convolution_21300:@ %
third_convolution_21302: !
dense_3_21338:
?1?
dense_3_21340:	?!
dense_4_21355:
??
dense_4_21357:	?!
dense_5_21380:
??
dense_5_21382:	? 
eth_val_21404:	?
eth_val_21406:
identity??ETH_Val/StatefulPartitionedCall?)First_Convolution/StatefulPartitionedCall?*Second_Convolution/StatefulPartitionedCall?)Third_Convolution/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?dense_5/StatefulPartitionedCall?
)First_Convolution/StatefulPartitionedCallStatefulPartitionedCallinputsfirst_convolution_21266first_convolution_21268*
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
L__inference_First_Convolution_layer_call_and_return_conditional_losses_212652+
)First_Convolution/StatefulPartitionedCall?
*Second_Convolution/StatefulPartitionedCallStatefulPartitionedCall2First_Convolution/StatefulPartitionedCall:output:0second_convolution_21283second_convolution_21285*
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
M__inference_Second_Convolution_layer_call_and_return_conditional_losses_212822,
*Second_Convolution/StatefulPartitionedCall?
)Third_Convolution/StatefulPartitionedCallStatefulPartitionedCall3Second_Convolution/StatefulPartitionedCall:output:0third_convolution_21300third_convolution_21302*
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
L__inference_Third_Convolution_layer_call_and_return_conditional_losses_212992+
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
F__inference_Max_Pooling_layer_call_and_return_conditional_losses_213092
Max_Pooling/PartitionedCall?
dropout_1/PartitionedCallPartitionedCall$Max_Pooling/PartitionedCall:output:0*
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
GPU 2J 8? *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_213162
dropout_1/PartitionedCall?
flatten_1/PartitionedCallPartitionedCall"dropout_1/PartitionedCall:output:0*
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
GPU 2J 8? *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_213242
flatten_1/PartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_3_21338dense_3_21340*
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
GPU 2J 8? *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_213372!
dense_3/StatefulPartitionedCall?
dense_4/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0dense_4_21355dense_4_21357*
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
GPU 2J 8? *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_213542!
dense_4/StatefulPartitionedCall?
add_2/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0(dense_3/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *I
fDRB
@__inference_add_2_layer_call_and_return_conditional_losses_213662
add_2/PartitionedCall?
dense_5/StatefulPartitionedCallStatefulPartitionedCalladd_2/PartitionedCall:output:0dense_5_21380dense_5_21382*
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
GPU 2J 8? *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_213792!
dense_5/StatefulPartitionedCall?
add_3/PartitionedCallPartitionedCall(dense_5/StatefulPartitionedCall:output:0add_2/PartitionedCall:output:0*
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
GPU 2J 8? *I
fDRB
@__inference_add_3_layer_call_and_return_conditional_losses_213912
add_3/PartitionedCall?
ETH_Val/StatefulPartitionedCallStatefulPartitionedCalladd_3/PartitionedCall:output:0eth_val_21404eth_val_21406*
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
B__inference_ETH_Val_layer_call_and_return_conditional_losses_214032!
ETH_Val/StatefulPartitionedCall?
IdentityIdentity(ETH_Val/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp ^ETH_Val/StatefulPartitionedCall*^First_Convolution/StatefulPartitionedCall+^Second_Convolution/StatefulPartitionedCall*^Third_Convolution/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:???????????: : : : : : : : : : : : : : 2B
ETH_Val/StatefulPartitionedCallETH_Val/StatefulPartitionedCall2V
)First_Convolution/StatefulPartitionedCall)First_Convolution/StatefulPartitionedCall2X
*Second_Convolution/StatefulPartitionedCall*Second_Convolution/StatefulPartitionedCall2V
)Third_Convolution/StatefulPartitionedCall)Third_Convolution/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
G
+__inference_Max_Pooling_layer_call_fn_22095

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
F__inference_Max_Pooling_layer_call_and_return_conditional_losses_212342
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
?
l
@__inference_add_2_layer_call_and_return_conditional_losses_22184
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
?
b
F__inference_Max_Pooling_layer_call_and_return_conditional_losses_22090

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
?
Q
%__inference_add_3_layer_call_fn_22222
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
GPU 2J 8? *I
fDRB
@__inference_add_3_layer_call_and_return_conditional_losses_213912
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
?

?
B__inference_ETH_Val_layer_call_and_return_conditional_losses_22232

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
?
L__inference_First_Convolution_layer_call_and_return_conditional_losses_21265

inputs9
conv2d_readvariableop_resource:?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:?*
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
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
Q
%__inference_add_2_layer_call_fn_22190
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
GPU 2J 8? *I
fDRB
@__inference_add_2_layer_call_and_return_conditional_losses_213662
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
?
?
,__inference_NFT_Valuator_layer_call_fn_21702
input_layer"
unknown:?
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
G__inference_NFT_Valuator_layer_call_and_return_conditional_losses_216382
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
9:???????????: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
1
_output_shapes
:???????????
%
_user_specified_nameInput_Layer"?L
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
serving_default_Input_Layer:0???????????;
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
regularization_losses
	variables
trainable_variables
	keras_api

signatures
+?&call_and_return_all_conditional_losses
?__call__
?_default_save_signature"
_tf_keras_network
"
_tf_keras_input_layer
?

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

 kernel
!bias
"regularization_losses
#	variables
$trainable_variables
%	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
&regularization_losses
'	variables
(trainable_variables
)	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
*regularization_losses
+	variables
,trainable_variables
-	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
.regularization_losses
/	variables
0trainable_variables
1	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

2kernel
3bias
4regularization_losses
5	variables
6trainable_variables
7	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

8kernel
9bias
:regularization_losses
;	variables
<trainable_variables
=	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
>regularization_losses
?	variables
@trainable_variables
A	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

Bkernel
Cbias
Dregularization_losses
E	variables
Ftrainable_variables
G	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
Hregularization_losses
I	variables
Jtrainable_variables
K	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

Lkernel
Mbias
Nregularization_losses
O	variables
Ptrainable_variables
Q	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
Riter

Sbeta_1

Tbeta_2
	Udecay
Vlearning_ratem?m?m?m? m?!m?2m?3m?8m?9m?Bm?Cm?Lm?Mm?v?v?v?v? v?!v?2v?3v?8v?9v?Bv?Cv?Lv?Mv?"
	optimizer
 "
trackable_list_wrapper
?
0
1
2
3
 4
!5
26
37
88
99
B10
C11
L12
M13"
trackable_list_wrapper
?
0
1
2
3
 4
!5
26
37
88
99
B10
C11
L12
M13"
trackable_list_wrapper
?
regularization_losses

Wlayers
Xlayer_metrics
Ynon_trainable_variables
	variables
Zmetrics
trainable_variables
[layer_regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
3:1?2First_Convolution/kernel
%:#?2First_Convolution/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
regularization_losses

\layers
]layer_metrics
^non_trainable_variables
	variables
_metrics
trainable_variables
`layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
4:2?@2Second_Convolution/kernel
%:#@2Second_Convolution/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
regularization_losses

alayers
blayer_metrics
cnon_trainable_variables
	variables
dmetrics
trainable_variables
elayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
2:0@ 2Third_Convolution/kernel
$:" 2Third_Convolution/bias
 "
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
?
"regularization_losses

flayers
glayer_metrics
hnon_trainable_variables
#	variables
imetrics
$trainable_variables
jlayer_regularization_losses
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
&regularization_losses

klayers
llayer_metrics
mnon_trainable_variables
'	variables
nmetrics
(trainable_variables
olayer_regularization_losses
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
*regularization_losses

players
qlayer_metrics
rnon_trainable_variables
+	variables
smetrics
,trainable_variables
tlayer_regularization_losses
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
.regularization_losses

ulayers
vlayer_metrics
wnon_trainable_variables
/	variables
xmetrics
0trainable_variables
ylayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 
?1?2dense_3/kernel
:?2dense_3/bias
 "
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
?
4regularization_losses

zlayers
{layer_metrics
|non_trainable_variables
5	variables
}metrics
6trainable_variables
~layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 
??2dense_4/kernel
:?2dense_4/bias
 "
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
?
:regularization_losses

layers
?layer_metrics
?non_trainable_variables
;	variables
?metrics
<trainable_variables
 ?layer_regularization_losses
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
>regularization_losses
?layers
?layer_metrics
?non_trainable_variables
?	variables
?metrics
@trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 
??2dense_5/kernel
:?2dense_5/bias
 "
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
?
Dregularization_losses
?layers
?layer_metrics
?non_trainable_variables
E	variables
?metrics
Ftrainable_variables
 ?layer_regularization_losses
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
Hregularization_losses
?layers
?layer_metrics
?non_trainable_variables
I	variables
?metrics
Jtrainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:	?2ETH_Val/kernel
:2ETH_Val/bias
 "
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
?
Nregularization_losses
?layers
?layer_metrics
?non_trainable_variables
O	variables
?metrics
Ptrainable_variables
 ?layer_regularization_losses
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
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
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
8:6?2Adam/First_Convolution/kernel/m
*:(?2Adam/First_Convolution/bias/m
9:7?@2 Adam/Second_Convolution/kernel/m
*:(@2Adam/Second_Convolution/bias/m
7:5@ 2Adam/Third_Convolution/kernel/m
):' 2Adam/Third_Convolution/bias/m
':%
?1?2Adam/dense_3/kernel/m
 :?2Adam/dense_3/bias/m
':%
??2Adam/dense_4/kernel/m
 :?2Adam/dense_4/bias/m
':%
??2Adam/dense_5/kernel/m
 :?2Adam/dense_5/bias/m
&:$	?2Adam/ETH_Val/kernel/m
:2Adam/ETH_Val/bias/m
8:6?2Adam/First_Convolution/kernel/v
*:(?2Adam/First_Convolution/bias/v
9:7?@2 Adam/Second_Convolution/kernel/v
*:(@2Adam/Second_Convolution/bias/v
7:5@ 2Adam/Third_Convolution/kernel/v
):' 2Adam/Third_Convolution/bias/v
':%
?1?2Adam/dense_3/kernel/v
 :?2Adam/dense_3/bias/v
':%
??2Adam/dense_4/kernel/v
 :?2Adam/dense_4/bias/v
':%
??2Adam/dense_5/kernel/v
 :?2Adam/dense_5/bias/v
&:$	?2Adam/ETH_Val/kernel/v
:2Adam/ETH_Val/bias/v
?2?
G__inference_NFT_Valuator_layer_call_and_return_conditional_losses_21889
G__inference_NFT_Valuator_layer_call_and_return_conditional_losses_21954
G__inference_NFT_Valuator_layer_call_and_return_conditional_losses_21746
G__inference_NFT_Valuator_layer_call_and_return_conditional_losses_21790?
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
,__inference_NFT_Valuator_layer_call_fn_21441
,__inference_NFT_Valuator_layer_call_fn_21987
,__inference_NFT_Valuator_layer_call_fn_22020
,__inference_NFT_Valuator_layer_call_fn_21702?
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
 __inference__wrapped_model_21225Input_Layer"?
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
L__inference_First_Convolution_layer_call_and_return_conditional_losses_22031?
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
1__inference_First_Convolution_layer_call_fn_22040?
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
M__inference_Second_Convolution_layer_call_and_return_conditional_losses_22051?
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
2__inference_Second_Convolution_layer_call_fn_22060?
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
L__inference_Third_Convolution_layer_call_and_return_conditional_losses_22071?
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
1__inference_Third_Convolution_layer_call_fn_22080?
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
F__inference_Max_Pooling_layer_call_and_return_conditional_losses_22085
F__inference_Max_Pooling_layer_call_and_return_conditional_losses_22090?
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
+__inference_Max_Pooling_layer_call_fn_22095
+__inference_Max_Pooling_layer_call_fn_22100?
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
D__inference_dropout_1_layer_call_and_return_conditional_losses_22105
D__inference_dropout_1_layer_call_and_return_conditional_losses_22117?
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
)__inference_dropout_1_layer_call_fn_22122
)__inference_dropout_1_layer_call_fn_22127?
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
D__inference_flatten_1_layer_call_and_return_conditional_losses_22133?
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
)__inference_flatten_1_layer_call_fn_22138?
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
B__inference_dense_3_layer_call_and_return_conditional_losses_22149?
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
'__inference_dense_3_layer_call_fn_22158?
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
B__inference_dense_4_layer_call_and_return_conditional_losses_22169?
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
'__inference_dense_4_layer_call_fn_22178?
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
@__inference_add_2_layer_call_and_return_conditional_losses_22184?
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
%__inference_add_2_layer_call_fn_22190?
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
B__inference_dense_5_layer_call_and_return_conditional_losses_22201?
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
'__inference_dense_5_layer_call_fn_22210?
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
@__inference_add_3_layer_call_and_return_conditional_losses_22216?
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
%__inference_add_3_layer_call_fn_22222?
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
B__inference_ETH_Val_layer_call_and_return_conditional_losses_22232?
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
'__inference_ETH_Val_layer_call_fn_22241?
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
#__inference_signature_wrapper_21831Input_Layer"?
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
B__inference_ETH_Val_layer_call_and_return_conditional_losses_22232]LM0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? {
'__inference_ETH_Val_layer_call_fn_22241PLM0?-
&?#
!?
inputs??????????
? "???????????
L__inference_First_Convolution_layer_call_and_return_conditional_losses_22031o9?6
/?,
*?'
inputs???????????
? ".?+
$?!
0?????????yy?
? ?
1__inference_First_Convolution_layer_call_fn_22040b9?6
/?,
*?'
inputs???????????
? "!??????????yy??
F__inference_Max_Pooling_layer_call_and_return_conditional_losses_22085?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
F__inference_Max_Pooling_layer_call_and_return_conditional_losses_22090h7?4
-?*
(?%
inputs?????????qq 
? "-?*
#? 
0????????? 
? ?
+__inference_Max_Pooling_layer_call_fn_22095?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
+__inference_Max_Pooling_layer_call_fn_22100[7?4
-?*
(?%
inputs?????????qq 
? " ?????????? ?
G__inference_NFT_Valuator_layer_call_and_return_conditional_losses_21746 !2389BCLMF?C
<?9
/?,
Input_Layer???????????
p 

 
? "%?"
?
0?????????
? ?
G__inference_NFT_Valuator_layer_call_and_return_conditional_losses_21790 !2389BCLMF?C
<?9
/?,
Input_Layer???????????
p

 
? "%?"
?
0?????????
? ?
G__inference_NFT_Valuator_layer_call_and_return_conditional_losses_21889z !2389BCLMA?>
7?4
*?'
inputs???????????
p 

 
? "%?"
?
0?????????
? ?
G__inference_NFT_Valuator_layer_call_and_return_conditional_losses_21954z !2389BCLMA?>
7?4
*?'
inputs???????????
p

 
? "%?"
?
0?????????
? ?
,__inference_NFT_Valuator_layer_call_fn_21441r !2389BCLMF?C
<?9
/?,
Input_Layer???????????
p 

 
? "???????????
,__inference_NFT_Valuator_layer_call_fn_21702r !2389BCLMF?C
<?9
/?,
Input_Layer???????????
p

 
? "???????????
,__inference_NFT_Valuator_layer_call_fn_21987m !2389BCLMA?>
7?4
*?'
inputs???????????
p 

 
? "???????????
,__inference_NFT_Valuator_layer_call_fn_22020m !2389BCLMA?>
7?4
*?'
inputs???????????
p

 
? "???????????
M__inference_Second_Convolution_layer_call_and_return_conditional_losses_22051m8?5
.?+
)?&
inputs?????????yy?
? "-?*
#? 
0?????????tt@
? ?
2__inference_Second_Convolution_layer_call_fn_22060`8?5
.?+
)?&
inputs?????????yy?
? " ??????????tt@?
L__inference_Third_Convolution_layer_call_and_return_conditional_losses_22071l !7?4
-?*
(?%
inputs?????????tt@
? "-?*
#? 
0?????????qq 
? ?
1__inference_Third_Convolution_layer_call_fn_22080_ !7?4
-?*
(?%
inputs?????????tt@
? " ??????????qq ?
 __inference__wrapped_model_21225? !2389BCLM>?;
4?1
/?,
Input_Layer???????????
? "1?.
,
ETH_Val!?
ETH_Val??????????
@__inference_add_2_layer_call_and_return_conditional_losses_22184?\?Y
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
%__inference_add_2_layer_call_fn_22190y\?Y
R?O
M?J
#? 
inputs/0??????????
#? 
inputs/1??????????
? "????????????
@__inference_add_3_layer_call_and_return_conditional_losses_22216?\?Y
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
%__inference_add_3_layer_call_fn_22222y\?Y
R?O
M?J
#? 
inputs/0??????????
#? 
inputs/1??????????
? "????????????
B__inference_dense_3_layer_call_and_return_conditional_losses_22149^230?-
&?#
!?
inputs??????????1
? "&?#
?
0??????????
? |
'__inference_dense_3_layer_call_fn_22158Q230?-
&?#
!?
inputs??????????1
? "????????????
B__inference_dense_4_layer_call_and_return_conditional_losses_22169^890?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? |
'__inference_dense_4_layer_call_fn_22178Q890?-
&?#
!?
inputs??????????
? "????????????
B__inference_dense_5_layer_call_and_return_conditional_losses_22201^BC0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? |
'__inference_dense_5_layer_call_fn_22210QBC0?-
&?#
!?
inputs??????????
? "????????????
D__inference_dropout_1_layer_call_and_return_conditional_losses_22105l;?8
1?.
(?%
inputs????????? 
p 
? "-?*
#? 
0????????? 
? ?
D__inference_dropout_1_layer_call_and_return_conditional_losses_22117l;?8
1?.
(?%
inputs????????? 
p
? "-?*
#? 
0????????? 
? ?
)__inference_dropout_1_layer_call_fn_22122_;?8
1?.
(?%
inputs????????? 
p 
? " ?????????? ?
)__inference_dropout_1_layer_call_fn_22127_;?8
1?.
(?%
inputs????????? 
p
? " ?????????? ?
D__inference_flatten_1_layer_call_and_return_conditional_losses_22133a7?4
-?*
(?%
inputs????????? 
? "&?#
?
0??????????1
? ?
)__inference_flatten_1_layer_call_fn_22138T7?4
-?*
(?%
inputs????????? 
? "???????????1?
#__inference_signature_wrapper_21831? !2389BCLMM?J
? 
C?@
>
Input_Layer/?,
Input_Layer???????????"1?.
,
ETH_Val!?
ETH_Val?????????