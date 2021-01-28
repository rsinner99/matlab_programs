clear;
format rational

% input
p1 = 1/14;
p2 = 2/3;
p3 = 1/6;

n = 5; %Anzahl Schritte
i = 2; %Startzustand
j = 2; %Zielzustand

% --------------------------------------------
P = [
    [p1, 2*p1, 1-3*p1];
    [0, p2, 1-p2];
    [3*p3, 1-4*p3, p3];
]

pi_0 = zeros(1,3);
pi_0(i) = 1;
p = pi_0 * P^n;
p_j = p(j)

P_solve = P'-eye(size(P));
P_solve(end+1,:) = [1,1,1];
B = [0;0;0;1];
stat = linsolve(P_solve, B)