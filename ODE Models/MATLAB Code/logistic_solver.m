% Solving the ODE dP/dt = 0.3P(1-P/200)

% Define ODE
f = @(t, P) 0.3*P*(1 - P/200);
tspan = [0, 40];
P0 = 20;

% Call ode45
[t, P] = ode45(f, tspan, P0);

% Plot the results
figure
plot(t, P, "r-")
xlabel("Time (years)")
ylabel("Population")
