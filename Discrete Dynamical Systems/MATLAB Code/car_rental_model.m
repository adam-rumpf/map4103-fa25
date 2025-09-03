% Solve the Orlando/Tampa car rental model.

% Define some parameters
N = 20; % number of iterations
x = zeros(2, N+1); % matrix of Orlando/Tampa fleet sizes over time
x(1,1) = 400; % initial Orlando fleet
x(2,1) = 300; % initial Tampa fleet
A = [0.6, 0.3; 0.4, 0.7]; % transition matrix

% Numerically solve the model
for i=1:N
    x(:,i+1) = A*x(:,i);
end

% Plot the results
figure
plot(0:N, x(1,:), "bo-", 0:N, x(2,:), "rx-")
xlabel("Time (days)")
ylabel("Cars")
title("Car Rental Model")
legend("Orlando", "Tampa")
