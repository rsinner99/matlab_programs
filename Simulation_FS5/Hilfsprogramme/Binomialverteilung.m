function y = Binomialverteilung(n, x, p, start) %start als Startwert
     y = 0;
     for k=start:floor(x)
         y = y + (nueberx(n,k) * p^k * (1-p)^(n-k));
     end
end