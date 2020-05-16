% Aufgaben 7.5 DigSig
clear

% a) gewünschtes Ergebnis: y = [2 2 2 -2 -2]
% b) Lösung: Null vorne anfügen in x-Vektor und mit n=2 starten

x = [ 0 2 4 6 4 2];
for n = 2:length(x)
    y(n-1) = x(n) - x(n-1);     
end

disp(y);