function J = Flexible_Fixed_Phase_Iteration_Fun(Phi,N)
    close all;
    Phi = Phi*pi;
    J = zeros(1,length(N));
    J = abs(floor(pi./(4*asin(sin(Phi/2)*sqrt(1./N)))));
end
