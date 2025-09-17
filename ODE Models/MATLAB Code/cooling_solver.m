% Solving the ODE T'(t) = -0.045(T(t) - (10+0.25t))

% Define the ODE
f = @(t, T) -0.045*(T - (10 + 0.25*t)); % righthand side of ODE
tspan = [0, 120]; % time span
T0 = 90; % initial condition

% Call ode45
[t, T] = ode45(f, tspan, T0);

% Plot the results
figure
plot(t, T, "r-")
xlabel("Time (min)")
ylabel("Temperature (C)")
