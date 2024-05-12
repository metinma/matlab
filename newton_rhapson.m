% Newton Rhapson Example

% Clear the console and the variables
clear;
clc;

% Define a function
syms x
f = -0.5*x^2 + 2.5*x + 5.5;

% Define variables
xi = 7;
ES = 0.2;
ea = 1;

% Main operation loop
while ea > ES
    % Process the variables
    xinew = xi - subs(f, x, xi) / subs(diff(f, x), x, xi);
    
    % Calculate error
    ea = abs((xinew - xi) / xinew * 100);
    
    % Prepare for the next step
    xi = xinew;
end

% Print out the answer
fprintf("Answer: %f\n", xi);
