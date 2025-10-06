% Solve the damped spring-mass system
%
% x'' = -2x' - 4x, x(0) = 1, x'(0) = 0
%
% by first converting it to the coupled system
%
% x' = v
% v' = -2v - 4x

% Define the model as a vector the two righthand sides
dxdt = @(t, x) [x(2); -2*x(2) - 4*x(1)]; % x(1) = position, x(2) = velocity
x0 = [1, 0];
tspan = [0, 8];

% Numerically solve the model
[t, x] = ode45(dxdt, tspan, x0);

% Plot the results
figure
plot(t, x(:,1), "bo-")
xlabel("Time (s)")
ylabel("Position (m)")
title("Damped Spring-Mass System")

% Also show the velocity
figure
plot(t, x(:,1), "bo-", t, x(:,2), "ro-")
xlabel("Time (s)")
ylabel("Value")
title("Damped Spring-Mass System")
legend("Position (m)", "Velocity (m/s)")
