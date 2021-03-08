function [var_low,var_high] = KonfidenzVar(n, sigma, gamma, f)   
    c1 = chi2inv((1-gamma)/2, f)
    c2 = chi2inv((1+gamma)/2, f)
    var_low = (n-1)*sigma^2/c2;
    var_high = (n-1)*sigma^2/c1;
end