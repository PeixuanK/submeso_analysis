%fig9/10
clear;clc;close all;
load('sub.mat');

col4=[255 99 71]./255;col4=roundn(col4,-4);
col2=[30 144 255]./255;col2=roundn(col2,-4);
col3=[50 205 50]./255;col3=roundn(col3,-4);
col1=[255 215 0]./255;col1=roundn(col1,-4);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Regime 2
figure(1);clf;
fig=figure(1);
set(gcf,'position',[250 300 1000 600])
subplot(3,2,1);
plot(RB_naiman_u2_b,sigmaU_sub_U2_b,'.', 'Color', col2,'markersize',10);
hold on
xx=linspace(-10,4,100);
yy_b=0.52.*exp(0.31*xx)-1.9;
h2=plot(xx,yy_b , 'k','LineWidth',2);
legend(h2,'y=0.52e^{0.31x}-1.9','location','northeast','FontSize',12);
legend('boxoff');
ylim([-4,2]);xlim([-11,7]);
set(gca,'XTick',[-10,-8,-6,-4,-2,0,2,4,6,8]);
set(gca,'XTickLabel',{'-10','-8','-6','-4','-2','0','2','4','6','8'});
ylabel('ln(\sigma_{u(sub)}/U)','FontSize',10,'fontweight','bold');
set(gca, 'XDir', 'reverse');
set (gca,'position',[0.12,0.76,0.36,0.22] )
set(gca,'linewidth',1.5,'fontsize',12,'fontweight','bold');
text(6.5,1.3,'(a)','FontSize',13,'fontweight','bold');
box off
ax1 = axes('Position',get(gca,'Position'),'XAxisLocation','top',...
    'YAxisLocation','right','Color','none','XColor','k','YColor','k');  
set(ax1,'XTick', [],'YTick', []);   
set(gca,'LineWidth',1.5);

subplot(3,2,2);
plot(RB_naiman_u2_w,sigmaU_sub_U2_w,'.', 'Color', col2,'markersize',10);
hold on
xx=linspace(-10,4,100);
yy_w=0.55.*exp(0.3*xx)-2;
h3=plot(xx,yy_w , 'k','LineWidth',2);
legend(h3,'y=0.55e^{0.3x}-2','location','northeast','FontSize',12);
legend('boxoff');
ylim([-4,2]);xlim([-11,7]);
set(gca,'XTick',[-10,-8,-6,-4,-2,0,2,4,6,8]);
set(gca,'XTickLabel',{'-10','-8','-6','-4','-2','0','2','4','6','8'});
set (gca,'position',[0.52,0.76,0.36,0.22] )
set(gca,'linewidth',1.5,'fontsize',12,'fontweight','bold');
text(-10.5,1.3,'(b)','FontSize',13,'fontweight','bold');
box off
ax1 = axes('Position',get(gca,'Position'),'XAxisLocation','top',...
    'YAxisLocation','right','Color','none','XColor','k','YColor','k');
set(ax1,'XTick', [],'YTick', []);  
set(gca,'LineWidth',1.5);

subplot(3,2,3);
plot(RB_naiman_v2_b,sigmaV_sub_U2_b,'.', 'Color', col2,'markersize',10);
hold on
xx=linspace(-10,4,100);
yy_b=2.04.*exp(0.11*xx)-3.34;
h2=plot(xx,yy_b , 'k','LineWidth',2);
legend(h2,'y=2.04e^{0.11x}-3.34','location','northeast','FontSize',12);
legend('boxoff');
ylim([-4,2]);xlim([-11,7]);
set(gca,'XTick',[-10,-8,-6,-4,-2,0,2,4,6,8]);
set(gca,'XTickLabel',{'-10','-8','-6','-4','-2','0','2','4','6','8'});
ylabel('ln(\sigma_{v(sub)}/U)','FontSize',10,'fontweight','bold');
set(gca, 'XDir', 'reverse');
set (gca,'position',[0.12,0.44,0.36,0.22] )
set(gca,'linewidth',1.5,'fontsize',12,'fontweight','bold');
text(6.5,1.3,'(c)','FontSize',13,'fontweight','bold');
box off
ax1 = axes('Position',get(gca,'Position'),'XAxisLocation','top',...
    'YAxisLocation','right','Color','none','XColor','k','YColor','k');  
