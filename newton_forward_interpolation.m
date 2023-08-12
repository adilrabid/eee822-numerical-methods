% Implementation of interpolation by newton's forward method.

clc;
close all;

%xp = input('The value of x: ');
xp = 9;

x = [8, 10, 12, 14, 16];
y = [1000, 1900, 3250, 5400, 8950];

% Difference
h = abs(x(2)-x(1));
disp("Value of h: ");
disp(h);

x0 = x(1);
disp("The first value of x column: ");
disp(x0);

u = (xp - x0) / h;
disp("Value of u: ");
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
        % disp("Next Child");
    end
    % disp("Next Parent");
end

disp('The newtons difference table: ');
disp(F);
dels = diag(F);
yx = 0;
for i = 1:length(x)
    U = 1;
    for j = 0:i-1
        if j == 0
            continue;
        end
        U = U * (u-(j-1));
    end
    
    del = dels(i, 1);   
    nextItem = del * (U / factorial(i-1));
    
    yx = yx + nextItem;
end

disp("The result is: "+yx);

% For older version compitability use
% disp('The result is: ');
% disp(yx);