% Linear System of Equations Example
% Using the inverse method

% Clear the console and the variables
clear;
clc;

% Define variables
A = [10, 2, -1; -3, -6, 2; 1, 1, 5];
Ainv = (A)^(-1);
b = [25; -60; -20];

% Solve the system
x = Ainv * b;

% Print out the answer
fprintf("Answer:\n");
disp(x);