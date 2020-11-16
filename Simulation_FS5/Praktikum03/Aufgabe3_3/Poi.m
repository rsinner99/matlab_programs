function x = Poi(k,l)
    x = zeros(k,1);
    for i=1:k
        n = 1;
        z = Expo(1,l);
        while 1
            z_n1 = Expo(1,l);
            if (z<=1)&&(1<(z+z_n1))
                break;
            else
                n = n+1;
                z = z+z_n1;
            end
        end
        x(i)=(exp(-l)*l^n)/factorial(n);
    end
end