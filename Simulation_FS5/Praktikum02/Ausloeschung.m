f = @(x) (1+x-exp(x))./(x.^2);
k = [1 3 5 7 9 11];
xk = 10.^(-k);
f(xk)

fplot(f, [-5, 2])