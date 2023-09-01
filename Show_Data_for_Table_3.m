% =========================================================================
% This matlab program is used to show data for Table 3 in the manuscript
% =========================================================================
clear all;close all;clc;
load G_P__F_P_12289

% ======== lambda = 1.0e0 ========
[Pmin,Pindex] = sort(F_P');
P_min = Pmin(1,:)';
Mark = Pindex(1,:)';
for i = 1:1:length(Phi)
    Iter(i,1) = F_I(i,Pindex(1,i));
end
Result = [Phi' P_min Iter Mark];
Phase = Result(:,1);
Min_Prob_e_0 = Result(:,2);
Iteration_e_0 = Result(:,3);
Marked_State_e_0 = Result(:,4);

% ======== lambda = 1.0e-2 ========
[Pmin,Pindex] = sort(F_P(:,1:123)');
P_min = Pmin(1,:)';
Mark = Pindex(1,:)';
for i = 1:1:length(Phi)
    Iter(i,1) = F_I(i,Pindex(1,i));
end
Result = [Phi' P_min Iter Mark];
Min_Prob_e_2 = Result(:,2);
Iteration_e_2 = Result(:,3);
Marked_State_e_2 = Result(:,4);

% ======== lambda = 1.0e-3 ========
[Pmin,Pindex] = sort(F_P(:,1:12)');
P_min = Pmin(1,:)';
Mark = Pindex(1,:)';
for i = 1:1:length(Phi)
    Iter(i,1) = F_I(i,Pindex(1,i));
end
Result = [Phi' P_min Iter Mark];
Min_Prob_e_3 = Result(:,2);
Iteration_e_3 = Result(:,3);
Marked_State_e_3 = Result(:,4);

% ======== lambda = 1.0e-4 ========
P_min = F_P(:,1);
Mark = ones(20,1);
Iter = F_I(:,1);
Result = [Phi' P_min Iter Mark];
Min_Prob_e_4 = Result(:,2);
Iteration_e_4 = Result(:,3);
Marked_State_e_4 = Result(:,4);

Min_Prob_Flexible = [Min_Prob_e_0,Min_Prob_e_2,Min_Prob_e_3,Min_Prob_e_4]

% ======== Younes Phi = 1.91684 ========
[Min_Prob_Younes_e_0,Min_Prob_Younes_Index_e_0] = min(F_P_Younes);
[Min_Prob_Younes_e_2,Min_Prob_Younes_Index_e_2] = min(F_P_Younes(1:123));
[Min_Prob_Younes_e_3,Min_Prob_Younes_Index_e_3] = min(F_P_Younes(1:12));
[Min_Prob_Younes_e_4,Min_Prob_Younes_Index_e_4] = min(F_P_Younes(1));
Min_Prob_Younes_1dot91684pi = [Min_Prob_Younes_e_0,Min_Prob_Younes_e_2,Min_Prob_Younes_e_3,Min_Prob_Younes_e_4]

% ======== Younes Phi = 1.825 ========
[Min_Prob_Younes_1_e_0,Min_Prob_Younes_1_Index_e_0] = min(F_P_Younes_1);
[Min_Prob_Younes_1_e_2,Min_Prob_Younes_1_Index_e_2] = min(F_P_Younes_1(1:123));
[Min_Prob_Younes_1_e_3,Min_Prob_Younes_1_Index_e_3] = min(F_P_Younes_1(1:12));
[Min_Prob_Younes_1_e_4,Min_Prob_Younes_1_Index_e_4] = min(F_P_Younes_1(1));
Min_Prob_Younes_1dot825pi = [Min_Prob_Younes_1_e_0,Min_Prob_Younes_1_e_2,Min_Prob_Younes_1_e_3,Min_Prob_Younes_1_e_4]

% ======== Younes Phi = 0.5 ========
[Min_Prob_Younes_2_e_0,Min_Prob_Younes_2_Index_e_0] = min(F_P_Younes_2);
[Min_Prob_Younes_2_e_2,Min_Prob_Younes_2_Index_e_2] = min(F_P_Younes_2(1:123));
[Min_Prob_Younes_2_e_3,Min_Prob_Younes_2_Index_e_3] = min(F_P_Younes_2(1:12));
[Min_Prob_Younes_2_e_4,Min_Prob_Younes_2_Index_e_4] = min(F_P_Younes_2(1));
Min_Prob_Younes_0dot5pi = [Min_Prob_Younes_2_e_0,Min_Prob_Younes_2_e_2,Min_Prob_Younes_2_e_3,Min_Prob_Younes_2_e_4]

% ======== Li Phi = 0.1 ========
[Min_Prob_Li_e_0,Min_Prob_Li_Index_e_0] = min(F_P(10,:));
[Min_Prob_Li_e_2,Min_Prob_Li_Index_e_2] = min(F_P(10,1:123));
[Min_Prob_Li_e_3,Min_Prob_Li_Index_e_3] = min(F_P(10,1:12));
[Min_Prob_Li_e_4,Min_Prob_Li_Index_e_4] = min(F_P(10,1));
Min_Prob_Li_0dot1pi = [Min_Prob_Li_e_0,Min_Prob_Li_e_2,Min_Prob_Li_e_3,Min_Prob_Li_e_4]

% ======== Original Grover ========
[Min_Prob_Grover_e_0,Min_Prob_Grover_Index_e_0] = min(G_P);
[Min_Prob_Grover_e_2,Min_Prob_Grover_Index_e_2] = min(G_P(1:123));
[Min_Prob_Grover_e_3,Min_Prob_Grover_Index_e_3] = min(G_P(1:12));
[Min_Prob_Grover_e_4,Min_Prob_Grover_Index_e_4] = min(G_P(1));
Min_Prob_Grover = [Min_Prob_Grover_e_0,Min_Prob_Grover_e_2,Min_Prob_Grover_e_3,Min_Prob_Grover_e_4]
