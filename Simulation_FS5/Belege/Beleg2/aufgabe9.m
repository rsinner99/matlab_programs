clearvars
format long

% input
mu = 3; %durchschnittliche Wartezeit in min

mind_min = 5;
max_min = 8;
%--------------------------------------------
lambda = 1/mu;
mind_p = 1-(1-exp(-1*lambda*mind_min))
max_p = 1-exp(-1*lambda*max_min)