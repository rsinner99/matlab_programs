function x = Bin(k,n,p)
    x = zeros(k,1);
    for i=1:k
        z = rand(n,1);
        for j=1:n
            if z(j)<p
                x(i) = x(i)+1;
            end
        end
    end
end