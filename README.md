# InverseKinematics_v1
KinIn is a framework designed for the iterative kinematic analysis of mechanical systems. The primary objective of the software is to assess the feasibility of performing robotic calculations for complex mechanisms, particularly those with more than five degrees of freedom in heavy machinery. The approach employed relies on iterative computation methods rather than traditional analytical techniques to achieve the desired results.

## Requirements
Oscat BASIC

## Recommended environment
Codesys V3.5 SP19 

## linear algebra
Eye & Gets identity matrix.\\

isValueNegligible & Evaluates whether the quantity is negligible.\\

MatMul & Matrix multiplication.\\

Mat\_byScalar & Matrix multiplication by a scalar.\\
\hline
norm & Computes the norm of a matrix.\\
\hline
Trace & Trace of a matrix.\\

## InverseFunctions
Inv & Inverse matrix. \\

LuDecomposition  & Lu Decomposition in L U terms using the doolittle's method. \\

LuInverse & Lu inverse from L U terms using forward and backwards substitutions.\\

pInv & Moore – Penrose pseudo inverse matrix \\

## Jacobian functions
AdjointTransform & Adjoint matrix form a transformation matrix. \\

angVelToSkewSymMatrix & Skew symmetric matrix in so(3). \\

BodyJacobian & Body Jacobian (6xn real numbers). From joint coordinates and the joint screw axes.\\

expToRotAxisAndAngle & From matrix exponential to Rotation matrix and Angle.\\
Exp\_se3\_fromTrans & se(3) representation of exponential coordinates.\\

Exp\_so3\_fromRot & Extracts the exponential coordinates from a given rotation matrix\\

fastInverseTransform & Inverts a Transformation matrix using its properties for efficiency avoiding normal matrix inversion.\\

getFwdKinematics\_Body & Computes the forward kinematics using the exponential form. It needs the M, Blist and thetalist matrices.\\

 getInvKinematics\_Body & Computes the inverse kinematics\\

 RotSO3\_fromExpso3 & Rotation in SO3 from Exponential form in so3.\\

 se3ToSpatialVel & Gets the spatial velocity from a se3 matrix.\\

 so3ToAngularVelocity & Gets Angular velocity from a so3 matrix.\\



spatialVelToSE3Matrix & Spatial velocity to an SE3 matrix\\

TransSE3\_fromExp\_se3 & Transformation matrix in SE3 from exponential from in s3.\\

TransSE3\_ToRotAndPos & Rotation and Position from a Transformation matrix in SE3 form.\\
