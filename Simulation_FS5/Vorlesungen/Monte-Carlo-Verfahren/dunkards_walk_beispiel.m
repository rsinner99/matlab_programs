clear;
d = 1000; % Anz Betrunkene
s = 50; % Schritte
dlist = [];
distlist = [];

for i=1:d
    slist= [0,0];
    x = 0;
    y = 0;
    
    for j=1:s
        alpha = 2*pi*rand();
        dx = cos(alpha);
        dy = sin(alpha);
        x = x+dx;
        y = y+dy;
        slist(1,end+1) = x;
        slist(2,end) = y;
    end
    dlist(:,:,end+1) = slist;
    distlist(end+1) = slist(1,s)^2 + slist(2,s)^2;
end

rms = sqrt(mean(distlist))
sqrt(s)

for k=1:size(dlist,3)
    plot(dlist(1,:,k), dlist(2,:,k), 'MarkerSize', 2)
    hold on
end