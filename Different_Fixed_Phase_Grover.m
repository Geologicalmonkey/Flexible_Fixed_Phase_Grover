% =========================================================================
% This matlab program is used to provide data for Figs.(5-8) in the manuscript
% =========================================================================
clear all; close all; clc;

N = 4352;
Phi1 = -4+0.025:0.025:-2-0.025;
Phi2 = -2+0.025:0.025: 0-0.025;
Phi3 =  0+0.025:0.025: 2-0.025;
Phi4 =  2+0.025:0.025: 4-0.025;
Phi5 =  4+0.025:0.025: 6-0.025;
Phi  =  gpuArray([Phi1,Phi2,Phi3,Phi4,Phi5]);
P    =  zeros(N,length(Phi));
J    =  zeros(N,length(Phi));

for k = 1:1:length(Phi)
    tic
    for i = 1:1:N
        [P(i,k),J(i,k)] = Flexible_Fixed_Phase_Grover(Phi(k),N,i,i);
    end
end

Phi = gather(Phi);
save Probability_Iteration_4352 N Phi P J
