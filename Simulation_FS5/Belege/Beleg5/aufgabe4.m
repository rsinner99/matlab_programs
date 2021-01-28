clc
clear
format rational

% input

a = 2/11; %alpha
b = 1/8; %beta
y = 1/10; %gamma
d = 1/3; %delta

%------------------------------------

Q = [
    [-3*a, a, 2*a, 0];
    [0, -4*b, b, 3*b];
    [4*y, 0, -5*y, y];
    [0, d, d, -2*d];
]
Q_solve = Q';
Q_solve(end+1,:) = ones(1,size(Q_solve,2));
B = zeros(size(Q_solve,1),1);
B(end) = 1;
stat = linsolve(Q_solve,B)
