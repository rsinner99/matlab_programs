clc;
format long
% input
n=18;
x_quer = 78;
s_quad = 30;
gamma = 0.99;

%-----------------------------------
P_T_c = (gamma+1)/2;
c = tinv(P_T_c, n-1)

untere_grenze = x_quer - c*sqrt(s_quad)/sqrt(n)
obere_grenze = x_quer + c*sqrt(s_quad)/sqrt(n)