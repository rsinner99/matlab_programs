clc;
format long

% input
n=13;
x_quer = 78;
s_quad = 28;
gamma = 0.99;

%-----------------------------------
P_T_c1 = (1-gamma)/2;
c1 = chi2inv(P_T_c1, n-1)
P_T_c2 = (1+gamma)/2;
c2 = chi2inv(P_T_c2, n-1)

untere_grenze = (n-1)*s_quad/c2
obere_grenze = (n-1)*s_quad/c1