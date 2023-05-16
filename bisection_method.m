%{ 
 Determination of roots of f(x) = 0 ( Algebraic or transcendental or
 comnination of both equation by bisection method ).
%}
clc;
close all;

syms x;
% For example: x^2-4*x+4;
f = input("Enter the function: ");

a = input("Enter the lower limit assumption: ");
b = input("Enter the higher limit assumption: ");
error = 0.000000001;

fa = eval(subs(f, x, a));
fb = eval(subs(f, x, b));

if (fa*fb > 0)
    disp("incorrect value");
    return;
end

c = midpoint(a, b);
fc = eval(subs(f, x, c));

while abs(fc) > error
    % Checks if fc and fa are same sign
    if(fa * fc > 0)
        % replace a with c
        a = c;
    % Checks if fc and fb are same sign
    elseif (fb * fc > 0)
        % replace b with c
        b = c;
    end
    c =  midpoint(a, b);
    fc = eval(subs(f, x, c));
end
disp("The value of fc is : ");
disp(fc);
disp("The root is : ");
disp(c);

% Finds midpoint from two given value.
function c = midpoint(point1, point2)
    c = (point1+point2) / 2;
end    
