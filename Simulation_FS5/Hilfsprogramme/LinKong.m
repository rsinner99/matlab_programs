function z = LinKong(k,m,s)
    z = zeros(k,1);
    x = zeros(k);
    x(1) = s;
    [a,c] = Knuth(m)
    z(1) = x(1)/m;
    for i=2:k+1
        x(i) = mod((a*x(i-1)+c), m);
        z(i) = x(i)/m;
    end
end