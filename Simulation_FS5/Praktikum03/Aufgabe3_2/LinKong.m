function z = LinKong(k,m,s)
    z = zeros(k,1);
    x = zeros(k);
    x(1) = s;
    [a,c] = Knuth(m);
    for i=2:k+1
        x(i) = mod((a*x(i-1)+c), m);
        z(i-1) = x(i)/m;
    end
end