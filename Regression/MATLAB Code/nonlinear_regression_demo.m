% Load data table
T = readtable("nonlinear_data.csv");
m = length(T.x);

% Solve normal equations
X = ones(m, 3);
X(:,2) = T.x;
X(:,3) = T.x.^2;
beta = (X'*X) \ X'*T.y;

% Compute predicted values
x = linspace(0, 7, 100);
y = beta(1) + beta(2)*x + beta(3)*x.^2;

% Plot predictions versus data
figure
plot(x, y, "b-", T.x, T.y, "ro")
xlabel("x")
ylabel("y")
title("Polynomial Regression Demo")
lgd = legend("Model", "Data");
lgd.Location = "southeast";

% Fit model using the built-in polyfit function (note reversed order)
model = polyfit(T.x, T.y, 2);
disp(model)
