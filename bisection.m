% Bisection Example

% Clear the console and the variables
clear;
clc;

% Define a function
syms x
f = -0.5*x^2 + 2.5*x + 5.5;

% Inıtial guesses and variables
ES = 1;
ea = 2;
xl = 6;
xu = 10;
xmold = 100;

% Operation Loop
while ea > ES
    xm = (xl + xu) / 2;
    
    % Process the initial variables
    fxl = subs(f, x, xl);
    fxm = subs(f, x, xm);
    fxu = subs(f, x, xu);
    
    % Decide the next step
    if fxl * fxm < 0
        xu = xm;
    else
        xl = xm;
    end
    
    % Calculate error
    ea = abs((xm - xmold) / xm * 100);
    xmold = xm;
end

% Print out the root
fprintf("Answer %f\n", xm);

