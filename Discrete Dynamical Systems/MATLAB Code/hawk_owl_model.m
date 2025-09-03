% Solve the hawk/owl competitive population model.

% Define some parameters
N = 30; % number of iterations
h = zeros(1, N+1); % vector of hawk population values
o = zeros(1, N+1); % vector of owl population values
h(1) = 201; % initial hawk population
o(1) = 149; % initial owl population
alpha = 0.3; % hawk growth constant
beta = 0.002; % hawk competition constant
gamma = 0.2; % owl growth constant
delta = 0.001; % owl competition constant

% Numerically solve the model
for i=1:N
    h(i+1) = (1+alpha)*h(i) - beta*h(i)*o(i);
    o(i+1) = (1+gamma)*o(i) - delta*h(i)*o(i);
end

% Plot the results
figure
plot(0:N, h, "bo-", 0:N, o, "rx-")
xlabel("Time (years)")
ylabel("Population")
title("Competitive Population Model")
legend("Hawks", "Owls")
