function y = poisson(lambda, x) % start als Grenze
    sum = 0;
    for i=0:floor(x)
        sum = sum + (lambda^i)/factorial(i);
    end
    y = exp(-lambda)*sum;
end