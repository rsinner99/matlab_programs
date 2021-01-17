clc;
format long

anz_rot = 10; %Anzahl rot
anz_gruen = 5; %Anzahl gruen
anz_blau = 16; %Anzahl blau

summe = anz_rot+anz_gruen+anz_blau;

p1 = (anz_rot*anz_gruen*anz_blau)/(summe*(summe-1)*(summe-2))*6 *100

p2 = (anz_rot*anz_gruen*anz_blau)/(summe^3)*6 *100

p3 = (anz_blau*(anz_blau-1)*(anz_blau-2)) + (anz_blau*(anz_blau-1)*anz_rot)*3;
p3 = p3 + (anz_blau*(anz_blau-1)*anz_gruen)*3;
p3 = p3/(summe*(summe-1)*(summe-2)) *100

p4 = (anz_blau/summe)^3 + (anz_blau^2*anz_rot/summe^3)*3 + (anz_blau^2*anz_gruen/summe^3)*3;
p4 = p4 *100