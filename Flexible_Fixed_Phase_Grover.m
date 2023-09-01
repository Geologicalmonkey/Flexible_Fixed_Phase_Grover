% =========================================================================
% This is the core program of flexible fixed phase quantum search algorithm
% =========================================================================
function [P, J] = Flexible_Fixed_Phase_Grover(Phi,N,m,t)
    % m is the estimated number of marked states, and
    % t is the real number of marked states
    close all;
    Phi = gpuArray(Phi*pi);
    J = abs(floor(pi/(4*asin(sin(Phi/2)*sqrt(m/N)))));
    S_ini = sqrt(1/N)*ones(N,1);
    Tao = sqrt(1/t)*[ones(t,1);zeros(N-t,1)];
    U = eye(N)-(1-exp(i*Phi))*Tao*Tao';
    V = (1-exp(i*Phi))*S_ini*S_ini'-eye(N);
    for k = 1:J
        S_ini = U*S_ini;
        S_ini = V*S_ini;
    end
    P = sum(abs(S_ini(1:t,1)).^2);
    P = gather(P);
    J = gather(J);    
end
