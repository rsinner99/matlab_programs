test = 0;
while test == 0
    n=input('Bitte Zahl eingeben:');

    if n==floor(n)
        summe=0;
        for i=1:n
            summe= summe+i;
        end

        disp('Ergebnis:'),disp(summe)
        test = 1;
    else 
        disp('Unzulässige Eingabe!')
    end
end
