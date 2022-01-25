% =========================================================================
% This matlab program is used to show Figs.(9,10) in the manuscript
% Index = 200,Mode = 'Select',namely,
% Show_Figs_9_10(200,'Select')
% =========================================================================
function Show_Figs_9_10(Index,Mode)
close all;clc;
load G_P__F_P
if strcmp(Mode,'Single') | strcmp(Mode,'single')
    figure(1)
    p=plot([1:256],F_P(Index,:)','r',[1:256],G_P,'b');
    lgd = legend([p(1),p(end)],'  FFP Algorithm','  Original Alg');
    legend('Location','southwest')
    xlabel('Number of marked states')
    ylabel('Probability of success')
    axis([1,256,0.5,1.01])
    set(get(gca,'YLabel'),'Fontsize',12)
    set(get(gca,'XLabel'),'Fontsize',12)
    set(gca,'FontSize',14,'FontWeight','bold')
    figure(2)
    p=plot([1:256],F_I(Index,:)','r',[1:256],G_I,'b');
    lgd = legend([p(1),p(end)],'  FFP Algorithm','  Original Alg');
    legend('Location','northeast')
    xlabel('Number of marked states')
    ylabel('Number of iterations')
    axis([1,256,-200,8000])
    set(get(gca,'YLabel'),'Fontsize',12)
    set(get(gca,'XLabel'),'Fontsize',12)
    set(gca,'FontSize',14,'FontWeight','bold')
elseif strcmp(Mode,'Multi') | strcmp(Mode,'multi')
    figure(1)
    p=plot([1:256],F_P(1:Index,:)','r',[1:256],G_P,'b');
    lgd = legend([p(1),p(end)],'  FFP Algorithm','  Original Alg');
    legend('Location','southwest')
    xlabel('Number of marked states')
    ylabel('Probability of success')
    axis([1,256,0.5,1.01])
    set(get(gca,'YLabel'),'Fontsize',12)
    set(get(gca,'XLabel'),'Fontsize',12)
    set(gca,'FontSize',14,'FontWeight','bold')
    figure(2)
    p=plot([1:256],F_I(1:Index,:)','r',[1:256],G_I,'b');
    lgd = legend([p(1),p(end)],'  FFP Algorithm','  Original Alg');
    legend('Location','northeast')
    xlabel('Number of marked states')
    ylabel('Number of iterations')
    axis([1,256,-200,8000])
    set(get(gca,'YLabel'),'Fontsize',12)
    set(get(gca,'XLabel'),'Fontsize',12)
    set(gca,'FontSize',14,'FontWeight','bold')
elseif strcmp(Mode,'Select') | strcmp(Mode,'select')
    figure(1)
    p=plot([1:256],F_P(10:10:Index,:)','r',[1:256],G_P,'b');
    lgd = legend([p(1),p(end)],['  FFP \phi = 0.01\pi, 0.02\pi, \cdot\cdot\cdot, ',num2str(Index/1000),'\pi'],'  Original Grover''s Algorithm');
    legend('Location','southwest')
    xlabel('Number of marked states')
    ylabel('Probability of success')
    axis([1,256,0.35,1.01])
    set(get(gca,'YLabel'),'Fontsize',12)
    set(get(gca,'XLabel'),'Fontsize',12)
    set(gca,'FontSize',14,'FontWeight','bold')
    figure(2)
    p=plot([1:256],F_I(10:10:Index,:)','r',[1:256],G_I,'b');
    lgd = legend([p(1),p(end)],['  FFP \phi = 0.01\pi, 0.02\pi, \cdot\cdot\cdot, ',num2str(Index/1000),'\pi'],'  Original Grover''s Algorithm');
    legend('Location','northeast')
    xlabel('Number of marked states')
    ylabel('Number of iterations')
    axis([1,256,-10,800])
    set(get(gca,'YLabel'),'Fontsize',12)
    set(get(gca,'XLabel'),'Fontsize',12)
    set(gca,'FontSize',14,'FontWeight','bold')
end
