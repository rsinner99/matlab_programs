function [i,j] = getPivot(A, sum_x)
    spalte = 0;
    zeilen = [];
    for k=1:sum_x
        if abs(A(end,k))>spalte
            spalte = abs(A(end,k));
            j = k;
        end
    end
    
    for m=1:size(A,1)-1
        zeilen(m) = A(m,end)/A(m,j);
    end
    i = minposindex(zeilen);
end
