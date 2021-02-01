function y = Exponentialverteilung(mu, x)
    lambda = 1/mu;
    y = 1-exp(-lambda*x);
end