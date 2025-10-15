% Load data table
T = readtable("linear_data.csv");
m = length(T.x);

% Call fitlm to fit a linear regression model
model = fitlm(T.x, T.y);
disp(model)

% Get parameters from model
beta = model.Coefficients.Estimate;

% Compute predicted values
disp(beta)
x = linspace(0, 210, 100);
y = beta(1) + beta(2)*x;

% Plot predictions versus data
figure
plot(x, y, "b-", T.x, T.y, "ro")
xlabel("x")
ylabel("y")
title("Linear Regression Demo")
lgd = legend("Model", "Data");
lgd.Location = "southeast";
