% Aufgabe 1
disp('Aufgabe 1:')
v = 0:4:100;

disp('a)')
disp(v(1:15))
disp('b)')
disp(v(1:3:length(v)))


% Aufgabe 2
disp('Aufgabe 2:')
disp('a)')
A = [4, 3, -10; 1, -2, 3; 5, -3, 2];
av = [5; 4; 13];
xa = A\av;
disp(xa)

disp('b)')
B = [4, 3, -10; 1, -2, 3; 5, -3, 1];
bv = [5; 4; 13];
xb = B\bv;
disp(xb)

disp('c)')
C = [4, 3, -10; 1, -2, 3; 5, -3, 1];
cv = [5; 4; 12];
xc = C\cv;
disp(xc)


% Aufgabe 3
disp('Aufgabe 3:')
u = [-1; 0; 2];
v = [-5; 9; 1];
% Skalarprodukt:
sp = dot(u,v);
% Betrag der Vektoren mit norm(u) bzw. norm(v)
alpha = acos( sp / (norm(u) * norm(v)));
disp('Winkel: ')
disp(alpha)


% Aufgabe 4
disp('Aufgabe 4:')
M = rand(4, 4);
disp('M')
disp(M)
disp('size(M)')
disp(size(M))
disp('M(1,:)')
disp(M(1,:))
disp('M(:,1)')
disp(M(:,1))
disp('max(M)')
disp(max(M))
disp('sum(M)')
disp(sum(M))
disp('diag(M)')
disp(diag(M))
