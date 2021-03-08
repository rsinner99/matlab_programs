k = 470;
m = 840;
a = 421;
c = 169;
s = 266;
z = zeros(k,1);
x = zeros(k);
x(1) = s;
z(1) = x(1)/m;
for i=2:k+1
    x(i) = mod((a*x(i-1)+c), m);
    z(i) = x(i)/m;
end

d=1; %Zahl der Betrunkenen
s=470; %Zahl der Schritte
distList=[];
hold on
for i=1:d
    x=0;
    y=0;
    slist=[[x y]]; %Schrittliste, Start (0,0)
    for j=1:s
        if z(i)<0.25
            x = x+0;
            y = y+1;
        elseif z(i)<0.5
            x = x+1;
            y = y+0;
        elseif
        phi=2*pi*rand();
        x=x+cos(phi);
        y=y+sin(phi);
        slist=[slist; [x y]];
    end
    plot(slist(:,1),slist(:,2),'-x');
    distList = [distList; [slist(s,1)^2 slist(s,2)^2]];
end

