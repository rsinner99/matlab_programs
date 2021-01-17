clc;
format long

l = 5; %Laenge
b = 6; % Buchstaben

anz_moeglich = b^l;

p1 = 1;
for i=0:(l-1)
    p1 = p1 * (b-i);
end
p1 = p1/anz_moeglich * 100

p2 = ((b-1)*l)/(b*l) * 100

p3 = (b)/(b^3) * 100

p4 = ((b)/(b^3) - (b)/(b^4)) * 100