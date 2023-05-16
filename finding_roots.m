%{ 
 Determination of roots of f(x) = 0 ( Algebraic or transcendental or
 comnination of both equation ).

  This code finds the root of a function using its builtin function.
%}

clc;
close all;

syms x;

%{
 The fucntion we want to find the root of.
 For Example: 3*x^3 + 2*x^2 - 1*x + 25
%}
f = input("Enter the function: ");
r = root(f);
display(r);