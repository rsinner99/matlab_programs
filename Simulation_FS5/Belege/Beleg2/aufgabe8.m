clearvars
format long

%input
mu = 5.25;
std = 0.90;

p1_wert=5.62;
p2_wert=5.76;
p3_wert_1=5.11;
p3_wert_2=5.67;
p_fuer_k=0.80;

%----------------------------------
p1 = normcdf(p1_wert,mu,std)*100
p2 = (1-normcdf(p2_wert,mu,std))*100
p3 = (normcdf(p3_wert_2,mu,std)-normcdf(p3_wert_1,mu,std))*100
k = norminv((1+p_fuer_k)/2)*std