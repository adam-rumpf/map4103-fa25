% Minimize the function:
% -xy
% Subject to:
% 2x + 3y = 1200

% Define objective
f = @(x) -x(1)*x(2);
x0 = [100; 100]; % initial guess

% Define constraint parameters
Aeq = [2 3]; % equality coefficients
beq = [1200]; % equality requirement
lb = [0; 0]; % lower bounds

% Call fmincon
[x, fval, exitlag, output, lambda] = fmincon(f, x0, [], [], Aeq, beq, lb);

% Report solution
disp("Optimal dimensions:")
disp(x)
disp("Optimal area:")
disp(-fval)
disp("Dual variables:")
disp(lambda.eqlin)
