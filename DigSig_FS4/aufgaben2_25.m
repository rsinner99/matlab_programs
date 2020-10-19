% Summe von i=1 bis 7: xi^2
% oder 36 * 7
% oder Summe von i=1 bis 7: 6^2

x = ones(1, 7) * 6;
resultat = 0;
for n = 1: length(x)
    resultat = resultat + x(n)*x(n);
end

resultat