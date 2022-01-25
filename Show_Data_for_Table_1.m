% =========================================================================
% This matlab program is used to show data for Table 1 in the manuscript
% =========================================================================
clear all;close all;clc;
load G_P__F_P
[Pmin,Pindex] = sort(F_P(10:10:200,:)');
P_min = Pmin(1,:)';
Mark = Pindex(1,:)';
for i = 1:1:length(Phi(10:10:200))
    Iter(i,1) = F_I(i*10,Pindex(1,i));
end
Result = [Phi(10:10:200)' P_min Iter Mark];
disp(num2str(Result))
