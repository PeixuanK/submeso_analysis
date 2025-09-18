%fig6
%phi_h
clear;clc;close all;
load('phi_h.mat');

%colour
col4=[255 99 71]./255;col4=roundn(col4,-4);
col2=[30 144 255]./255;col2=roundn(col2,-4);
col3=[50 205 50]./255;col3=roundn(col3,-4);
col1=[255 215 0]./255;col1=roundn(col1,-4);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(1);clf;
fig=figure(1);
set(gcf,'position',[250 300 800 700])
subplot(2,2,1);
h2=loglog(z_L_nm_2,phi_ori_h2,'d', 'Color', col2,'markersize',3);
hold on
h4=loglog(z_L_nm_4,phi_ori_h4,'p', 'Color', col4,'markersize',4);
hold on
h1=loglog(z_L_nm_1,phi_ori_h1,'+', 'Color', col1,'markersize',3);
hold on
h3=loglog(z_L_nm_3,phi_ori_h3,'^', 'Color', col3,'markersize',3);
hold on
xx=-10^2:0.0001:-10^(-4);
yy_b=(1-5.*xx).^(-1/2);
h5=plot(xx,yy_b,'k--','LineWidth',1.5);
xlim([-10^2,-10^(-4)]);ylim([10^(-2.5),10^3]);
set(gca,'XTick',[-10^(2),-10^(1),-10^(0),-10^(-1),-10^(-2),-10^(-3)]);
set(gca,'XTickLabel',{'-10^{2}','-10^{1}','-10^{0}','-10^{-1}','-10^{-2}','-10^{-3}'});
set(gca,'YTick',[10^(-2),10^(-1),10^0,10^1,10^2,10^3]);
set(gca,'YTickLabel',{'10^{-2}','10^{-1}','10^0','10^1','10^2','10^3'});
% set(gca,'position',[left,top,width,height]) 
set (gca,'position',[0.12,0.74,0.4,0.22] )
legend([h1,h2,h3,h4],'Regime 1','Regime 2','Regime 3','Regime 4','FontSize',11,'FontWeight','bold','location','northwest','NumColumns',2);
legend('boxoff')
xlabel('z/L<0','FontSize',10,'fontweight','bold');
ylabel('\phi_{h}','FontSize',10,'fontweight','bold')
set(gca,'linewidth',1.5,'fontsize',13,'fontweight','bold');
text(5*-10^(-4),0.015,'(a) ','FontSize',13,'fontweight','bold');
box off
ax1 = axes('Position',get(gca,'Position'),'XAxisLocation','top',...
    'YAxisLocation','right','Color','none','XColor','k','YColor','k');  
set(ax1,'XTick', [],'YTick', []);  
set(gca,'LineWidth',1.5);

subplot(2,2,2);
loglog(z_L_nm_2,phi_ori_h2,'d', 'Color', col2,'markersize',3);
hold on
loglog(z_L_nm_4,phi_ori_h4,'p', 'Color', col4,'markersize',4);
hold on
loglog(z_L_nm_1,phi_ori_h1,'+', 'Color', col1,'markersize',3);
hold on
loglog(z_L_nm_3,phi_ori_h3,'^', 'Color', col3,'markersize',3);
hold on
xx=10^(-4):0.01:10^2;
yy3=0.98.*(1+5.*xx./(1+0.4.*xx));
hold on
plot(xx, yy3, 'k--', 'LineWidth', 1.5);
set(gca, 'XScale', 'log');set(gca, 'YScale', 'log');
xlim([10^(-4),10^2]);ylim([10^(-2.5),10^3]);
set(gca,'XTick',[10^(-3),10^(-2),10^(-1),10^0,10^1,10^2]);
set(gca,'XTickLabel',{'10^{-3}','10^{-2}','10^{-1}','10^0','10^1','10^2'});
set(gca,'YTick',[10^(-2),10^(-1),10^0,10^1,10^2,10^3]);
set(gca,'YTickLabel',{});
% set(gca,'position',[left,top,width,height]) 
set (gca,'position',[0.55,0.74,0.4,0.22] )
xlabel('z/L>0','FontSize',10,'fontweight','bold');
set(gca,'linewidth',1.5,'fontsize',13,'fontweight','bold');
text(20,0.015,'(b) ','FontSize',13,'fontweight','bold');
box off
ax1 = axes('Position',get(gca,'Position'),'XAxisLocation','top',...
    'YAxisLocation','right','Color','none','XColor','k','YColor','k'); 
