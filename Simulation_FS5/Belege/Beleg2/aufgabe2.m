clearvars
format long

% input
xi = [0 2 9 13];
fi = [5/6 1/12 1/30 1/20];

%Die gesucht Stellen von F
f_1 = 2.0;
f_2 = 9.5;

%Preis des Loses
preis_los = 1.20;

%-----------------------------------
F_1 = 0;
F_2 = 0;
mu = 0;
mu2 = 0;

for i=1:length(xi)
    if xi(i)<=f_1
        F_1 = F_1 + fi(i);
    end
    if xi(i)<=f_2
        F_2 = F_2 + fi(i);
    end
    mu = mu + xi(i)*fi(i);
    mu2 = mu2 + xi(i)^2*fi(i);
end
F_1
F_2
mu
var = mu2 - mu^2
std = sqrt(var)

if preis_los<mu
    disp('Kauf lohnt sich!')
else
    disp('Kauf lohnt sich nicht!')
end