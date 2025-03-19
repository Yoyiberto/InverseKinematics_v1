% Code to plot the example configurations in the paper.
robot=importrobot('/MATLAB Drive/SoftwareX/SoftwareX_v2/R7X_stl.urdf');
%moving the robot
robot.DataFormat = 'row'; 

% Fixed joints are not counted in the configuration vector
% The configuration should only include the 6 configurable joints
thetaA=[0.0000, 0.2618, -0.0001, 0.2618, -0.0001,0];

figure(1);
show(robot,thetaA);
tform = getTransform(robot, thetaA, 'endeffector');
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
saveas(gcf, 'robot_PositionA.png');

%% Figure 2
thetaB=[0.0004, -0.1766, -0.0040, 0.1712, 0.1735,0];
figure(2);
show(robot,thetaB);
tform = getTransform(robot, thetaB, 'endeffector');
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
saveas(gcf, 'robot_PositionB.png');
