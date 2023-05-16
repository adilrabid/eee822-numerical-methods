%{ 
Determination of roots of f(x) = 0 ( Algebraic or transcendental or
comnination of both equation by false position method ).
%}
clc;
close all;

syms x;

% For example: x^2-9;
f = input("Enter the function: ");

a = input("Enter the lower limit assumption: ");
b = input("Enter the higher limit assumption: ");
error = 0.00000001;

fa = eval(subs(f, x, a));
fb = eval(subs(f, x, b));

if (fa*fb < 0)
    disp("incorrect value assumed!");
    return;
end

% Estimate the initial value
c = estimate(a, b, f, x);
fc = eval(subs(f, x, c));

while abs(fc) > error
    % Checks if fc and fa are opposite sign
    if(eval(subs(f, x, c)) * eval(subs(f, x, a)) < 0)
        % replace b with c
        b = c;
    % Checks if fc and fb are same sign
    else
        % replace a with c
        a = c;
    end
    c = estimate(a, b, f, x);
    fc = eval(subs(f, x, c));
end
disp("The value of fc is : ");
disp(fc);
disp("The root is : ");
disp(c);

% Estimate of the root as c from two given value.
function c = estimate(a, b, f, x)
    fa = eval(subs(f, x, a));
    fb = eval(subs(f, x, b));
    c = a - (fa * (b - a)) / (fb - fa);
end
