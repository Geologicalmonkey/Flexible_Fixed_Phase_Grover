% =========================================================================
% This matlab program is used to provide data for Table 1 and Figs.(9,10) in the manuscript
% =========================================================================
clear all;close all;clc;
N = 2^8; Phi = 0.001:0.001:1.000;
for i = 1:N
    for j = 1:length(Phi)
        [F_P(j,i),F_I(j,i)] = Flexible_Fixed_Phase_Grover(Phi(j),N,i,i);
    end
    [G_P(i),G_I(i)] = Grover(N,i,i);
    i
end
save G_P__F_P G_P F_P G_I F_I Phi N
