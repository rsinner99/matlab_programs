% Schreiben Sie einMatlab-Programm, welches die Elemente der Matrix M=zeros( 3,4)
% zeilenweise um Eins und spaltenweise um Zwei erhöht

clear;

M = zeros(3,4);

sizeM = size(M);

for i = 1:sizeM(1)
    for j = 1:sizeM(2)
        M(i:sizeM(1),j:sizeM(2)) = M(i,j) + 1;
    end
end

disp(M)