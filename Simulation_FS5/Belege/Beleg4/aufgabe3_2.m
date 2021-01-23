clc;
format long

% input
mu_0 = 8.4;
n = 14;
x_quer = 8.1;
s = 0.4;
alpha = 0.01;

% ---------------------------------
P_T_c = alpha;
c = tinv(P_T_c, n-1)
t_dach = (x_quer-mu_0)/(s/sqrt(n))

disp('Nullhypothese abgelehnt?')
if t_dach>-c & t_dach<c
    disp('Nein')
else
    disp('Ja')
end