% Secant Method Example

% Clear the console and the variables
clear;
clc;

% Define a function
syms x
f = exp(-x) - x;

% Define variables
ES = 1;
ea = 100;
xi = 0;
xii = 1;

% Main loop
while ea > ES
    % Process variables
    xnew = xii - (subs(f, x, xii)*(xi - xii)) / (subs(f, x, xi) - subs(f, x, xii));
    
    % Calculate error
    ea = abs((xnew - xii) / xnew * 100);
    
    % Next step
    xi = xii;
    xii = xnew;
end

% Print the answer
fprintf("Answer: %f\n", xnew);