function integral_with_const(f, x1, x2, wert)
    syms x
    syms a
    format rational
    f = str2sym(f);
    stammfkt = int(f);
    F = matlabFunction(stammfkt);
    integral_wert = F(a,x2)-F(a,x1);
    const = solve(integral_wert==wert);
    fprintf('Wert der Konstanten a = ')
    disp(const)
    fprintf('Stammfunktion F(x) = ')
    disp(stammfkt)
    fprintf('Wert des Integrals:')
    disp(wert)
end