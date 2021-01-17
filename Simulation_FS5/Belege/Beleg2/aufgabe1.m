clc;
format long

% inputs
xi = [-2 4 8 19];
pi = [1/2 0 1/8 1/19]; %fuer p2 null eintragen

%---------------------------------------
sum=0;
for i=1:length(pi)
    sum = sum + pi(i);
end
p_2 = 1-sum

pi(2)=p_2;
mu=0;
for i=1:length(xi)
    mu = mu + xi(i)*pi(i);
end
mu
    