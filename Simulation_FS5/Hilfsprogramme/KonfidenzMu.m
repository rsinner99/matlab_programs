function [mu_low, mu_high] = KonfidenzMu(n, mu, sigma, gamma, f)    
    c = tinv((1+gamma)/2, f)
    mu_low = mu - c*sigma/sqrt(n);
    mu_high = mu + c*sigma/sqrt(n);
end