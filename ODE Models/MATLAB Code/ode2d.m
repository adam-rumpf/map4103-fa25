% Numerically solve the ODE system:
% dx/dt = 2y -    x
% dy/dt = -x - 0.5y
% x(0) = 2, y(0) = 1
% 0 <= t <= 10

% Define the ODE system
dxdt = @(t, x) [2*x(2) - x(1); -x(1) - 0.5*x(2)];
x0 = [2; 1]; % initial condition
tspan = [0, 10]; % time span

% Call ode45 to solve
[t, X] = ode45(dxdt, tspan, x0);

% Plot results in the phase plane
figure
plot(X(:,1), X(:,2), "b-")
xlabel("x")
ylabel("y")

% Plot both functions versus time
figure
plot(t, X(:,1), "b-", t, X(:,2), "r-")
xlabel("t")
ylabel("value")
legend("x(t)", "y(t)")
