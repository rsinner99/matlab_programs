% Polarmethode nach Aufgabe 3.4
% erzeugt k-elem. Vektor normalverteilter Zufallszahlen
function v=Normal(k,m,s)
    v=zeros(k,1);
    l=0; % Anzahl der erzeugten normalvert. Pseudozufallszahlen
    while l<k
        z1 = 2*rand()-1;
        z2 = 2*rand()-1;
        r = z1^2+z2^2;
        if (r<=1) & (r~=0)
            x = z1*sqrt(-2*log(r)/r); % std-normalverteilt
            l = l+1;
            v(l)=s*x+m; %normalverteilte Zufallszahl
        end
    end
end