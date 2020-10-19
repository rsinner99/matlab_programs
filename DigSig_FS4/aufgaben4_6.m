% y[n] = 0.25·x[n]+0.5·x[n−1]+0.25·x[n−2]
clear;

x = [1 2 3 4 5 6 0 0 0 0];

for n = 1:length(x)
    y(n) = 0;
    if n-2 > 0
        y(n) = y(n) + 0.25*x(n-2);
    end
    if n-1 > 0
        y(n) = y(n) + 0.5*x(n-1);
    end
    y(n) = y(n) + 0.25*x(n);
end

while y(n) == 0
    y(n) = [];
    n = n-1;
end

disp(y)