function y = mittelwert(v)
    n = length(v);
    y = 0;
    for i=1:n
        y = y + v(i);
    end
    y = y/n;
end