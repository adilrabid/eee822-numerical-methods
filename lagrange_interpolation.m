%Lagrange Interpolation Formula MATLAB Program
clc;
close all;
% Given data points
%x = input('Enter the X values: ');
%fx = input('Enter the Y values: ');

x = [300 304 305 307];
fx = [2.4771 2.4829 2.4843 2.4871];

% Point to interpolate
%xn = input('Enter the desired point Xn: ');
xn = 301;

% Number of data points
n = length(x);s

% Initialize the interpolated value
gx = 0;

for i = 1:n
    L = 1;
    for j = 1:n
        if j ~= i
            L = L * (xn - x(j)) / (x(i) - x(j));
        end
    end
    gx = gx + L * fx(i);
end

% Display the interpolated value
disp(['Result of interpolated at x=', num2str(xn), ' is ', num2str(gx)]);
  
