function y = lnc(i, j, A)
    size_A = size(A);
    y = 0;
    
    if i>1
        y = y + A(i-1, j);
    end
    if j>1
        y = y + A(i, j-1);
    end
    if i>1&&j>1
        y = y + A(i-1, j-1);
    end
    if i<size_A(1)
        y = y + A(i+1, j);
    end
    if j<size_A(2)
        y = y + A(i, j+1);
    end
    if i<size_A(1)&&j<size_A(2)
        y = y + A(i+1, j+1);
    end
    if i<size_A(1)&&j>1
        y = y + A(i+1, j-1);
    end
    if i>1&&j<size_A(2)
        y = y + A(i-1, j+1);
    end
end