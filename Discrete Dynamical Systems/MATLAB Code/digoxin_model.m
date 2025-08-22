% Solve the digoxin model.

% Define some parameters
N = 8; % number of iterations
a = zeros(1, N+1); % vector of values
a(1) = 0.500; % initial value

% Numerically solving the model
for i=1:N
    a(i+1) = 0.75*a(i);
end

% Load data table
T = readtable("digoxin_data.csv");

% Plot the results
figure
plot(0:N, a, "bo-", 0:N, T.amount, "rx")
xlabel("Time (days)")
ylabel("Amount of Digoxin (mg)")
title("Digoxin Model")
legend("Model", "Data")
