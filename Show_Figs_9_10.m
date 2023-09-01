% =========================================================================
% This matlab program is used to show Figs.(9,10) in the manuscript
% Index = 8,Mode = 'Select',namely,
% Show_Figs_9_10(8,'Select')
% =========================================================================
function Show_Figs_9_10(Index,Mode)
close all;clc;
load G_P__F_P_12289
if strcmp(Mode,'Single') | strcmp(Mode,'single')
    figure(1)
    p=plot([1:N],F_P(Index,:)','r',[1:N],F_P_Younes,'b',[1:N],G_P,'k');
    lgd = legend([p(1),p(end)],'  Prop.Alg',' Younes[29]','  Grover[1]');
    legend('Location','southwest')
    xlabel('Number of marked states')
    ylabel('Probability of success')
    axis([1,N,0.5,1.01])
    set(get(gca,'YLabel'),'Fontsize',12)
    set(get(gca,'XLabel'),'Fontsize',12)
    set(gca,'FontSize',14,'FontWeight','bold')
    figure(2)
    p=plot([1:N],F_I(Index,:)','r',[1:N],F_I_Younes,'b',[1:N],G_I,'k');
    lgd = legend([p(1),p(end)],'  Prop.Alg',' Younes[29]','  Grover[1]');
    legend('Location','northeast')
    xlabel('Number of marked states')
    ylabel('Number of iterations')
    axis([1,N,-200,8000])
    set(get(gca,'YLabel'),'Fontsize',12)
    set(get(gca,'XLabel'),'Fontsize',12)
    set(gca,'FontSize',14,'FontWeight','bold')
elseif strcmp(Mode,'Multi') | strcmp(Mode,'multi')
    figure(1)
    p=plot([1:N],F_P(1:Index,:)','r',[1:N],F_P_Younes,'b',[1:N],G_P,'k');
    lgd = legend([p(1),p(end)],'  Prop.Alg',' Younes[29]','  Grover[1]');
    legend('Location','southwest')
    xlabel('Number of marked states')
    ylabel('Probability of success')
    axis([1,N,0.5,1.01])
    set(get(gca,'YLabel'),'Fontsize',12)
    set(get(gca,'XLabel'),'Fontsize',12)
    set(gca,'FontSize',14,'FontWeight','bold')
    figure(2)
    p=plot([1:N],F_I(1:Index,:)','r',[1:N],F_I_Younes,'b',[1:N],G_I,'k');
    lgd = legend([p(1),p(end)],'  Prop.Alg',' Younes[29]','  Grover[1]');
    legend('Location','northeast')
    xlabel('Number of marked states')
    ylabel('Number of iterations')
    axis([1,N,-200,8000])
    set(get(gca,'YLabel'),'Fontsize',12)
    set(get(gca,'XLabel'),'Fontsize',12)
    set(gca,'FontSize',14,'FontWeight','bold')
elseif strcmp(Mode,'Select') | strcmp(Mode,'select')
    figure(1)
    hold on
    p1=plot([1:N],F_P(1:1:Index,:)','r','LineWidth',1);
    p2=plot([1:N],F_P_Younes,'b','LineWidth',2);
    lgd = legend([p1(1),p2(1)],['  Prop.Alg \phi = 0.01\pi, 0.02\pi, \cdot\cdot\cdot, ',num2str(Index/100),'\pi'],'  Younes[15]');
    legend('Location','southwest')
    xlabel('Number of marked states')
    ylabel('Probability of success')
    axis([1,N,0.994,1.0002])
    set(get(gca,'YLabel'),'Fontsize',12)
    set(get(gca,'XLabel'),'Fontsize',12)
    set(gca,'FontSize',14,'FontWeight','bold')
    box on
    figure(2)
    hold on
    p1=plot([1:N],F_I(1:1:Index,:)','r','LineWidth',1);
    p2=plot([1:N],F_I_Younes,'b','LineWidth',2);
    lgd = legend([p1(1),p2(1)],['  Prop.Alg \phi = 0.01\pi, 0.02\pi, \cdot\cdot\cdot, ',num2str(Index/100),'\pi'],'  Younes[15]');
    legend('Location','northeast')
    xlabel('Number of marked states')
    ylabel('Number of iterations')
    axis([1,N,-10,500])
    set(get(gca,'YLabel'),'Fontsize',12)
    set(get(gca,'XLabel'),'Fontsize',12)
    set(gca,'FontSize',14,'FontWeight','bold')
    box on
end
