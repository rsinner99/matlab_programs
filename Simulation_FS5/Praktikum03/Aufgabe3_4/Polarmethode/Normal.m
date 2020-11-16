function x = Normal(k,m,s)
    x = zeros(k,2);
    for i=1:k
        while 1
            z = (1+1)*rand(2,1)-1;
            r = z(1)^2 + z(2)^2;
            if r<=1&&r~=0
                break;
            end
        end
        x(i,1) = s * (z(1)/sqrt(r)*sqrt(-2*log(r))) + m;
        x(i,2) = s * (z(2)/sqrt(r)*sqrt(-2*log(r))) + m;
    end
    
end