% =========================================================================
% This matlab program is used to provide data for Tabs.(2,3) and Figs.(9,10) in the manuscript
% =========================================================================

clear all; close all; clc;

N = gpuArray(12289);
Phi = 0.01:0.01:0.20; 
Phi_Younes = 1.91684; 
Phi_Younes_1 = 1.825; 
Phi_Younes_2 = 0.5;
F_P = zeros(length(Phi),N);
F_I = zeros(length(Phi),N);
F_P_Younes = zeros(1,N);
F_I_Younes = zeros(1,N);
F_P_Younes_1 = zeros(1,N);
F_I_Younes_1 = zeros(1,N);
F_P_Younes_2 = zeros(1,N);
F_I_Younes_2 = zeros(1,N);
G_P = zeros(1,N);
G_I = zeros(1,N);

for j = 1:length(Phi)
    for i = 1:N
        [F_P(j,i),F_I(j,i)] = Flexible_Fixed_Phase_Grover(Phi(j),N,i,i);
    end
end

for i = 1:N
    [F_P_Younes(i),F_I_Younes(i)] = Flexible_Fixed_Phase_Grover(Phi_Younes,N,i,i);
end

for i = 1:N
    [F_P_Younes_1(i),F_I_Younes_1(i)] = Flexible_Fixed_Phase_Grover(Phi_Younes_1,N,i,i);
end

for i = 1:N
    [F_P_Younes_2(i),F_I_Younes_2(i)] = Flexible_Fixed_Phase_Grover(Phi_Younes_2,N,i,i);
end

for i = 1:N
    [G_P(i),G_I(i)] = Grover(N,i,i);
end

N = gather(N);
save G_P__F_P_12289 F_P F_I Phi F_P_Younes F_I_Younes Phi_Younes F_P_Younes_1 F_I_Younes_1 Phi_Younes_1 F_P_Younes_2 F_I_Younes_2 Phi_Younes_2 G_P G_I N
