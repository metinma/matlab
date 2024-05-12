% Simple Fixed Point Example

% Clear the console and the variables
clear;
clc;

% Define a function
% Choose g(x) so that it converges
syms x
f = -0.5*x^2 + 2.5*x + 5.5;
g = (5*x + 11)^0.5;

% Define variables
xi = 7;
ES = 0.2;
ea = 1;

% Main operation loop
while ea > ES
    % Process xi
    xinew = (subs(g, x, xi));
    
    % Calculate error
    ea = abs((xinew - xi) / xinew * 100);
    
    % Prepare for the next step
    xi = xinew;
end

% Print out the answer
fprintf("Answer: %f\n", xi);