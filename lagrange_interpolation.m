%Lagrange Interpolation Formula MATLAB Program
clc;
close all;
% Given data points
x = [1, 2, 7, 9];
fx = [1, 1, 2, 5];

% Point to interpolate
xp = 5;

% Number of data points
n = length(x);

% Initialize the interpolated value
gx = 0;

for i = 1:n
    L = 1;
    for j = 1:n
        if j ~= i
            L = L * (xp - x(j)) / (x(i) - x(j));
        end
    end
    gx = gx + L * fx(i);
end

% Display the interpolated value
disp(['Result of interpolated at x = ', num2str(xp), ' is ', num2str(gx)]);
  
