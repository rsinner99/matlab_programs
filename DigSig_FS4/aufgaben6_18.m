% DSV Aufgabe 6.18
clear;

% y[n] = b0*x[n] + b1*x[n-1] + b2*x[n-2]
name = "Uebertragungsfunktion";
fig_g = figure("Name", name);

b = [1 2 1];

N=20;
gz = zeros(1, 2*N);


for i=1:2*N
    for j=1:length(b)
        gz(i) = gz(i) + b(j)*(i-N-1)^(-j+1);
    end
end
x = linspace(-N, N, 2*N);
plot(x, gz), grid on;

ylabel('{\itG}({\itz})', 'FontName', 'Times New Roman');
xlabel('{\itz}', 'FontName', 'Times New Roman');
title(name);