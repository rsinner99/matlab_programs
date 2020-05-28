% Aufgaben 7.5 DigSig
clear

% a) gewünschtes Ergebnis: y = [2 2 2 -2 -2]
% b) Lösung: Null vorne anfügen in x-Vektor und mit n=2 starten


x = [2 4 6 4 2];
for n = 2:length(x)
    y(n) = x(n) - x(n-1);     
end
y(1) = x(1);

disp(y);