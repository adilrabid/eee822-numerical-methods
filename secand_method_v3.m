% Determinatin of roots of f(x) = 0 by using Secant Method.
clc;
close all;

disp('Finding Root using Secant Method...');

%{
Declaring global variables.
Global variables are needed to use them in user defined functions below.
%}
global x f a b root;

%{
Takes a function as an input and stores that in the global variable f.
For example: x^3-2*x-5
%}
f = input("Enter the function: ");

%lets assume
a = input("Enter the first assumption: ");
b = input("Enter the second assumption: ");

fa = eval(subs(f, x , a));
fb = eval(subs(f, x , b));

% Allowed error tolerance. Adjust it according to your need.
tolerance = 0.0000000001;

if(fa*fb > 0)
    disp("Invalid assumptions");
end

while 1
    % finding new root...
    root = approx(a, b);
    disp("Current approximate root is: " + root);
    
    % the value of fc will zero or very close to zero if root is correct.
    fc = fx(root);
    
    if(abs(fc) < tolerance)
        % Congrats! root found !!!
        break;
    else
        % Update the values of a and b for next iteration.
        a = b;
        b = root;
    end
end

disp("The root is: " + root);

% calculates new approximate root using secant method formula
function root = approx(val1, val2)
    global a b;
    
    fa = fx(val1);    
    fb = fx(val2);
  
    root = (a*fb - b*fa)/(fb-fa);
end

% evaluate a function f(x) with the given value of x.
function func_eval = fx(val)
    global f x;
    
    func_eval = eval(subs(f, x, val));
end