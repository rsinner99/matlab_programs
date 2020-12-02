clc;
A=round(rand(10,15))
Aneu=A;
m=size(A,1);
n=size(A,2);
itsmax=1;
for its=1:itsmax
    for i=1:m
        for j=1:n
            q=lnc(i,j,A);
            if A(i,j)==0
                if q==3
                    Aneu(i,j)=1;
                end
            else
                if (q<2)|(q>3)
                    Aneu(i,j)=0;
                end
            end
        end
    end
end
Aneu