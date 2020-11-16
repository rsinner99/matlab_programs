function x = Normal(k,m,s)
    n = 30;
    x = zeros(k,1);
    for i=1:k
        z = rand(n,1);
        for j=1:n
            x(i) = x(i) + z(j);
        end
        x(i) = (x(i)-n*m)/(s*sqrt(n));
        x(i) = s * x(i) + m;
    end
end