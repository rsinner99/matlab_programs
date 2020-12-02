function q=lnc(i,j,A)
    m=size(A,1);    %Zeilenzahl von A
    n=size(A,2);    %Spaltenzahl von B
    q=0-A(i,j);     % Feld von i,j wird abgezogen, damit bei Berechnung keine Fehler
    for ii=max(1,i-1):min(m,i+1)
        for jj=max(1,j-1):min(n,j+1)
            q=q+A(ii,jj);
        end
    end
end