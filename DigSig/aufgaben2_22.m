x = [3,0,5,4,2,1];
y = [9,2,3,0,5,4,1];

% 1. Moeglichkeit
if length(x) < length(y)
    N = length(x);
else 
    N = length(y);
end

result = zeros(1,N);
for i = 1:N
    result(i) = x(i) * y(i);
end

disp("Ergebnis 1:")
disp(result)


% 2. Moeglichkeit
while length(x) ~= length(y)
    if length(x) < length(y)
        x(length(x)+1) = 0;
    else
        y(length(y)+1) = 0;
    end
end

disp("Ergebnis 2:")
disp(x .* y)