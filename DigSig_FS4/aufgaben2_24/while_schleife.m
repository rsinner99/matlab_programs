disp('Dieses Programm berechnet die Summe der Zahlen von 1 bis n');
ok=0;
a=1;
while ok==0
    n=input('Bitte n eingeben:');

    if n==floor(n) & n>1
        summe=0;
        for i=1:n
            summe = summe+i;
        end

        disp('Ergebnis'),disp(summe);
        ok=1;
    else
        disp('Die Eingabe ist unzulässig');
    end
    
end
