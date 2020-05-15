% Aufgabe 3.5 Korrelationsfolgen:
clear
xa = [1,2,1,0,1,0,0,0,0];
ya = [0,1,0,0,0,0,0,0,0];

r(1:9)=0;
n=1:5;


for m=-4:4
    if (n-m)>0
        r(m+5) = r(m+5) + xa(n) .* ya(n-m)
    end
end

