# KinIn: Inverse Kinematics framework

## **1. Project Description**  
KinIn is a framework designed for the iterative kinematic analysis of mechanical systems. The primary objective of the software is to assess the feasibility of performing robotic calculations for complex mechanisms, particularly those with more than five degrees of freedom in heavy machinery. The approach employed relies on iterative computation methods rather than traditional analytical techniques to achieve the desired results.

This repository contains the files from the framework in Structured Text. Additionally, in the MATLAB directory it includes a complementary example for better visualization and exploration of the mechanism in MATLAB.

![image_alt](https://github.com/Yoyiberto/InverseKinematics_v1/blob/bff3ba1ff18116a53f929888c0acd8fbaea7dacf/Matlab/robot_plot.png)
## **2. Features**  
The functions are divided into the following:
- Inverse Functions(Inv, LuDecomposition, LuInverse, pInv)
- Linear Algebra ( Eye, isValueNegligible, MatMul, Mat_byScalar, norm, Trace )
- Jacobian functions (AdjointTransform, angVelToSkewSymMatrix, BodyJacobian, expToRotAxisAndAngle, Exp_se3_fromTrans, Exp_so3_fromRot, fastInverseTransform, getFwdKinematics_Body, getInvKinematics_Body, RotSO3_fromExpso3, se3ToSpatialVel, so3ToAngularVelocity, spatialVelToSE3Matrix, TransSE3_fromExp_se3, TransSE3_ToRotAndPos)

![image_alt](https://github.com/Yoyiberto/InverseKinematics_v1/blob/b4520f9d2a56410a5587972f90c99d417a006dca/IDE.png)

For the complete description and examples on how to use the functions, please check the [KinIn_documentation](https://yoyiberto.github.io/KinIn_documentation/).

## **3. Prerequisites & Recommended Environment**  
The recommended environment is CODESYS V3.5 SP20 with the library OSCAT BASIC installed.
For MATLAB, the code requires the Robotics System Toolbox. 
## **4. Installation & Setup**  
### CODESYS:
- Confirm that CODESYS V3.5 is installed. If it is not installed, it can be downloaded from its official website.
- Install the library OSCAT BASIC 3.3.4.0. The library file is included in this repository as a complementary file with the name ‘BASIC.library’. Alternatively, it can be found on CODESYS official website.

To install the library using ‘BASIC.library’ click on the Tools tab inside CODESYS IDE. The click in Library Repository and Install. Also, it can be installed through CODESYS Installer.

### MATLAB:
Confirm that MATLAB is installed or use MATLAB online.
Confirm that the Robotics system toolbox is installed. If not, use the addons tab to install it. 
The folder named MATLAB contains all the important files for running the Matlab demonstration.

## **5. Usage Guide**  
### CODESYS:
The idea of the framework is to integrate more complex workflows. For this repository all the files and functions are explicitly laid. Furthermore, the example inside the CODESYS project is given by the following:
PLC_PRG uses the ‘INV KIN’ function to calculate which angles are necessary to get to the arbitrary position (given by the 4x4 matrix T). The function will give the answer position in the ‘thetalist’.

### MATLAB: 
For getting a better visual understanding and a comprobation of the results from codesys, we can run the ‘code.m’ to ensure that the results are the same and how will the mechanism look in real life.

### **6. Demonstration & Examples**  
### CODESYS:
There are examples for all the functions included in the framework. There is one example about one of the real mechanisms in which the framework was tested. 
### MATLAB:
The MATLAB folder in this repository contains the mechanism’s STL meshes insider the meshes folder. The urdf file for the robot description and the ‘import_robot.m’.
2 screenshots of the example positions were taken and are also included in the folder. The positions can be easily modified by changing the angles.
