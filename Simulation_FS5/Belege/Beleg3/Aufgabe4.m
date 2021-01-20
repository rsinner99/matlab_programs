clear;
format long;
% input
m = 2268;
a = 85;
c = 457;
start = 231;
mittelwert = 18;
stdabw = 1.8;
grenze_unten = 16;
grenze_oben = 18;
%---------------------------

x = zeros(1, 500);
u = zeros(1, 500);
u_ = zeros(1, 500);

%Punkt 1
x(1) = mod((a*start+c),m);
for i=2:500
    x(i) = mod((a*x(i-1)+c), m);
end

%Punkt 2
for i=1:500
    u(i) = x(i)/m;
end

%Punkt 3
for i=1:500
    u_(i) = 2*u(i)-1;
end
count = 0;
z = [];
%Punkt 4
for i=1:499
    r = u_(i)^2 + u_(i+1)^2;
    if r<=1&&r~=0
        %Punkt 5
        count = count +2;
        z(end+1) = u_(i)*sqrt((-2*log(r))/r);
        z(end+1) = u_(i+1)*sqrt((-2*log(r))/r);
    end
end


z_ = zeros(1, length(z));
%Punkt 6
for i=2:length(z)
    z_(i-1) = stdabw*z(i) + mittelwert;
end


% Summe Pseudozufallszahlen
anzahl_pseudozahlen = length(z_)+2

% Näherungswert
wahrsch = 0;
for i=1:length(z_)
    if grenze_unten<=z_(i)&&z_(i)<=grenze_oben
        wahrsch = wahrsch+1;
    end
end
naeherung = wahrsch/length(z_)

exakt = normcdf(grenze_oben,mittelwert,stdabw)-normcdf(grenze_unten,mittelwert,stdabw)
        
        
        
