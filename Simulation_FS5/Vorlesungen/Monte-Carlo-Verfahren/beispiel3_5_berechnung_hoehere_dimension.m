clear;
f=@(x,y) x/y;
n = 100000;
in = [];
out = [];
N = 0;
sum = 0;
while size(in,2)<n
    N = N+1;
    x = rand();
    y = rand();
    %if y^2<=x && x<=sqrt(y)
    if all(y^2<=x & x<=sqrt(y))
        in(1, end+1) = x;
        in(2, end) = y;
        sum = sum+f(x,y);
    else
        out(1, end+1) = x;
        out(2, end) = y;
    end
end

N
result = 1/N*sum

plot(in(1,:), in(2,:), 'g.', 'MarkerSize', 2)
hold on
plot(out(1,:), out(2,:), 'r.', 'MarkerSize', 2)