clc;
format long

A = [
    [-0.5, cot(1/20), cot(1/10)];
    [cot(1/2), cot(1/4), (-29/90)];
    [1, 1, 1];
];

B = [0;0;1];

x = linsolve(A,B)