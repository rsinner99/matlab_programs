function y = Normal(mu, sigma, x)
    u = (x-mu)/sigma;
    y = normcdf(u);
end