function y = varianz(v)
    mw = mittelwert(v);
    n = length(v);
    y = 0;
    for i=1:n
        y = y + ((v(i)-mw)^2);
    end
    y = y/(n-1);
end