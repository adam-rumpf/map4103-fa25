% Define model parameters
alpha = 0.6;
beta = 1.3;
gamma = 1.0;
delta = 1.0;

% Define model
dxdt = @(t, x) [alpha*x(1) - beta*x(1)*x(2); -gamma*x(2) + delta*x(1)*x(2)];
tspan = [0, 20];
X0 = [2.5; 0.5];

% Define solver options
opts = odeset("RelTol", 0.0001);

% Call ode45
[t, X] = ode45(dxdt, tspan, X0, opts);

% Plot results in phase plane
figure
plot(X(:,1), X(:,2), "b-")
xlabel("Prey")
ylabel("Predator")
title("Lotka-Volterra System")

% Plot results versus time
figure
plot(t, X(:,1), "b-", t, X(:,2), "r-")
xlabel("Time")
ylabel("Population")
title("Lotka-Volterra System")
legend("Prey", "Predator")
