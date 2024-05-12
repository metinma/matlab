% LU Decomposition Example

% Clear the console and the variables
clear;
clc;

% Define variables
A = [10, 2, -1; -3, -6, 2; 1, 1, 5];
b = [25; -60; -20];

% Perform LU decomposition
[L,U,P] = lu(A);

% Solve the equation
d = L \ (P*b);
x = U \ d;

% Print out the answer as a matrix
fprintf("Answer:\n");
disp(x);