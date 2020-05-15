% Aufgabe 2.5
title=('Modul Digitale Signalverarbeitung: Aufgabe 2.5');
xlabel('n');
ylabel('x(n), y(n), z(n)');


i=0:20;

% Aufgabenteil a)
N=16;
n1=1:(N/2+1);
x(n1)= 3+2*sin(2*pi*(n1/N));

figure(1)
plot(x)
title=('Modul Digitale Signalverarbeitung: Aufgabe 2.5a)');
xlabel('n');
ylabel('x(n)');
        
% Aufgabenteil b)
a=0.4;
N=10;
n2=1:N+1;
y(n2)= exp(-a*n2);

figure(2)
plot(y)
title=('Modul Digitale Signalverarbeitung: Aufgabe 2.5b)');
xlabel('n');
ylabel('y(n)');
     
% Aufgabenteil c)
k= 6;
for n3= 1:(2*k+1)
    if (n3-k)==0;
        z(n3)= 0.5;
    else
        z(n3)= 0.0;
    end
end

figure(3)
plot(z)
title=('Modul Digitale Signalverarbeitung: Aufgabe 2.5c)');
xlabel('n');
ylabel('z(n)'); 

    
