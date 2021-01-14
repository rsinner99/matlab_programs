clear;
f=@(x,y) (x-y)/(x^2+y^2);
n = 100000;
a = -2;
b = 2;
in = [];
out = [];
N = 0;
sum = 0;
while size(in,2)<n
    N = N+1;
    x = a+(b-a)*rand();
    y = a+(b-a)*rand();
    %if y^2<=x && x<=sqrt(y)
    if all(1<=(x^2+y^2) & (x^2+y^2)<=4 & x<=y)
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