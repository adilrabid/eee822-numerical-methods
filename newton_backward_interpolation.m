% Implementation of interpolation by newton's backward method.
clc;
close all;
format long;

xp = 38;

x = [15, 20, 25, 30, 35, 40];
y = [0.2588190, 0.3420201, 0.4226183, 0.5, 0.5735764, 0.6427876];
%{
Examples
x = [15, 20, 25, 30, 35, 40];
y = [0.2588190, 0.3420201, 0.4226183, 0.5, 0.5735764, 0.6427876];
xp = 38;

x = [1,3,5,7];
y = [24, 120, 336, 720];
xp = 9;
%}


% Difference
h = abs(x(2)-x(1));
disp('Value of h: ');
disp(h);
x0 = x(length(x)); % The last value of x.
disp('The first value of x column: ');
disp(x0);

u = (xp - x0) / h;
disp('Value of u: ');
disp(u);

n = length(x) - 1;
% Initiating the a empty matrix of (nxn)
F = zeros(n+1);
% Assigning the first column of the zero matrix with values of y. 
F(:,1) = y;

for i = 1:n
    % here i is defining row.
    % and j is defining column.
    for j=1:i
        difference =  F(i+1,j) -  F(i,j);
        F(i+1, j+1) = difference;
    end
end

disp('The newton difference table: ');
disp(F);
% Retrieves the last row of the matrix and converts to column
dels = transpose( F(end, :) );
yx = 0;
for i = 1:length(x)
    U = 1;
    for j = 0:i-1
        if j == 0
            continue;
        end
        U = U * (u+(j-1));
    end
    
    del = dels(i, 1);
    nextItem = del * (U / factorial(i-1));
    yx = yx + nextItem;
end

disp('The result is: ');
disp(yx);