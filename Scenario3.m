
%Scenario 3: The system shows chaotic behavior and the lynx population peaks twice within the 200-months period. What makes this behavior 
% chaotic and not oscillating or random? Hint: Chaotic behavior is deterministic, sensitive to initial conditions, bounded and irregular.
clear all
close all

y0  = [0.75  0.15  8]; %i.e. plant, hare, lynx
a1 = [4.8];
a2  = [0.1];
b1 = [3]; 
b2 = [2]; 
d1 = [0.4];
d2 = [0.01]; 
t0 = 0; 
tfinal=200;
tspan=[t0 tfinal];
%Solving the model odes
[t,y] = ode45(@(t,y) plants_hare_lynx(t,y,a1,a2,b1,b2,d1,d2), tspan, y0);
%Ploting time graph
figure("Name",'Plant-Hare-Lynx')
plot(t,y)
title('Plants/Hare/Lynx Populations Over Time')
xlabel('Time [months]')
ylabel('Population')
legend('Plant','Hare','Lynx','Location','North')

% Plot state plane
figure
plot3(y(:,1), y(:,2), y(:,3), 'b', 'LineWidth', 2)
xlabel('Plants');
ylabel('Hare');
zlabel('Lynx');
title('State Plane');
grid on;
