% =========================================================================
% This is the program to realize the ordinary Grover's algorithm
% =========================================================================
function [P,J] = Grover(N,m,t)
    % m is the estimated number of marked states, and
    % t is the real number of marked states
    close all;
    S_ini = sqrt(1/N)*ones(N,1);
    Tao = sqrt(1/t)*[ones(t,1);zeros(N-t,1)];
    U = eye(N)-2*Tao*Tao';
    V = 2*S_ini*S_ini'-eye(N);
    beta = asin(sqrt(m/N));
    J = floor((pi/2-beta)/2/beta);
    if (pi/2-beta)/2/beta-J>0.5
        J = J+1;
    end
    for k = 1:J
        S_ini = U*S_ini;
        S_ini = V*S_ini;
    end
    P = sum((S_ini(1:t,1)).^2);
    P = gather(P);
    J = gather(J);
end
