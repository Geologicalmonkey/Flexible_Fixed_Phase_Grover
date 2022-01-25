% =========================================================================
% This matlab program is used to show Figs.(5-8) in the manuscript
% Index = 255,namely,
% Show_Figs_5_6_7_8(255)
% =========================================================================
function Show_Figs_5_6_7_8(Index)
close all;clc;
load Probability_Iteration
X = size(P);

for k = 1:Index
    for i = 1:1:X(3)
        P_1(i,k) = P(k,k,i);
        J_1(i,k) = J(k,k,i);
    end
end
figure(1)
plot([1:X(3)],P_1,'LineStyle','none','Marker','.')
box on
axis([1,995,0,1])
xlabel('\phi');
ylabel('Success Probability  (P_Q)')
set(gca,'xticklabel',{'-2\pi','0','2\pi','4\pi'});
set(get(gca,'YLabel'),'Fontsize',12)
set(get(gca,'XLabel'),'Fontsize',12)
set(gca,'FontSize',14,'FontWeight','bold')

figure(2)
plot([1:X(3)],J_1)
box on
axis([1,995,0,900])
xlabel('\phi');
ylabel('Number of Iteration  (Q)');
set(gca,'xticklabel',{'-2\pi','0','2\pi','4\pi'});
set(get(gca,'YLabel'),'Fontsize',12)
set(get(gca,'XLabel'),'Fontsize',12)
set(gca,'FontSize',14,'FontWeight','bold')

figure(3)
plot([1:X(3)],mean(P_1'))
box on
axis([1,995,0,1])
xlabel('\phi');
ylabel('Average of  P_Q');
set(gca,'xticklabel',{'-2\pi','0','2\pi','4\pi'});
set(get(gca,'YLabel'),'Fontsize',12)
set(get(gca,'XLabel'),'Fontsize',12)
set(gca,'FontSize',14,'FontWeight','bold')

figure(4)
plot([1:X(3)],mean(J_1'))
box on
axis([1,995,0,100])
xlabel('\phi');
ylabel('Average of  Q');
set(gca,'xticklabel',{'-2\pi','0','2\pi','4\pi'});
set(get(gca,'YLabel'),'Fontsize',12)
set(get(gca,'XLabel'),'Fontsize',12)
set(gca,'FontSize',14,'FontWeight','bold')
