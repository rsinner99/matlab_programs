disp('Dieses Programm berechnet die Summe der Zahlen von 1 bis n')
n=input('Bitte n eingeben:')

summe=0;
for i=1:n
    summe = summe+i;
end

disp('Ergebnis'),disp(summe)