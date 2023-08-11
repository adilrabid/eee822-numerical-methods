%{
    !!!! ==== For older version of Matlab ==== !!!!!
%}

% Determinatin of roots of f(x) = 0 by using Secant Method.
clc;
close all;

syms x newRoot;

disp('Finding Root using Secant Method...');

%{
Takes a function as an input and stores that in the variable f.
For example: 3*x - cos(x) - 1 or x^3-2*x-5
%}
f = input("Enter the function: ");

%lets assume
a = input("Enter the first assumption: ");
b = input("Enter the second assumption: ");

% Allowed error tolerance. Adjust it according to your need.
tolerance = 0.000000001;

fai = eval(subs(f, x, a));
fbi = eval(subs(f, x, b));

if (fai*fbi) > 0
    disp('The initial guess value is incorrect!');
    return;
end

while 1
    % finding new approximate root using formula of secant method.
    newRoot = (a * eval(subs(f, x, b)) - b * eval(subs(f, x, a))) / ( eval(subs(f, x, b)) - eval(subs(f, x, a)) );
    
     % the value of f(x) will zero or very close to zero if root is correct.
    if ( abs(eval(subs(f, x, newRoot))) < tolerance)
        % Congrats!! root found!
        break;
    else
        a = b;
        b = newRoot;
        
        disp("Current Value of n is: "+newRoot);
    end
end

disp( "The exact root of the function is: " + newRoot);