set(ax1,'XTick', [],'YTick', []);  
set(gca,'LineWidth',1.5);

subplot(3,2,4);
plot(RB_naiman_v2_w,sigmaV_sub_U2_w,'.', 'Color', col2,'markersize',10);
hold on
xx=linspace(-10,4,100);
yy_w=1.64.*exp(0.16*xx)-2.92;
h3=plot(xx,yy_w , 'k','LineWidth',2);
legend(h3,'1.64e^{0.16x}-2.92','location','northeast','FontSize',12);
legend('boxoff');
ylim([-4,2]);xlim([-11,7]);
set(gca,'XTick',[-10,-8,-6,-4,-2,0,2,4,6,8]);
set(gca,'XTickLabel',{'-10','-8','-6','-4','-2','0','2','4','6','8'});
set (gca,'position',[0.52,0.44,0.36,0.22] )
set(gca,'linewidth',1.5,'fontsize',12,'fontweight','bold');
text(-10.5,1.3,'(d)','FontSize',13,'fontweight','bold');
box off
ax1 = axes('Position',get(gca,'Position'),'XAxisLocation','top',...
    'YAxisLocation','right','Color','none','XColor','k','YColor','k'); 
set(ax1,'XTick', [],'YTick', []);   
set(gca,'LineWidth',1.5);

subplot(3,2,5);
plot(RB_naiman_w2_b,sigmaW_sub_U2_b,'.', 'Color', col2,'markersize',10);
hold on
xx=linspace(-10,4,100);
yy_b=0.8.*exp(0.18*xx)-3.93;
h2=plot(xx,yy_b , 'k','LineWidth',2);
legend(h2,'0.8e^{0.18x}-3.93','location','northeast','FontSize',12);
legend('boxoff');
ylim([-6,0]);xlim([-11,7]);
set(gca,'XTick',[-10,-8,-6,-4,-2,0,2,4,6,8]);
set(gca,'XTickLabel',{'-10','-8','-6','-4','-2','0','2','4','6','8'});
xlabel('$\mathbf{ln}\,(\mathbf{-Ri}_{\mathbf{b}})$','Interpreter','latex','FontSize',10,'fontweight','bold');
ylabel('ln(\sigma_{w(sub)}/U)','FontSize',10,'fontweight','bold');
set(gca, 'XDir', 'reverse');
set (gca,'position',[0.12,0.12,0.36,0.22] )
set(gca,'linewidth',1.5,'fontsize',12,'fontweight','bold');
text(6.5,-0.7,'(e)','FontSize',13,'fontweight','bold');
box off
ax1 = axes('Position',get(gca,'Position'),'XAxisLocation','top',...
    'YAxisLocation','right','Color','none','XColor','k','YColor','k');  
set(ax1,'XTick', [],'YTick', []);  
set(gca,'LineWidth',1.5);

subplot(3,2,6);
plot(RB_naiman_w2_w,sigmaW_sub_U2_w,'.', 'Color', col2,'markersize',10);
hold on
xx=linspace(-10,4,100);
yy_w=0.06.*exp(0.65*xx)-3.68;
h3=plot(xx,yy_w , 'k','LineWidth',2);
legend(h3,'y=0.06e^{0.65x}-3.68','location','northeast','FontSize',12);
legend('boxoff');
ylim([-6,0]);xlim([-11,7]);
set(gca,'XTick',[-10,-8,-6,-4,-2,0,2,4,6,8]);
set(gca,'XTickLabel',{'-10','-8','-6','-4','-2','0','2','4','6','8'});
xlabel('$\mathbf{ln}\,(\mathbf{Ri}_{\mathbf{b}})$','Interpreter','latex','FontSize',10,'fontweight','bold');
set (gca,'position',[0.52,0.12,0.36,0.22] )
set(gca,'linewidth',1.5,'fontsize',12,'fontweight','bold');
text(-10.5,-0.7,'(f)','FontSize',13,'fontweight','bold');
box off
ax1 = axes('Position',get(gca,'Position'),'XAxisLocation','top',...
    'YAxisLocation','right','Color','none','XColor','k','YColor','k');  
