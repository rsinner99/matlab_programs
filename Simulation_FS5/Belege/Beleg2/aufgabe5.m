clearvars
format long

% input 
n =6;
p=5/7;

p_kleiner = 2; %P(X<Wert) --> wenn <= einfach noch 0.1 addieren
p_groesser = 2; %P(X>Wert) --> wenn >= einfach noch 0.1 abziehen

%--------------------
xi = 0:n;
pi = zeros(1,n+1);
nx = @(n,x) factorial(n)/(factorial(x)*factorial(n-x));

for i=0:n
    pi(i+1) = nx(n,i)*p^i*(1-p)^(n-i);
end

p_kleiner_wert = 0;
p_groesser_wert = 0;

for i=1:length(pi)
    if xi(i)<p_kleiner
        p_kleiner_wert = p_kleiner_wert + pi(i);
    end
    if xi(i)>p_groesser
        p_groesser_wert = p_groesser_wert + pi(i);
    end
end
p_kleiner_wert = p_kleiner_wert*100
p_groesser_wert = p_groesser_wert*100
mu = n*p
var = n*p*(1-p)