% Farm land allocation problem (x = wheat, y = corn)
% Maximize total profit:
% 2000x + 1000y
% Subject to constraints:
% x + y <= 800 (land)
% 2x + 4y <= 24 (fertilizer)
% 8x + 2y <= 48 (water)
% x,y >= 0 % nonnegativity

% Define problem parameters
c = [-2000; -1000]; % cost vector
A = [1 1;
    2 4;
    8 2]; % inequality constraint matrix
b = [800; 24; 48]; % inequality requirement vector

% Call linprog and extract all arguments
[x, fval, exitflag, output, lambda] = linprog(c, A, b, [], [], [0; 0]);

% Display optimal solution
disp("Optimal solution:")
disp(x)
disp("Optimal (negative) profit:")
disp(fval)

% Display inequality constraint dual variables
disp("Inequality constraint dual variables:")
disp(lambda.ineqlin)

% Re-solve the LP with a larger land budget
[xnew, fvalnew] = linprog(c, A, b+[1; 0; 0], [], [], [0; 0]);
disp("Objective increase for 1 additional land unit:")
disp(fvalnew - fval)

% Re-solve the LP with a larger fertilizer budget
[xnew, fvalnew] = linprog(c, A, b+[0; 1; 0], [], [], [0; 0]);
disp("Objective increase for 1 additional fertilizer unit:")
disp(fvalnew - fval)

% Re-solve the LP with a larger water budget
[xnew, fvalnew] = linprog(c, A, b+[0; 0; 1], [], [], [0; 0]);
disp("Objective increase for 1 additional water unit:")
disp(fvalnew - fval)
