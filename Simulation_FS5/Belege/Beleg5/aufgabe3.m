clc
clear
format rational

% input
P = [
    [0, 1, 0, 0];
    [0, 0, 1/2, 1/2];
    [1/2, 0, 0, 1/2];
    [1/3, 1/3, 1/3, 0];
];


% ------------------------------------------------------
P_solve = P'-eye(size(P));
P_solve(end+1,:) = ones(1,size(P,2));
B = zeros(size(P_solve,1),1);
B(end) = 1;

stat = linsolve(P_solve,B)
[v,i] =max(stat);
disp(['Die bedeutendste Seite ist: ',num2str(i)])