clear;
f=@(x) (2-x)*sin(x^2/2)+2;
n = 100000;
a = -1;
b = 4;
sum = 0;

for i=1:n
    x = a+(b-a)*rand();
    sum = sum+f(x);
end

result = sum*(b-a)/n