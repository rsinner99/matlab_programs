function integral(f, x1, x2)
    syms x
    format rational
    f = str2sym(f);
    stammfkt = int(f);
    F = matlabFunction(stammfkt);
    wert = F(x2) - F(x1);
    fprintf('Stammfunktion F(x) = ')
    disp(stammfkt)
    fprintf('\n')
    fprintf('Wert des Integrals: ')
    fprintf('F(%d) - F(%d) = %s - %s = %s',x2,x1)
    fprintf('%s',strtrim(rats(F(x2)))) 
    fprintf(' - ')
    fprintf('%s',strtrim(rats(F(x1))))
    fprintf(' = ')
    fprintf('%s\n',strtrim(rats(wert)))
end