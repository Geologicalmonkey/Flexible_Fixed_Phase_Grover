clear all;close all;clc;

N1 = 1.0e1; N2 = 1.05e6; Phi = 0.00025:0.00025:1.000;
F_I = zeros(length(Phi),N2-N1+1);

for j = 1:length(Phi)
    F_I(j,:) = Flexible_Fixed_Phase_Iteration_Fun(Phi(j),N1:1:N2);
end

save Result F_I Phi N1 N2

figure(1)
hold on
for i = 1:10
    plot(N1:N2,F_I(i,:));
end
plot(N1:N2,(N1:N2)/2,':');
axis([0,N2,0,max(F_I(1,:))])
xlabel('Total number of records')
ylabel('Search Steps')
box on
