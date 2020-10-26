function B = MatB(m,n)
    B = zeros(m,n);
    for i=1:m
        for j=1:n
            if i <= j
                B(i,j) = 2*i+3*j;
            else
                B(i,j) = i-j;
            end
        end
    end
end