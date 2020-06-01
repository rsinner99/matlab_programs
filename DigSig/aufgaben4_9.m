% Schreiben Sie ein Matlab-Programm, welches den Maximalwert einer Matrix ausgibt.
% Die Matrix habe eine H¨ohe H, eine Breite W und sei mit zuf¨alligen, ganzzahligen
% Werten im Bereich von 0 bis 19 initialisiert

H = 5;
W = 8;
M = randi([0 19],H,W);

sizeM = size(M);

% a) ohne Zuhilfenahme der Matlab-Funktion max(),
max_val = M(1,1);
for i = 1:sizeM(1)
    for j = 1:sizeM(2)
        if M(i,j) > max_val
            max_val = M(i,j);
            zeile = i;
            spalte = j;
        end
    end
end

disp('a): ')
disp(max_val)
disp('In Zeile:')
disp(zeile)
disp('In Spalte:')
disp(spalte)
% b) mit Zuhilfenahme der Matlab-Funktion max(),
%max = max(
max_val = max(max(M));

disp('b): ')
disp(max_val)



% c) Wie k¨onnen die Koordinaten des Maximalwertes in beiden Varianten zus¨atzlich
% ermittelt werden?

disp('c) --> Nur in Aufgabenteil a) möglich')