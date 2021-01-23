clc;
format long

% input
dt = [2,12,46,24,57,9,34,14,2,42];
quantil = 0.45;
%------------------------------------
dt_sort = sort(dt);
n = length(dt);
index = n*quantil;
xq = 0;
if index == round(index)
    xq = (dt_sort(index)+dt_sort(index+1))/2;
else
    xq = dt_sort(ceil(index));
end

mittelwert = sum(dt)/length(dt)
xq
lambda = 1/mittelwert
