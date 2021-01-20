clc;
% input
Start = [
    0,0,1,0,0,0,1;
    1,1,0,0,1,1,1;
    1,1,0,1,1,1,0;
    1,0,0,0,1,1,0;
    1,1,1,1,1,1,0;
    1,1,0,0,0,1,1;
    ];
%-------------------------

gen1 = GameOfLife(Start);

gen5 = Start;

for i=1:5
    gen5 = GameOfLife(gen5);
end
% zur Kontrolle
anz_spalte_2_start = sum(Start(:,2))
anz_letzte_zeile_start = sum(Start(size(Start,1),:))
anz_gesamt_start = sum(Start,'all')
%--------------------------------

anz_spalte_2_gen_1 = sum(gen1(:,2))
anz_spalte_2_gen_5 = sum(gen5(:,2))
anz_letzte_zeile_gen_1 = sum(gen1(size(gen1,1),:))
anz_letzte_zeile_gen_5 = sum(gen5(size(gen5,1),:))
anz_gesamt_gen_1 = sum(gen1,'all')
anz_gesamt_gen_5 = sum(gen5,'all')