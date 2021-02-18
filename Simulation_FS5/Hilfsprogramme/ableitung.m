function ableitung(F)
    syms x
    format rational
    F = str2sym(F);
    f = diff(F, x);
    fprintf('f(x) = ')
    disp(f)
end