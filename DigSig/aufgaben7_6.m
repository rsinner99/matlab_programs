% Aufgaben 7.6 DigSig

% a) y = [2 2 -1 -3]


clear variables;

x = [ 2 4 6 5 2];

% b) Lösung:
y(1:(length(x)-1)) = 0;

for n = 1 : length(x)-1
    y(n) = x(n+1) - x(n);
end

disp(y)