clear;
Start = [
    0,0,1,0,0,0,0;
    0,0,1,1,0,0,1;
    1,0,1,0,0,1,0;
    1,0,0,1,1,0,1;
    1,0,0,0,1,0,1;
    ];

gen1 = GameOfLifeVariation(Start);

gen13 = Start;

for i=1:13
    gen13 = GameOfLifeVariation(gen13);
end