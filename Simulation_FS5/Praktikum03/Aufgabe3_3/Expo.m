function x = Expo(k,l)
    x = zeros(k,1);
    for i=1:k
        x(i) = -log(1-rand)/l;
    end
end