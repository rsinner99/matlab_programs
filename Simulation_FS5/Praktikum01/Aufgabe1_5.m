A = [-3, 2, 0, 11, -1;
    1, 8, 5, -5, 6;
    4, 1, 2, -3, 0];

size_A = size(A);

% Aufgabe 1
disp("Aufgabe 1");

a = log10(det(A'*A-5*eye(size(A'*A))));
b = det(inv((0.01*A*A'-eye(size(A*A')))));

disp("1 a)");
disp(a);
disp("1 b)");
disp(b);

% Aufgabe 2
disp("Aufgabe 2");

B = (A*A')^2;

C = zeros(size_A);
for i=1:size_A(1)
    for j=1:size_A(2)
        C(i, j) = sin(A(i, j)^2);
    end
end

D = zeros(size_A);
for i=1:size_A(1)
    for j=1:size_A(2)
        D(i, j) = log(sqrt(abs(A(i,j)))+1);
    end
end

disp("B");
disp(B);
disp("C");
disp(C);
disp("D");
disp(D);