clc
clear
format short

% input
i_x = 4; %Zeile von x
j_x = 1; % Spalte von x
% fuer x eine 0 eintragen!
P = [
    [0.65, 0.17, 0.13, 0.05, 0.0, 0.0];
    [0.17, 0.44, 0.2, 0.14, 0.05, 0.0];
    [0.13, 0.17, 0.36, 0.17, 0.13, 0.04];
    [0, 0.11, 0.17, 0.36, 0.21, 0.11];
    [0.0, 0.04, 0.12, 0.2, 0.47, 0.17];
    [0.0, 0.0, 0.02, 0.12, 0.17, 0.69];
];

notenverteilung_klasse_5 = [3, 6, 15, 3, 1, 0];

note_klasse_6 = 4;
note_klasse_7 = 5;
note_klasse_10 = 5;

% letzter Punkt
note_klasse_7_vorher = 5;
note_klasse_9_jetzt = 4;

% -------------------------------
pi_0 = notenverteilung_klasse_5;

x = 1-sum(P(i_x,:))
P (i_x,j_x) = x;

klasse_6 = pi_0 * P^1;
anz_kinder_klasse_6 = round(klasse_6(note_klasse_6))
klasse_7 = pi_0 * P^2;
anz_kinder_klasse_7 = round(klasse_7(note_klasse_7))

format long
klasse_10 = pi_0*P^5;
p_klasse_10 = klasse_10(note_klasse_10)/sum(pi_0)

pi_0_klasse_7 = zeros(1,6);
pi_0_klasse_7(note_klasse_7_vorher) = 1;
klasse_9_jetzt = pi_0_klasse_7 * P^2;
q_klasse_9_jetzt = klasse_9_jetzt(note_klasse_9_jetzt)