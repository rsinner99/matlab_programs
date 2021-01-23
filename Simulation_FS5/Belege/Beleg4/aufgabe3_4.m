clc;
format long

% input
% vorher runden!!!
A = [
    [1,0,0,1,1,1,1];
    [1,1,1,0,1,1,1];
    [1,1,1,0,1,1,1];
    [0,1,1,1,0,1,1];
    [1,0,1,1,1,1,1];
    [1,1,1,0,1,1,1];
];
alpha = 0.05;

% -------------------------------------------------
A = transpose(A);
x = reshape(A,1,[]);
n = length(x);
runs = 1;
for i=1:length(x)-1
    tmp = x(i);
    if tmp ~= x(i+1)
        runs = runs+1;
    end
end

runs
mu_r = (n+1)/2
sig_r = (n-1)/4

phi_c = 1-(alpha/2);
c = norminv(phi_c)
u_dach = (runs-mu_r)/sqrt(sig_r)

disp('gleichverteilt auf (0,1)?')
if u_dach>-c & u_dach<c
    disp('Ja')
else
    disp('Nein')
end