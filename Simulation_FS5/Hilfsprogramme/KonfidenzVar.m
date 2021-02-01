function [var_low,var_high] = KonfidenzVar(n, xi, gamma, f)
    mu = mittelwert(xi)
    var = varianz(xi)
    sigma = sqrt(var)
    
    c1 = chi2inv((1-gamma)/2, f)
    c2 = chi2inv((1+gamma)/2, f)
    var_low = (n-1)*var/c2;
    var_high = (n-1)*var/c1;
end