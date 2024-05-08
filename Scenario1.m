%Scenario 1: The system exhibits stable oscillations with a periodicity of approximately 70 months.
clear all
close all
y0  = [0.75  0.15  8]; %i.e. plant, hare, lynx
a1 = [5];
a2  = [0.1];
b1 = [3]; %Both b parameters were key to get the correct oscilations
b2 = [1];
d1 = [0.4];
d2 = [0.01];
t0 = 0; 
tfinal=200;
tspan=[t0 tfinal];
%Solving model ODEs 
[t,y] = ode45(@(t,y) plants_hare_lynx(t,y,a1,a2,b1,b2,d1,d2), tspan, y0);
%Plot time population graph
figure("Name",'Plant-Hare-Lynx')
plot(t,y)
title('Plants/Hare/Lynx Populations Over Time')
xlabel('Time [months]')
ylabel('Population')
legend('Plant','Hare','Lynx','Location','North')

% Plot State plane
figure
plot3(y(:,1), y(:,2), y(:,3), 'b', 'LineWidth', 2)
xlabel('Plants');
ylabel('Hare');
zlabel('Lynx');
title('State Plane');
grid on;