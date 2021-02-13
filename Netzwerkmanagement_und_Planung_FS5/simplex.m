function simplex(A, sum_x)
    format rational
    while any(A(end,:)<0)
        [i,j] = getPivot(A, sum_x);
        fprintf('Zeile: %d , Spalte: %d', i,j)
        div = A(i,j);
        A(i,:) = A(i,:)./div;
        for k=1:size(A,1)
            if k~=i
                div = A(k,j);
                A(k,:) = A(k,:)-div*A(i,:);
            end
        end
        A
    end
end