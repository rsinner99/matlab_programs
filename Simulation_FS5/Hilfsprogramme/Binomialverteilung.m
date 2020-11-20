function y = Binomialverteilung(n, x, p)
     y = 0;
     for k=1:floor(x)
         n_uber_x = factorial(n)/(factorial(k)*factorial(n-k));
         y = y + (n_uber_x * p^k * (1-p)^(n-k));
     end
end