% Minimize the function:
% (1/4)x^2 - 2x + (1/4)xy + y + (3/8)y^2

% Define objective function
f = @(x) 0.25*x(1)^2 - 2*x(1) + 0.25*x(1)*x(2) + x(2) + 0.375*x(2)^2;
x0 = [3; -2];

% Call fminunc
[x, fval] = fminunc(f, x0);
disp("Minimum value:")
disp(fval)
disp("Minimizer:")
disp(x)
