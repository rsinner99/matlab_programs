clc;
% input
m = 896;
x0=598;
index_von_x=17;
%-----------------

[a,c] = Knuth(m)

x = zeros(1,15);
x(1)=x0;
for i=2:index_von_x+1
    x(i) = mod((a*x(i-1)+c), m);
end
x_am_index = x(index_von_x+1)