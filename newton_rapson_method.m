% Determinatin of roots of f(x) = 0 by Newtom Rapson Method.
clc;
close all;
syms x n;

%{
Takes a function as an input and stores that in the variable f.
For example: 3^x - cos(x) - 1
%}
f = input("Enter the function: ");

% The first derivative of f as g.
g = diff(f , x);

%lets assume the initial value
n = input("Enter the initial assumption: ");

while n ~= n - ( eval(subs(f, x, n)) / eval(subs(g, x, n)) )
    disp("Current value of n is : " + n);
    n = n - ( eval(subs(f, x, n)) / eval(subs(g, x, n)) );
end

disp( "The approximate root of the function is: " + n);
    