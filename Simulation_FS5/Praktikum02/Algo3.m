function [m1,m2] = Algo3(A)
    m1 = abs(A(1,1));
    m2 = abs(A(1,1));
    size_A = size(A);
    for i=1:size_A(1)
        for j=1:size_A(1)
            if m1 < abs(A(i,j))
                m1 = abs(A(i,j));
            end
            if m2 > abs(A(i,j))
                m2 = abs(A(i,j));
            end
        end
    end
end