clc;
d=100;
s=50;
distList=[];
hold on
for i=1:d
    x = 0;
    slist = [0];
    for j=1:s
        r = rand();
        if r<0.5
            x = x-1;
        else
            x = x+1;
        end
        slist = [slist x];
    end
    plot(slist(:), '-x')
    distList = [distList slist(s)^2];
end

rms_d = sqrt(sum(distList)/d)
sqrt_s = sqrt(s)