%robot=importrobot('/MATLAB Drive/Resemin_v4/robotDataPackage/urdf/R7X_v5.urdf')
robot=importrobot('/MATLAB Drive/SoftwareX/SoftwareX_v2/R7X_stl_v5.urdf')
%%
%moving the robot
robot.DataFormat = 'row'; % Or 'row'

% Debug info - print joint names to verify configuration
%disp('Joint names in order:');
%disp(robot.jointNames);

% Fixed joints are not counted in the configuration vector
% The configuration should only include the 6 configurable joints
conf2=[-45*pi/180,0*pi/180,0.000,0*pi/180,0*pi/180,0];

figure;
show(robot,conf2);
tform = getTransform(robot, conf2, 'endeffector');
alpha(.2)
% xlim([-3 3])
% ylim([-3 3])
% zlim([-3 1])
xlim('auto'); 
ylim('auto'); 
zlim('auto');
% Hold the figure to add the point
hold on;
% Add a filled red point at the position defined by the transformation matrix
%plot3(tform(1,4), tform(2,4), tform(3,4), 'ro', 'MarkerFaceColor', 'r', 'MarkerSize', 10);
plot3(tform(1,4), tform(2,4), tform(3,4), 'go', 'MarkerFaceColor', 'g', 'MarkerSize', 10);

% Format the text to display the coordinates dynamically
coordsText = sprintf('(%.2f, %.2f, %.2f)', tform(1,4), tform(2,4), tform(3,4));

% Add a text label to show the point's coordinates in blue
text(tform(1,4), tform(2,4), tform(3,4)-0.7, coordsText, 'FontSize', 10, ...
    'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'center', ...
    'Color', 'blue');

% Release the hold on the figure
hold off;

