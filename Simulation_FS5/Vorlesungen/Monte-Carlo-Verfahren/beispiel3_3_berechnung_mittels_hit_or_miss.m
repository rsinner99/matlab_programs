clear;
f=@(x) (2-x)*sin(x^2/2)+2;
n = 100000;
a = -1;
b = 4;
c = 4;
in = [];
out = [];
for i=1:n
    x = 5*rand()-1;
    y = 4*rand();
    if y<=f(x)
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