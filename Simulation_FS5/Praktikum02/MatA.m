function A = MatA(m,n)
    A = zeros(m,n);
    for i=1:m
        for j=1:n
            A(i,j) = (-1)^(i+j)*(2*i+3*j);
        end
    end
end