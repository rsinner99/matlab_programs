clc;
format long

anz_rot = 11; %Anzahl rot
anz_gruen = 8; %Anzahl gruen
anz_blau = 11; %Anzahl blau

summe = anz_rot+anz_gruen+anz_blau;

p1 = (anz_rot/summe)* ((anz_rot-1)/(summe-1)) * ((anz_rot-2)/(summe-2)) *100

p2 = (anz_rot/summe)^3 * 100

p3 = (anz_rot/summe)* ((anz_rot-1)/(summe-1)) * ((anz_rot-2)/(summe-2));
p3 = p3 + (anz_gruen/summe)* ((anz_gruen-1)/(summe-1)) * ((anz_gruen-2)/(summe-2));
p3 = p3 + (anz_blau/summe)* ((anz_blau-1)/(summe-1)) * ((anz_blau-2)/(summe-2));
p3 = p3*100

p4 = (anz_rot/summe)^3 + (anz_gruen/summe)^3 + (anz_blau/summe)^3;
p4 = p4*100