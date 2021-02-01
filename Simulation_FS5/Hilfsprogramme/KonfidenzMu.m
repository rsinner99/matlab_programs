function [mu_low, mu_high] = KonfidenzMu(n, xi, gamma, f)
    mu = mittelwert(xi)
    var = varianz(xi)
    sigma = sqrt(var)
    
    c = tinv((1+gamma)/2, f)
    mu_low = mu - c*sigma/sqrt(n);
    mu_high = mu + c*sigma/sqrt(n);
end