set(ax1,'XTick', [],'YTick', []); 
set(gca,'LineWidth',1.5);

subplot(2,2,3);
loglog(z_L_nm_tur_2,phi_tur_h2,'d', 'Color', col2,'markersize',3);
hold on
loglog(z_L_nm_tur_4,phi_tur_h4,'p', 'Color', col4,'markersize',4);
hold on
loglog(z_L_nm_tur_1,phi_tur_h1,'+', 'Color', col1,'markersize',3);
hold on
loglog(z_L_nm_tur_3,phi_tur_h3,'^', 'Color', col3,'markersize',3);
hold on
xx=-10^2:0.0001:-10^(-4);
yy_b=(1-5.*xx).^(-1/2);
h5=plot(xx,yy_b,'k--','LineWidth',1.5);
xlim([-10^2,-10^(-4)]);ylim([10^(-2.5),10^3]);
set(gca,'XTick',[-10^(2),-10^(1),-10^(0),-10^(-1),-10^(-2),-10^(-3)]);
set(gca,'XTickLabel',{'-10^{2}','-10^{1}','-10^{0}','-10^{-1}','-10^{-2}','-10^{-3}'});
set(gca,'YTick',[10^(-2),10^(-1),10^0,10^1,10^2,10^3]);
set(gca,'YTickLabel',{'10^{-2}','10^{-1}','10^0','10^1','10^2','10^3'});
% set(gca,'position',[left,top,width,height]) 
set (gca,'position',[0.12,0.42,0.4,0.22] )
xlabel('z/L<0','FontSize',10,'fontweight','bold');
ylabel('\phi_{h}','FontSize',10,'fontweight','bold')
set(gca,'linewidth',1.5,'fontsize',13,'fontweight','bold');
text(5*-10^(-4),0.015,'(c) ','FontSize',13,'fontweight','bold');
box off
ax1 = axes('Position',get(gca,'Position'),'XAxisLocation','top',...
    'YAxisLocation','right','Color','none','XColor','k','YColor','k');  
set(ax1,'XTick', [],'YTick', []);  
set(gca,'LineWidth',1.5);

subplot(2,2,4);
loglog(z_L_nm_tur_2,phi_tur_h2,'d', 'Color', col2,'markersize',3);
hold on
loglog(z_L_nm_tur_4,phi_tur_h4,'p', 'Color', col4,'markersize',4);
hold on
loglog(z_L_nm_tur_1,phi_tur_h1,'+', 'Color', col1,'markersize',3);
hold on
loglog(z_L_nm_tur_3,phi_tur_h3,'^', 'Color', col3,'markersize',3);
hold on
xx=10^(-4):0.01:10^2;
yy3=0.98.*(1+5.*xx./(1+0.4.*xx));
hold on
plot(xx, yy3, 'k--', 'LineWidth', 1.5);
xlim([10^(-4),10^2]);ylim([10^(-2.5),10^3]);
set(gca,'XTick',[10^(-3),10^(-2),10^(-1),10^0,10^1,10^2]);
set(gca,'XTickLabel',{'10^{-3}','10^{-2}','10^{-1}','10^0','10^1','10^2'});
set(gca,'YTick',[10^(-2),10^(-1),10^0,10^1,10^2,10^3]);
set(gca,'YTickLabel',{});
% set(gca,'position',[left,top,width,height]) 
set (gca,'position',[0.55,0.42,0.4,0.22] )
xlabel('z/L>0','FontSize',10,'fontweight','bold');
set(gca,'linewidth',1.5,'fontsize',13,'fontweight','bold');
text(20,0.015,'(d)','FontSize',13,'fontweight','bold');
box off
ax1 = axes('Position',get(gca,'Position'),'XAxisLocation','top',...
    'YAxisLocation','right','Color','none','XColor','k','YColor','k');  
set(ax1,'XTick', [],'YTick', []); 
set(gca,'LineWidth',1.5);

% exportgraphics(gcf, 'Figure 6.jpg', 'Resolution', 600);