set(ax1,'XTick', [],'YTick', []); 
set(gca,'LineWidth',1.5);

% exportgraphics(gcf, 'Figure 9.jpg', 'Resolution', 600);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Regime 4
figure(2);clf;
fig=figure(2);
set(gcf,'position',[250 300 1000 600])
subplot(3,2,1);
plot(RB_naiman_u4_b,sigmaU_sub_U4_b,'.', 'Color', col4,'markersize',10);
hold on
xx=linspace(-6,4,100);
yy_b=0.04.*xx-1.5;
h2=plot(xx,yy_b , 'k','LineWidth',2);
legend(h2,'y=0.04x-1.5','location','northeast','FontSize',12);
legend('boxoff');
ylim([-4,2]);xlim([-8,7]);
set(gca,'XTick',[-10,-8,-6,-4,-2,0,2,4,6,8]);
set(gca,'XTickLabel',{'-10','-8','-6','-4','-2','0','2','4','6','8'});
ylabel('ln(\sigma_{u(sub)}/U)','FontSize',10,'fontweight','bold');
set(gca, 'XDir', 'reverse');
set (gca,'position',[0.12,0.76,0.36,0.22] )
set(gca,'linewidth',1.5,'fontsize',12,'fontweight','bold');
text(6.5,1.3,'(a)','FontSize',13,'fontweight','bold');
box off
ax1 = axes('Position',get(gca,'Position'),'XAxisLocation','top',...
    'YAxisLocation','right','Color','none','XColor','k','YColor','k');  
set(ax1,'XTick', [],'YTick', []); 
set(gca,'LineWidth',1.5);

subplot(3,2,2);
plot(RB_naiman_u4_w,sigmaU_sub_U4_w,'.', 'Color', col4,'markersize',10);
hold on
xx=linspace(-6,4,100);
yy_w=0.08.*xx-1.49;
h3=plot(xx,yy_w , 'k','LineWidth',2);
legend(h3,'y=0.08x-1.49','location','northeast','FontSize',12);
legend('boxoff');
ylim([-4,2]);xlim([-8,7]);
set(gca,'XTick',[-10,-8,-6,-4,-2,0,2,4,6,8]);
set(gca,'XTickLabel',{'-10','-8','-6','-4','-2','0','2','4','6','8'});
set (gca,'position',[0.52,0.76,0.36,0.22] )
set(gca,'linewidth',1.5,'fontsize',12,'fontweight','bold');
text(-7.5,1.3,'(b)','FontSize',13,'fontweight','bold');
box off
ax1 = axes('Position',get(gca,'Position'),'XAxisLocation','top',...
    'YAxisLocation','right','Color','none','XColor','k','YColor','k');  
set(ax1,'XTick', [],'YTick', []);  
set(gca,'LineWidth',1.5);

subplot(3,2,3);
plot(RB_naiman_v4_b,sigmaV_sub_U4_b,'.', 'Color', col4,'markersize',10);
hold on
xx=linspace(-6,4,100);
yy_b=0.06.*xx-1.52;
h2=plot(xx,yy_b , 'k','LineWidth',2);
legend(h2,'y=0.06x-1.52','location','northeast','FontSize',12);
legend('boxoff');
ylim([-4,2]);xlim([-8,7]);
set(gca,'XTick',[-10,-8,-6,-4,-2,0,2,4,6,8]);
set(gca,'XTickLabel',{'-10','-8','-6','-4','-2','0','2','4','6','8'});
ylabel('ln(\sigma_{v(sub)}/U)','FontSize',10,'fontweight','bold');
set(gca, 'XDir', 'reverse');
set (gca,'position',[0.12,0.44,0.36,0.22] )
set(gca,'linewidth',1.5,'fontsize',12,'fontweight','bold');
text(6.5,1.3,'(c)','FontSize',13,'fontweight','bold');
box off
ax1 = axes('Position',get(gca,'Position'),'XAxisLocation','top',...
    'YAxisLocation','right','Color','none','XColor','k','YColor','k');  
