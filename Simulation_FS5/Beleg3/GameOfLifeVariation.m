function B = GameOfLifeVariation(A)
    size_A = size(A);
    B = zeros(size_A);
    for i=1:size_A(1)
        for j=1:size_A(2)
            nb = lnc(i,j,A);
            
            if (A(i,j)==0&&nb==3)||(A(i,j)==0&&nb==2)
                B(i,j)=1;
            end
            if A(i,j)==1
                if nb==2||nb==3||nb==4
                    B(i,j)=1;
                else 
                    B(i,j)=0;
                end
            end
        end
    end
    spy(B, 's', 20)
end