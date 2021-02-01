function i = minposindex(v)
    i=1;
    for j=1:length(v)
        if v(j)>0
            min = v(j);
            break;
        end
    end
    for k=1:length(v)
        if all(v(k)>0 & v(k)<=min)
            min = v(k);
            i = k;
        end
    end
end