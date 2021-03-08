function [a, c] = Knuth(m)
    p=factor(m);
    %
    al = [];
    a=floor(sqrt(m));
    i=0;
    for i=1:m-floor(sqrt(m))-1
        b=a;
        if mod(m,4)==0
            if mod(a-1,4)~=0
                b=a+1;
            end
        end
        if length(p)>1
            for j=1:length(p)
                if mod(a-1,p(j))~=0
                    b=a+1;
                end
            end
        end
        if b==a
            al(end+1) = a;
            i = i+1;
            if i>2
                break;
            else
                a=a+1;
            end
        else
            a=a+1;
        end
    end
    %
    c=floor(m/5);
    for i=1:m-floor(m/5)-1
        if gcd(c,m)==1
            break;
        else
            c=c+1;
        end
    end
    al
end