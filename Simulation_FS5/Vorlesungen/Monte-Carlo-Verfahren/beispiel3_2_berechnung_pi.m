clear;
n = 100000;
in = [];
out = [];
for i=1:n
    x = rand();
    y = rand();
    if (x^2+y^2)<=1
        in(1, end+1) = x;
        in(2, end) = y;
    else
        out(1, end+1) = x;
        out(2, end) = y;
    end
end

m = size(in);
m = m(2)

result = 4*m/n

plot(in(1,:), in(2,:), 'g.', 'MarkerSize', 2)
hold on
plot(out(1,:), out(2,:), 'r.', 'MarkerSize', 2)