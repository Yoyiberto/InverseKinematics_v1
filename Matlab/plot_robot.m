% Code to plot an arbitrary position of the mechanism and the end effector position.
robot=importrobot('/MATLAB Drive/SoftwareX/SoftwareX_v2/R7X_stl_v5.urdf');
%moving the robot
robot.DataFormat = 'row';

%% MODIFY TO AN ARBITRARY POSITION
% Fixed joints are not counted in the configuration vector
% The configuration should only include the 6 configurable joints
conf2=[10*pi/180,15*pi/180,0.500,20*pi/180,25*pi/180,0];

%%
figure;
show(robot,conf2);
tform = getTransform(robot, conf2, 'endeffector');
alpha(.2)

xlim('auto'); 
ylim('auto'); 
zlim('auto');
% Hold the figure to add the point
hold on;
% Add a filled green point at the position defined by the transformation matrix
plot3(tform(1,4), tform(2,4), tform(3,4), 'go', 'MarkerFaceColor', 'g', 'MarkerSize', 10);

% Format the text to display the coordinates dynamically
coordsText = sprintf('(%.2f, %.2f, %.2f)', tform(1,4), tform(2,4), tform(3,4));

% Add a text label to show the point's coordinates in blue
text(tform(1,4), tform(2,4), tform(3,4)-0.7, coordsText, 'FontSize', 10, ...
    'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'center', ...
    'Color', 'blue');

% Release the hold on the figure
hold off;

%save png
saveas(gcf, 'robot_plot.png');