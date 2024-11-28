# InverseKinematics_v1
KinIn is a framework designed for the iterative kinematic analysis of mechanical systems. The primary objective of the software is to assess the feasibility of performing robotic calculations for complex mechanisms, particularly those with more than five degrees of freedom in heavy machinery. The approach employed relies on iterative computation methods rather than traditional analytical techniques to achieve the desired results.

![image_alt](https://github.com/Yoyiberto/InverseKinematics_v1/blob/b4520f9d2a56410a5587972f90c99d417a006dca/IDE.png)

## Requirements
- Oscat BASIC

## Recommended environment
- Codesys V3.5 SP19 

## linear algebra
- Eye: \
  Gets identity matrix.

- isValueNegligible: \
  Evaluates whether the quantity is negligible.

- MatMul \
Matrix multiplication.

- Mat_byScalar \
Matrix multiplication by a scalar.

- norm \
Computes the norm of a matrix.

- Trace\
Trace of a matrix.

## InverseFunctions
- Inv \
  Inverse matrix. 

- LuDecomposition  \
  Lu Decomposition in L U terms using the doolittle's method. 

- LuInverse \
   Lu inverse from L U terms using forward and backwards substitutions.

- pInv \
 Moore – Penrose pseudo inverse matrix 

## Jacobian functions
- AdjointTransform \
   Adjoint matrix form a transformation matrix. 

- angVelToSkewSymMatrix \
   Skew symmetric matrix in so(3). 

- BodyJacobian \
   Body Jacobian (6xn real numbers). From joint coordinates and the joint screw axes.

- expToRotAxisAndAngle \
   From matrix exponential to Rotation matrix and Angle.
  
- Exp\_se3\_fromTrans \
   se(3) representation of exponential coordinates.
  
- Exp\_so3\_fromRot \
 Extracts the exponential coordinates from a given rotation matrix

- fastInverseTransform \
   Inverts a Transformation matrix using its properties for efficiency avoiding normal matrix inversion.

- getFwdKinematics\_Body \
  Computes the forward kinematics using the exponential form. It needs the M, Blist and thetalist matrices.

- getInvKinematics\_Body\
   Computes the inverse kinematics

- RotSO3\_fromExpso3 \
   Rotation in SO3 from Exponential form in so3.

- se3ToSpatialVel \
   Gets the spatial velocity from a se3 matrix.

- so3ToAngularVelocity \
   Gets Angular velocity from a so3 matrix.

- spatialVelToSE3Matrix \
    Spatial velocity to an SE3 matrix

- TransSE3\_fromExp\_se3 \
    Transformation matrix in SE3 from exponential from in s3.

- TransSE3\_ToRotAndPos \
    Rotation and Position from a Transformation matrix in SE3 form.

## Example of usage
```bash
PROGRAM PLC_PRG
VAR
getFwdKinematics_Body:getFwdKinematics_Body;
M :ARRAY [1..4,1..4] OF REAL:= 
[1,	0,	0,	2849.8,
0,	1,	0,	582.9,
0,	0,	1,	-1122.5,
0,	0,	0,	1];
T_FK:ARRAY [1..4,1..4] OF REAL;
thetalist_FK:ARRAY [1..GVL.nJoints] OF REAL:=
[15*3.1415/180,
15*3.1415/180,
0,
0,
0];

eomg:REAL := 0.1;
ev:REAL := 0.1;
nIterationsIK:DINT:=20
thetalist:ARRAY [1..GVL.nJoints] OF REAL;
q_IKsuccess:BOOL;
s_IK_message:STRING;
Blist :ARRAY [1..6,1..GVL.nJoints]OF REAL:= [
0.00000000E+00,  0.00000000E+00, -3.20510345E-09,  1.00000000E+00,0.00000000E+00,  
0.00000000E+00,  1.00000000E+00, -1.00000000E+00, -3.20510345E-09,1.00000000E+00,
1.00000000E+00, -3.20510345E-09,  3.20510345E-09,  1.02726882E-17,-3.20510345E-09, 
-5.82899996E+02, -1.12250000E+03,  1.14700000E+03,  3.67625366E-06,-8.82000000E+02, 
2.84980000E+03, -8.42878107E-06, -2.98395132E-06,  1.14700000E+03,-3.62176690E-07, 
0.00000000E+00, -2.62980000E+03,  2.16000000E+02,  5.82899997E+02,-1.13000000E+02];

END_VAR

getFwdKinematics_Body(M:=M , Blist:=Blist , thetalist:=thetalist_FK , T=> T_FK);

INV_KINEMATICS(
	M:= M, 
	T:= T_FK, 
	eomg:= eomg, 
	ev:= ev, 
	nIterationsIK:= nIterationsIK, 
	Blist:= Blist, 
	thetalist=> thetalist, 
	q_IKsuccess=> q_IKsuccess, 
	s_IK_message=> s_IK_message );

END_PROGRAM

```
