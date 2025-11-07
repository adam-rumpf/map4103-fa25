% Problem definition
c = [2; 3; 2]; % cost vector
A = [-1, -1, -1;
    2, 1, 0]; % inequality constraint matrix
b = [-3; 4]; % inequality requirement vector
Aeq = [1, 0, 1]; % equality constraint matrix
beq = [4]; % equality requirement vector
lb = zeros(3, 1); % lower bound vector
ub = []; % upper bound vector

% Solve LP
[x, fval] = linprog(c, A, b, Aeq, beq, lb, ub);
disp("Minimizing argument:")
disp(x)
disp("Minimum objective:")
disp(fval)

% Re-solve as a maximization
[x, fval] = linprog(-c, A, b, Aeq, beq, lb, ub); % negate c
disp("Maximizing argument:")
disp(x)
disp("Maximum objective:")
disp(-fval) % negate objective
