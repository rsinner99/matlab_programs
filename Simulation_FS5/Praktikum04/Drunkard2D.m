clc;
d=100; %Zahl der Betrunkenen
s=50; %Zahl der Schritte
distList=[];
hold on
for i=1:d
    x=0;
    y=0;
    slist=[[x y]]; %Schrittliste, Start (0,0)
    for j=1:s
        phi=2*pi*rand();
        x=x+cos(phi);
        y=y+sin(phi);
        slist=[slist; [x y]];
    end
    plot(slist(:,1),slist(:,2),'-x');
    distList = [distList; [slist(s,1)^2 slist(s,2)^2]];
end
hold off

rms_x = sqrt(sum(distList(:,1))/d);
rms_y = sqrt(sum(distList(:,2))/d);
rms_d = sqrt(rms_x^2 + rms_y^2)
sqrt_s = sqrt(s)