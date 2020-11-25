clear;
Start = [
    0,0,0,0,0,0,0;
    0,0,1,0,0,1,1;
    1,0,1,0,1,0,1;
    0,0,1,1,1,0,0;
    1,1,1,0,0,0,1;
    0,0,0,0,1,0,0;
    ];

gen1 = GameOfLife(Start);

gen5 = Start;

for i=1:5
    gen5 = GameOfLife(gen5);
end