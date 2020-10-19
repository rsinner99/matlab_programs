% DSV Aufgabe 6.17 
clear;

% y[n] = b0*x[n] + b1*x[n-1] + b2*x[n-2]
b = [1 2 1];
a = 1;
g = tf(b, a); % Definition der Übertragungsfunktion

    
nst = zero(g);
pst = pole(g);

pzmap(g);