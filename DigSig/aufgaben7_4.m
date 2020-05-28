% Aufgabe 7.4 
clear

% a) gewünschtes Ergebnis: y = [0, 2, 6, 12, 16, 18]

% b) Fehlermeldung, da y(n) undefiniert ist
% Lösung: y(n) mit 0-Vektor initialisieren

x = [2 4 6 4 2];

% b) Code:
% y(1:(length(x)+1)) = 0;
y = zeros(1, length(x)+1);

for n=1:length(x)
    y(n+1) = y(n) + x(n);
end

disp(y);