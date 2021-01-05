function r = Bin(k,n,p)
    r = zeros(k,1);
    for i=1:k
        for j=1:n
            if rand()<p
                r(i) = r(i)+1;
            end
        end
    end
end