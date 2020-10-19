% Aufgabe 3.5 Korrelationsfolgen:
clear;

xa = [1 2 1 0 1];
ya = [0 1 0 0 0];

disp('a)');
korrelation(xa, ya);

xc = [1, 1,-1,-1,-1, 1];
yc = [1, 1, 1,-1,-1, 1,-1];
disp('c)');
korrelation(xc, yc);


function korr = korrelation(x, y)

    N = length(x);
    x = [zeros(1, N), x];
    y = [zeros(1, N), y];

    r(1:length(x)) = 0;

    for m=-N+1:N-1
        for n=N+1:length(x)
            try
                r(m+N) = r(m+N) + x(n)*y(n-m);
            catch
            end
        end
    end

    i=1;
    while r(i) == 0
        i = i+1;
    end

    j=length(r);
    while r(j) == 0
        j = j-1;
    end
    
    korr = r(i:j);
    
    disp('r(n)='), disp(korr);
    disp('mit n='), disp([-N+i -N+i+1 -N+i+2]);
end



