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

%lets assume. For example a = 0, and b = 1
%lets assume
a = input("Enter the first assumption: ");
b = input("Enter the second assumption: ");
fai = eval(subs(f, x, a));
fbi = eval(subs(f, x, b));
if (fai*fbi) < 0
    if(abs(0 - fbi) > abs(0-fai))
        n = a;
    else
        n = b;
    end
    disp("Assuming initial value: " + n);
else
    disp('The initial guess value is incorrect!');
    return;
end

while n ~= n - ( eval(subs(f, x, n)) / eval(subs(g, x, n)) )
    disp("Current value of n is : " + n);
    n = n - ( eval(subs(f, x, n)) / eval(subs(g, x, n)) );
end

disp( "The approximate root of the function is: " + n);
    