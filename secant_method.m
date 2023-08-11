% Determinatin of roots of f(x) = 0 by using Secant Method.
clc;
close all;

syms x n;

disp('Finding Root using Secant Method...');
%{
Takes a function as an input and stores that in the variable f.
For example: 3*x - cos(x) - 1
%}
%f = input("Enter the function: ");
f = x^3-2*x-5;

%lets assume
%a = input("Enter the first assumption: ");
%b = input("Enter the second assumption: ");
a = 2;
b = 3;

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

while n ~= (n - ((n - (n -1)) * eval(subs(f,x,n)))/(eval(subs(f,x,n)) - eval(subs(f,x,(n-1)))))
    disp("Current Value of n is: ");
    disp(n);
    newRoot =  n - ((n - (n -1)) * eval(subs(f,x,n)))/(eval(subs(f,x,n)) - eval(subs(f,x,(n-1))));
    n = newRoot;
end
disp( "The exact root of the function is: " + n);