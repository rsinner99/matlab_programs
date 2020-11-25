function [a,c] = Knuth(m)
    a_list = floor(sqrt(m)):(m-1);
    a_min = 1;
    c_list = floor(m/5):(m-1);
    c_min = 1;
    p = factor(m);
    for i=1:length(p)
        if mod(((a_list(a_min))-1), p(i))>0
            a_min = a_min + 1;
            i = 1;
        elseif mod(m,4)==0
            if mod(((a_list(a_min))-1), 4)>0
                a_min = a_min + 1;
                i = 1;
            end
        end
    end
    while gcd(m, c_list(c_min))~=1
        c_min = c_min+1;
    end
    a = a_list(a_min);
    c = c_list(c_min);
end