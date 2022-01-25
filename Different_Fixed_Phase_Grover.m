% =========================================================================
% This matlab program is used to provide data for Figs.(5-8) in the manuscript
% =========================================================================
clear all;close all;clc;
N=2^8;
Phi1 = -4+0.01:0.01:-2-0.01;
Phi2 = -2+0.01:0.01: 0-0.01;
Phi3 =  0+0.01:0.01: 2-0.01;
Phi4 =  2+0.01:0.01: 4-0.01;
Phi5 =  4+0.01:0.01: 6-0.01;
Phi = [Phi1,Phi2,Phi3,Phi4,Phi5];
for k = 1:1:length(Phi)
    for i = 1:1:N
        for j = 1:1:N
            [P(i,j,k),J(i,j,k)] = Flexible_Fixed_Phase_Grover(Phi(k),N,i,j);
        end
        disp(['[ ',num2str(k),' ',num2str(i),' ]']);
    end
end
save Probability_Iteration N Phi P J
