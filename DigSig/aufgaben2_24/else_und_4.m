disp('Dieses Programm berechnet die Summe der Zahlen von 1 bis n');
n=input('Bitte n eingeben:');

if n==floor(n) & n>1
    summe=0;
    for i=1:n
        summe = summe+i;
    end

    disp('Ergebnis'),disp(summe);
else
    disp('Die Eingabe ist unzulässig');
end