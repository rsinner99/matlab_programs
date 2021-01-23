clc;
format long

% input
n = 350;
d_t_quer = 47;
haeufigkeit = [98,67,53,29,28,19,15,12,29];
alpha = 0.05;

%-------------------------------
x = haeufigkeit;
lambda = 1/d_t_quer

z_dach = 0;
pi = zeros(1,length(x));
ni_str = zeros(1,length(x));
dn = zeros(1,length(x));

for i=1:length(x)
    kl = [0, i*15];
    kl(1) = kl(2)-15;
    if i<length(x)
        pi(i) = (1-exp(-lambda*kl(2))) - (1-exp(-lambda*kl(1)));
    else
        pi(i) = 1-(1-exp(-lambda*kl(1)));
    end
    ni_str(i) = n*pi(i);
    dn(i) = (x(i)-ni_str(i))^2/ni_str(i);
end

pi_0_15 = pi(1)
ni_stern_120_infinity = ni_str(length(x))
letzte_spalte_15_30 = dn(2)
testwert_z = sum(dn)

P_Z_c = 1-alpha;
c = chi2inv(P_Z_c, length(x)-2)

disp('Ankunftsabstaende exponentialverteilt?')
if testwert_z < c
    disp('Ja')
else
    disp('Nein')
end