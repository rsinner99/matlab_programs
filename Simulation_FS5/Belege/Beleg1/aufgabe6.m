clc;
format long

anz_p1 = 852; % Summe P1
anz_p2 = 1341; % Summe P2
anz_p3 = 1020; % Summe P3
anz_p4 = 1540; % Summe P4

p1_aus = 0.04; %Ausschuss 1
p2_aus = 0.06; % Ausschuss 2
p3_aus = 0.03; % Auschuss 3
p4_aus = 0.024; % Auschuss 4

sum_platten = anz_p1+anz_p2+anz_p3+anz_p4;
P_A = (anz_p1/sum_platten)*p1_aus + (anz_p2/sum_platten)*p2_aus + (anz_p3/sum_platten)*p3_aus + (anz_p4/sum_platten)*p4_aus;

anz_ausschuss_tag = anz_p1*p1_aus + anz_p2*p2_aus + anz_p3*p3_aus + anz_p4*p4_aus
P_1_A = (anz_p1/sum_platten)*p1_aus/P_A
P_2_A = (anz_p2/sum_platten)*p2_aus/P_A
P_3_A = (anz_p3/sum_platten)*p3_aus/P_A
P_4_A = (anz_p4/sum_platten)*p4_aus/P_A
