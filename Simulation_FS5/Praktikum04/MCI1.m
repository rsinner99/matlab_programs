clc;
f=@(x) 1/sqrt(2*pi)*exp(-0.5*x^2); %Formel fuer Normalverteilung mit mu=0 und rho=1
n = 100000;
stelle = 1;
a = -4;
b = 4;
c = 0.5;
in = [];
out = [];
for i=1:n
    x = a+(b-a)*rand();
    y = c*rand();
    if all(y<=f(x) & x<=stelle)
        in(1, end+1) = x;
        in(2, end) = y;
    else
        out(1, end+1) = x;
        out(2, end) = y;
    end
end

m = size(in);
m = m(2)
result = m*c*(b-a)/n

plot(in(1,:), in(2,:), 'g.', 'MarkerSize', 2)
hold on
plot(out(1,:), out(2,:), 'r.', 'MarkerSize', 2)