set(ax1,'XTick', [],'YTick', []);  
set(gca,'LineWidth',1.5);

subplot(3,2,4);
plot(RB_naiman_v4_w,sigmaV_sub_U4_w,'.', 'Color', col4,'markersize',10);
hold on
xx=linspace(-6,4,100);
yy_w=0.07.*xx-1.76;
h3=plot(xx,yy_w , 'k','LineWidth',2);
legend(h3,'y=0.07x-1.76','location','northeast','FontSize',12);
legend('boxoff');
ylim([-4,2]);xlim([-8,7]);
set(gca,'XTick',[-10,-8,-6,-4,-2,0,2,4,6,8]);
set(gca,'XTickLabel',{'-10','-8','-6','-4','-2','0','2','4','6','8'});
set (gca,'position',[0.52,0.44,0.36,0.22] )
set(gca,'linewidth',1.5,'fontsize',12,'fontweight','bold');
text(-7.5,1.3,'(d)','FontSize',13,'fontweight','bold');
box off
ax1 = axes('Position',get(gca,'Position'),'XAxisLocation','top',...
    'YAxisLocation','right','Color','none','XColor','k','YColor','k');  
set(ax1,'XTick', [],'YTick', []);   
set(gca,'LineWidth',1.5);

subplot(3,2,5);
plot(RB_naiman_w4_b,sigmaW_sub_U4_b,'.', 'Color', col4,'markersize',10);
hold on
xx=linspace(-6,4,100);
yy_b=0.06.*xx-3.17;
h2=plot(xx,yy_b , 'k','LineWidth',2);
legend(h2,'y=0.06x-3.17','location','northeast','FontSize',12);
legend('boxoff');
ylim([-6,0]);xlim([-8,7]);
set(gca,'XTick',[-10,-8,-6,-4,-2,0,2,4,6,8]);
set(gca,'XTickLabel',{'-10','-8','-6','-4','-2','0','2','4','6','8'});
xlabel('$\mathbf{ln}\,(\mathbf{-Ri}_{\mathbf{b}})$','Interpreter','latex','FontSize',10,'fontweight','bold');
ylabel('ln(\sigma_{w(sub)}/U)','FontSize',10,'fontweight','bold');
set(gca, 'XDir', 'reverse');
set (gca,'position',[0.12,0.12,0.36,0.22] )
set(gca,'linewidth',1.5,'fontsize',12,'fontweight','bold');
text(6.5,-0.7,'(e)','FontSize',13,'fontweight','bold');
box off
ax1 = axes('Position',get(gca,'Position'),'XAxisLocation','top',...
    'YAxisLocation','right','Color','none','XColor','k','YColor','k'); 
set(ax1,'XTick', [],'YTick', []); 
set(gca,'LineWidth',1.5);

subplot(3,2,6);
plot(RB_naiman_w4_w,sigmaW_sub_U4_w,'.', 'Color', col4,'markersize',10);
hold on
xx=linspace(-6,4,100);
yy_w=0.04.*xx-3.59;
h3=plot(xx,yy_w , 'k','LineWidth',2);
legend(h3,'y=0.04x-3.59','location','northeast','FontSize',12);
legend('boxoff');
ylim([-6,0]);xlim([-8,7]);
set(gca,'XTick',[-10,-8,-6,-4,-2,0,2,4,6,8]);
set(gca,'XTickLabel',{'-10','-8','-6','-4','-2','0','2','4','6','8'});
xlabel('$\mathbf{ln}\,(\mathbf{Ri}_{\mathbf{b}})$','Interpreter','latex','FontSize',10,'fontweight','bold');
set (gca,'position',[0.52,0.12,0.36,0.22] )
set(gca,'linewidth',1.5,'fontsize',12,'fontweight','bold');
text(-7.5,-0.7,'(f)','FontSize',13,'fontweight','bold');
box off
ax1 = axes('Position',get(gca,'Position'),'XAxisLocation','top',...
    'YAxisLocation','right','Color','none','XColor','k','YColor','k');  
set(ax1,'XTick', [],'YTick', []);  
set(gca,'LineWidth',1.5);

% exportgraphics(gcf, 'Figure 10.jpg', 'Resolution', 600);