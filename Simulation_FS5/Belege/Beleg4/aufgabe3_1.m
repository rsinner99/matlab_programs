clc;
format long

% input
mu_0 = 140;
n = 14;
x_quer = 142;
s = 3.6;
alpha = 0.01;

% ---------------------------------
P_T_c = 1-(alpha/2);
c = tinv(P_T_c, n-1)
u_dach = (x_quer-mu_0)/(s/sqrt(n))

disp('Nullhypothese abgelehnt?')
if u_dach>-c & u_dach<c
    disp('Nein')
else
    disp('Ja')
end