% Yeast population model compared to a data series.

% Initialize values
N = 18; % number of iterations
p = zeros(1, N+1);
p(1) = 9.6; % initial value

% Numerically solve model
for i=1:N
    p(i+1) = p(i) + 0.0009*(664-p(i))*p(i);
end

% Import data
T = readtable("yeast_data_extended.csv");
num = length(T.biomass);

% Plot model and data
figure
plot(0:N, p, "bo-", 0:(num-1), T.biomass, "rx")
xlabel("Time (h)")
ylabel("Biomass (mg)")
lgd = legend("Model", "Data")
lgd.Location = "northwest";
title("Yeast Population Growth")
