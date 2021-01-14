function s=MillerRabin(n,r)
    s = "";
    alist=[]; %liste der bereits gewählten Basen a
    m=n-1;
    k=0;
    while mod(m,2)==0
        m=m/2;
        k=k+1;
    end
    for i=1:r
        while 1
            a=randi([2 n-2]); %random integer
            if ~ismember(a, alist)
                break
            end
        end
        alist = [alist a];
        if gcd(a,n)>1 %greatest common divisor
            s = "zusammengesetzt";
            return
        else
            %bestimme q = a^m mod n
            q=1;
            for ii=1:m
                q=mod(a*q,n);
            end
            if (q==1) | (q==n-1)
                s="wahrscheinlich prim";
                continue  %waehle neues a, um weiter zu testen
            else
                for j=1:k-1
                    q=mod(q^2,n);
                    if q==n-1
                        s="wahrscheinlich prim";
                        break;
                    end
                end
                if s=="wahrscheinlich prim"
                    continue
                else
                    s="zusammengesetzt";
                end
            end
        end
    end
    s="wahrscheinlich prim";
end
