% langsam
for i=1:1000
    x1(i)=sin(i/pi);
end


%schneller
n=1000;
x2=zeros(1,n);
for i=1:n
    x2(i)=sin(i/pi);
end


%noch schneller
i=1:1000;
x3=sin(i/pi);