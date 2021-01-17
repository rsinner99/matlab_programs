m = 2250;
a = 61;
c = 451;

x = zeros(1,15);
x(1)=806;
for i=2:15
    x(i) = mod((a*x(i-1)+c), m);
end