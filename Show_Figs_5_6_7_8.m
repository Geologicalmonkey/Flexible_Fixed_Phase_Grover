% =========================================================================
% This matlab program is used to show Figs.(5-8) in the manuscript
% =========================================================================
function Show_Figs_5_6_7_8
close all;clc;
load Probability_Iteration_4352
X = size(P); 

for k = 1:X(1)
    for i = 1:1:X(2)
        P_1(i,k) = P(k,i);
        J_1(i,k) = J(k,i);
    end
end
figure(1)
plot([1:X(2)],P_1,'LineStyle','none','Marker','.')
box on
axis([1,X(2),0,1])
xlabel('\phi');
ylabel('Success Probability  (P_Q)')
set(gca, 'XTick', [80:80:320])
set(gca,'xticklabel',{'-2\pi','0','2\pi','4\pi'});
set(get(gca,'YLabel'),'Fontsize',12)
set(get(gca,'XLabel'),'Fontsize',12)
set(gca,'FontSize',14,'FontWeight','bold')

figure(2)
plot([1:X(2)],J_1)
box on
axis([1,X(2),0,1000])
xlabel('\phi');
ylabel('Number of Iteration  (Q)');
set(gca, 'XTick', [80:80:320])
set(gca,'xticklabel',{'-2\pi','0','2\pi','4\pi'});
set(get(gca,'YLabel'),'Fontsize',12)
set(get(gca,'XLabel'),'Fontsize',12)
set(gca,'FontSize',14,'FontWeight','bold')

figure(3)
plot([1:X(2)],mean(P_1'),'LineWidth',1)
box on
axis([1,X(2),0,1])
xlabel('\phi');
ylabel('Average of  P_Q');
set(gca, 'XTick', [80:80:320])
set(gca,'xticklabel',{'-2\pi','0','2\pi','4\pi'});
set(get(gca,'YLabel'),'Fontsize',12)
set(get(gca,'XLabel'),'Fontsize',12)
set(gca,'FontSize',14,'FontWeight','bold')

figure(4)
plot([1:X(2)],mean(J_1'),'LineWidth',1)
box on
axis([1,X(2),0,50])
xlabel('\phi');
ylabel('Average of  Q');
set(gca, 'XTick', [80:80:320])
set(gca,'xticklabel',{'-2\pi','0','2\pi','4\pi'});
set(get(gca,'YLabel'),'Fontsize',12)
set(get(gca,'XLabel'),'Fontsize',12)
set(gca,'FontSize',14,'FontWeight','bold')
