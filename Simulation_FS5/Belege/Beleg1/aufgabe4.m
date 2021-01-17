clc;

format long

ps1 = 0.4; %P(S1) eintragen
ps2 = 0.3; %P(S2) eintragen
ps3 = 0.9; % P(S3) eintragen

ips1 = 1-ps1;
ips2 = 1-ps2;
ips3 = 1-ps3;

pa = ps1*ps2*ps3

pb = ips1*ps2*ips3

pc = ps1*ips2*ips3 + ips1*ps2*ips3 + ips1*ips2*ps3 + ips1*ips2*ips3

pd = ps1*ps2*ips3 + ps1*ips2*ps3 + ips1*ps2*ps3