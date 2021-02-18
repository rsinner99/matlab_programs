function get_mu_var_of_f(f, x1, x2)
    syms x
    format rational
    f = str2sym(f);
    Fx = int(f*x);
    Fx = matlabFunction(Fx);
    mu = Fx(x2)-Fx(x1);
    fprintf('mu = ')
    disp(mu)
    Fx_h2 = int(f*x^2);
    Fx_h2 = matlabFunction(Fx_h2);
    var = Fx_h2(x2) - Fx_h2(x1) - mu^2;
    fprintf('var = ')
    disp(var)
end