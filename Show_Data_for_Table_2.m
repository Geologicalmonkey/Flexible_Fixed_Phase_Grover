% =========================================================================
% This matlab program is used to show data for Table 2 in the manuscript
% =========================================================================
clear all;close all;clc;
load G_P__F_P_12289
[Pmin,Pindex] = sort(F_P');
P_min = Pmin(1,:)';
Mark = Pindex(1,:)';
for i = 1:1:length(Phi)
    Iter(i,1) = F_I(i,Pindex(1,i));
end
Result = [Phi' P_min Iter Mark];
Phase = Result(:,1)
Min_Prob = Result(:,2)
Iteration = Result(:,3)
Marked_State = Result(:,4)

[Pmin_Younes,Pindex_Younes] = min(F_P_Younes);
Phase_Younes = Phi_Younes
Min_Prob_Younes = Pmin_Younes
Iteration_Younes = F_I_Younes(Pindex_Younes)
Marked_State_Younes = Pindex_Younes

[Pmin_Grover,Pindex_Grover] = min(G_P);
Min_Prob_Grover = Pmin_Grover
Iteration_Grover = G_I(Pindex_Grover)
Marked_State_Grover = Pindex_Grover
