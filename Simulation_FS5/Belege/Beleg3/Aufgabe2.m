clc;
% input
Start = [
    1,1,1,0,0,1,1;
    0,0,1,1,1,0,0;
    0,0,1,1,1,1,0;
    0,1,0,0,0,1,0;
    1,1,0,1,1,0,1;
    0,1,1,0,1,1,0;
    ];
%-------------------------

gen1 = GameOfLifeVariation(Start);

gen13 = Start;

for i=1:13
    gen13 = GameOfLifeVariation(gen13);
end

% zur Kontrolle
anz_spalte_2_start = sum(Start(:,2))
anz_letzte_zeile_start = sum(Start(size(Start,1),:))
anz_gesamt_start = sum(Start,'all')
%--------------------------------

anz_spalte_2_gen_1 = sum(gen1(:,2))
anz_spalte_2_gen_13 = sum(gen13(:,2))
anz_letzte_zeile_gen_1 = sum(gen1(size(gen1,1),:))
anz_letzte_zeile_gen_13 = sum(gen13(size(gen13,1),:))
anz_gesamt_gen_1 = sum(gen1,'all')
anz_gesamt_gen_13 = sum(gen13,'all')