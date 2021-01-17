clc;
format long

p_borreliose = 0.8/100; %Wahrsch. fuer Borreliose
p_erkaeltung = 0.13; % Wahrsch. fuer Erkaeltung

%Kopfschmerzen:
p_schmerz_b = 0.78; % Kopfschmerzen bei Borreliose
p_schmerz_e = 0.23; % Kopfschmerzen bei Erkaeltung
p_schmerz_g = 0.06; % Kopfschmerzen Gesund

p_gesund = 1-(p_borreliose+p_erkaeltung);

y = p_gesund
x = 1-p_schmerz_b

P_K = p_borreliose*p_schmerz_b + p_erkaeltung*p_schmerz_e + p_gesund*p_schmerz_g;

P_B_K = p_schmerz_b*p_borreliose/P_K
P_E_K = p_schmerz_e*p_erkaeltung/P_K
P_G_K = p_schmerz_g*p_gesund/P_K