clearvars
format long

% input
lambda = 5; % Anzahl der Grossbraende

%---------------------------------------------
p_kleiner_gleich_1 = 0;
p_groesser_4 = 0;
for i=0:1
    p_kleiner_gleich_1 = p_kleiner_gleich_1 + lambda^i/factorial(i);
end
for i=0:4
    p_groesser_4 = p_groesser_4 + lambda^i/factorial(i);
end
p_kleiner_gleich_1 = exp(-1*lambda)*p_kleiner_gleich_1
p_groesser_4 = 1 - (exp(-1*lambda)*p_groesser_4)