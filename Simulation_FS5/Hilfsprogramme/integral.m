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
    disp(wert)
end