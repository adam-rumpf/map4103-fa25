% Solve the loan repayment model.

% Define some parameters
N = 240; % number of iterations
a = zeros(1, N+1); % vector of values
a(1) = 80000; % initial value

% Numerically solving the model
for i=1:N
    a(i+1) = 1.01*a(i) - 880.87;
end

% Plot the results
figure
plot(0:N, a)
xlabel("Time (months)")
ylabel("Amount Owed (dollars)")
title("Loan Repayment Model")
