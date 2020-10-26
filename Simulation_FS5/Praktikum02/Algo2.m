function Algo2(v)
    v = v(:);
    for i=1:size(v)-1
        for j=i+1:size(v)
            if v(i) == v(j)
                fprintf('Die %d-te und %d-te Komponente von V sind gleich.\n',i, j);
            end
        end
    end
end