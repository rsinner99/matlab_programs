clc;
format long

% input
x = [191, 178, 183, 151, 164, 170, 188, 188, 170, 174];
gamma = 0.9;
%-----------------------------------
n = length(x);
x_quer = sum(x)/n
s_quad = var(x)

P_T_c = (gamma+1)/2;
c = tinv(P_T_c, n-1);
mu_untere_grenze = x_quer - c*sqrt(s_quad)/sqrt(n)
mu_obere_grenze = x_quer + c*sqrt(s_quad)/sqrt(n)

P_T_c1 = (1-gamma)/2;
c1 = chi2inv(P_T_c1, n-1);
P_T_c2 = (1+gamma)/2;
c2 = chi2inv(P_T_c2, n-1);

sigma_untere_grenze = (n-1)*s_quad/c2
sigma_obere_grenze = (n-1)*s_quad/c1