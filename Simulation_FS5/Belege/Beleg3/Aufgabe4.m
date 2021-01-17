clear;
format long;
m = 672;
a = 85;
c = 137;
start = 181;
mittelwert = 14;
stdabw = 2.6;
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
count = 1;
z = 0;
%Punkt 4
for i=1:499
    r = u_(i)^2 + u_(i+1)^2;
    if r<=1&&r~=0
        %Punkt 5
        count = count +1;
        z(end+1) = u_(i)*sqrt((-2*log(r))/r);
        z(end+1) = u_(i+1)*sqrt((-2*log(r))/r);
    end
end


z_ = zeros(1, length(z)-1);
%Punkt 6
for i=2:length(z)
    z_(i-1) = stdabw*z(i) + mittelwert;
end


% Summe Pseudozufallszahlen
length(z_)

% Näherungswert
wahrsch = 0;
for i=1:length(z_)
    if 13<=z_(i)&&z_(i)<=16
        wahrsch = wahrsch+1;
    end
end
%wahrsch = wahrsch/length(z_)

        
        
        
