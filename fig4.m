%phi——u/v/w/t
clear;clc;close all;

load('phi_u.mat');
load('phi_v.mat');
load('phi_w.mat');
load('phi_t.mat');

col4=[255 99 71]./255;col4=roundn(col4,-4);
col2=[30 144 255]./255;col2=roundn(col2,-4);
col3=[50 205 50]./255;col3=roundn(col3,-4);
col1=[255 215 0]./255;col1=roundn(col1,-4);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(1);clf;
fig=figure(1);
set(gcf,'position',[250 300 1200 600])
subplot(4,4,1);
h2=loglog(z_L_nm_u2,phi_ori_u2,'d', 'Color', col2,'markersize',3);
hold on
h4=loglog(z_L_nm_u4,phi_ori_u4,'p', 'Color', col4,'markersize',4);
hold on
h1=loglog(z_L_nm_u1,phi_ori_u1,'+', 'Color', col1,'markersize',3);
hold on
h3=loglog(z_L_nm_u3,phi_ori_u3,'^', 'Color', col3,'markersize',3);
xlim([-10^2,-10^(-4)]);ylim([5*10^(-1),10^2]);
set(gca,'XTick',[-10^(1),-10^(0),-10^(-1),-10^(-2),-10^(-3)]);
set(gca,'XTickLabel',{});
set(gca,'YTick',[10^0,10^1,10^2]);
set(gca,'YTickLabel',{'10^0','10^1','10^2'});
%set(gca,'position',[left,top,width,height])  
set (gca,'position',[0.06,0.76,0.2,0.15] )
legend([h1,h2,h3,h4],'Regime 1','Regime 2','Regime 3','Regime 4','FontSize',11,'FontWeight','bold','Position', [0.895, 0.54, 0.1, 0.12]);
legend('boxoff')
ylabel('\phi_{u}','FontSize',10,'fontweight','bold')
set(gca,'linewidth',1.5,'fontsize',13,'fontweight','bold');
text(0.9, 1.18, 'original', 'Units', 'normalized', 'FontWeight', 'bold', 'FontSize', 13);
box off
ax2 = axes('Position',get(gca,'Position'),'XAxisLocation','top',...
    'YAxisLocation','right','Color','none','XColor','k','YColor','k');  
set(ax2,'XTick', [],'YTick', []);  
set(gca,'LineWidth',1.5);
text(0.02,0.9,'(a1)','FontSize',13,'fontweight','bold');

subplot(4,4,2);
loglog(z_L_nm_u2,phi_ori_u2,'d', 'Color', col2,'markersize',3);
hold on
loglog(z_L_nm_u4,phi_ori_u4,'p', 'Color', col4,'markersize',4);
hold on
loglog(z_L_nm_u1,phi_ori_u1,'+', 'Color', col1,'markersize',3);
hold on
loglog(z_L_nm_u3,phi_ori_u3,'^', 'Color', col3,'markersize',3);
xlim([10^(-4),10^2]);ylim([5*10^(-1),10^2]);
set(gca,'XTick',[10^(-3),10^(-2),10^(-1),10^(0),10^(1)]);
set(gca,'XTickLabel',{});
set(gca,'YTick',[10^0,10^1,10^2]);
set(gca,'YTickLabel',{});
%set(gca,'position',[left,top,width,height])  
set (gca,'position',[0.265,0.76,0.2,0.15] )
set(gca,'linewidth',1.5,'fontsize',13,'fontweight','bold');
box off
ax2 = axes('Position',get(gca,'Position'),'XAxisLocation','top',...
    'YAxisLocation','right','Color','none','XColor','k','YColor','k'); 
set(ax2,'XTick', [],'YTick', []);  
set(gca,'LineWidth',1.5);
text(0.86,0.9,'(a2)','FontSize',13,'fontweight','bold');

subplot(4,4,5);
loglog(z_L_nm_v2,phi_ori_v2,'d', 'Color', col2,'markersize',3);
hold on
loglog(z_L_nm_v4,phi_ori_v4,'p', 'Color', col4,'markersize',4);
hold on
loglog(z_L_nm_v1,phi_ori_v1,'+', 'Color', col1,'markersize',3);
hold on
loglog(z_L_nm_v3,phi_ori_v3,'^', 'Color', col3,'markersize',3);
xlim([-10^2,-10^(-4)]);ylim([5*10^(-1),10^2]);
set(gca,'XTick',[-10^(1),-10^(0),-10^(-1),-10^(-2),-10^(-3)]);
set(gca,'XTickLabel',{});
set(gca,'YTick',[10^0,10^1,10^2]);
set(gca,'YTickLabel',{'10^0','10^1','10^2'});
%set(gca,'position',[left,top,width,height])  
set (gca,'position',[0.06,0.59,0.2,0.15] )
ylabel('\phi_{v}','FontSize',10,'fontweight','bold')
set(gca,'linewidth',1.5,'fontsize',13,'fontweight','bold');
box off
ax2 = axes('Position',get(gca,'Position'),'XAxisLocation','top',...
    'YAxisLocation','right','Color','none','XColor','k','YColor','k');  
set(ax2,'XTick', [],'YTick', []);   
set(gca,'LineWidth',1.5);
text(0.02,0.9,'(b1)','FontSize',13,'fontweight','bold');

subplot(4,4,6);
loglog(z_L_nm_v2,phi_ori_v2,'d', 'Color', col2,'markersize',3);
hold on
loglog(z_L_nm_v4,phi_ori_v4,'p', 'Color', col4,'markersize',4);
hold on
loglog(z_L_nm_v1,phi_ori_v1,'+', 'Color', col1,'markersize',3);
hold on
loglog(z_L_nm_v3,phi_ori_v3,'^', 'Color', col3,'markersize',3);
xlim([10^(-4),10^2]);ylim([5*10^(-1),10^2]);
set(gca,'XTick',[10^(-3),10^(-2),10^(-1),10^(0),10^(1)]);
set(gca,'XTickLabel',{});
set(gca,'YTick',[10^0,10^1,10^2]);
set(gca,'YTickLabel',{});
%set(gca,'position',[left,top,width,height])  
set (gca,'position',[0.265,0.59,0.2,0.15] )
set(gca,'linewidth',1.5,'fontsize',13,'fontweight','bold');
box off
ax2 = axes('Position',get(gca,'Position'),'XAxisLocation','top',...
    'YAxisLocation','right','Color','none','XColor','k','YColor','k');  
set(ax2,'XTick', [],'YTick', []);   
set(gca,'LineWidth',1.5);
text(0.86,0.9,'(b2)','FontSize',13,'fontweight','bold');

subplot(4,4,9);
loglog(z_L_nm_w2,phi_ori_w2,'d', 'Color', col2,'markersize',3);
hold on
loglog(z_L_nm_w4,phi_ori_w4,'p', 'Color', col4,'markersize',4);
hold on
loglog(z_L_nm_w1,phi_ori_w1,'+', 'Color', col1,'markersize',3);
hold on
loglog(z_L_nm_w3,phi_ori_w3,'^', 'Color', col3,'markersize',3);
xlim([-10^2,-10^(-4)]);ylim([0.3,10^2]);
set(gca,'XTick',[-10^(1),-10^(0),-10^(-1),-10^(-2),-10^(-3)]);
set(gca,'XTickLabel',{});
set(gca,'YTick',[10^0,10^1,10^2]);
set(gca,'YTickLabel',{'10^0','10^1','10^2'});
%set(gca,'position',[left,top,width,height])  
set (gca,'position',[0.06,0.42,0.2,0.15] )
ylabel('\phi_{w}','FontSize',10,'fontweight','bold')
set(gca,'linewidth',1.5,'fontsize',13,'fontweight','bold');
box off
ax2 = axes('Position',get(gca,'Position'),'XAxisLocation','top',...
    'YAxisLocation','right','Color','none','XColor','k','YColor','k'); 
set(ax2,'XTick', [],'YTick', []);   
set(gca,'LineWidth',1.5);
text(0.02,0.9,'(c1)','FontSize',13,'fontweight','bold');

subplot(4,4,10);
loglog(z_L_nm_w2,phi_ori_w2,'d', 'Color', col2,'markersize',3);
hold on
loglog(z_L_nm_w4,phi_ori_w4,'p', 'Color', col4,'markersize',4);
hold on
loglog(z_L_nm_w1,phi_ori_w1,'+', 'Color', col1,'markersize',3);
hold on
loglog(z_L_nm_w3,phi_ori_w3,'^', 'Color', col3,'markersize',3);
xlim([10^(-4),10^2]);ylim([0.3,10^2]);
set(gca,'XTick',[10^(-3),10^(-2),10^(-1),10^(0),10^(1)]);
set(gca,'XTickLabel',{});
set(gca,'YTick',[10^0,10^1,10^2]);
set(gca,'YTickLabel',{});
%set(gca,'position',[left,top,width,height])  
set (gca,'position',[0.265,0.42,0.2,0.15] )
set(gca,'linewidth',1.5,'fontsize',13,'fontweight','bold');
box off
ax2 = axes('Position',get(gca,'Position'),'XAxisLocation','top',...
    'YAxisLocation','right','Color','none','XColor','k','YColor','k'); 
set(ax2,'XTick', [],'YTick', []);
set(gca,'LineWidth',1.5);
text(0.86,0.9,'(c2)','FontSize',13,'fontweight','bold');

subplot(4,4,13);
loglog(z_L_nm_t2,phi_ori_t2,'d', 'Color', col2,'markersize',3);
hold on
loglog(z_L_nm_t4,phi_ori_t4,'p', 'Color', col4,'markersize',4);
hold on
loglog(z_L_nm_t1,phi_ori_t1,'+', 'Color', col1,'markersize',3);
hold on
loglog(z_L_nm_t3,phi_ori_t3,'^', 'Color', col3,'markersize',3);
xlim([-10^2,-10^(-4)]);ylim([10^(-1),10^3]);
set(gca,'XTick',[-10^(1),-10^(0),-10^(-1),-10^(-2),-10^(-3)]);
set(gca,'XTickLabel',{'-10^{1}','-10^{0}','-10^{-1}','-10^{-2}','-10^{-3}'});
set(gca,'YTick',[10^(-1),10^0,10^1,10^2,10^3]);
set(gca,'YTickLabel',{'10^{-1}','10^0','10^1','10^2','10^3'});
%set(gca,'position',[left,top,width,height])  
set (gca,'position',[0.06,0.25,0.2,0.15] )
xlabel('z/L<0','FontSize',10,'fontweight','bold');
ylabel('\phi_{\theta}','FontSize',10,'fontweight','bold')
set(gca,'linewidth',1.5,'fontsize',13,'fontweight','bold');
box off
ax2 = axes('Position',get(gca,'Position'),'XAxisLocation','top',...
    'YAxisLocation','right','Color','none','XColor','k','YColor','k');
set(ax2,'XTick', [],'YTick', []);
set(gca,'LineWidth',1.5);
text(0.02,0.9,'(d1)','FontSize',13,'fontweight','bold');

subplot(4,4,14);
loglog(z_L_nm_t2,phi_ori_t2,'d', 'Color', col2,'markersize',3);
hold on
loglog(z_L_nm_t4,phi_ori_t4,'p', 'Color', col4,'markersize',4);
hold on
loglog(z_L_nm_t1,phi_ori_t1,'+', 'Color', col1,'markersize',3);
hold on
loglog(z_L_nm_t3,phi_ori_t3,'^', 'Color', col3,'markersize',3);
xlim([10^(-4),10^2]);ylim([10^(-1),10^3]);
set(gca,'XTick',[10^(-3),10^(-2),10^(-1),10^(0),10^(1)]);
set(gca,'XTickLabel',{'10^{-3}','10^{-2}','10^{-1}','10^{0}','10^{1}'});
set(gca,'YTick',[10^0,10^1,10^2]);
set(gca,'YTickLabel',{});
xlabel('z/L>0','FontSize',10,'fontweight','bold');
%set(gca,'position',[left,top,width,height])  
set (gca,'position',[0.265,0.25,0.2,0.15] )
set(gca,'linewidth',1.5,'fontsize',13,'fontweight','bold');
box off
ax2 = axes('Position',get(gca,'Position'),'XAxisLocation','top',...
    'YAxisLocation','right','Color','none','XColor','k','YColor','k');  
set(ax2,'XTick', [],'YTick', []);  
set(gca,'LineWidth',1.5);
text(0.86,0.9,'(d2)','FontSize',13,'fontweight','bold');

subplot(4,4,3);
loglog(z_L_nm_tur_u2,phi_tur_u2,'d', 'Color', col2,'markersize',3);
hold on
loglog(z_L_nm_tur_u4,phi_tur_u4,'p', 'Color', col4,'markersize',4);
hold on
loglog(z_L_nm_tur_u1,phi_tur_u1,'+', 'Color', col1,'markersize',3);
hold on
loglog(z_L_nm_tur_u3,phi_tur_u3,'^', 'Color', col3,'markersize',3);
xlim([-10^2,-10^(-4)]);ylim([5*10^(-1),10^2]);
set(gca,'XTick',[-10^(1),-10^(0),-10^(-1),-10^(-2),-10^(-3)]);
set(gca,'XTickLabel',{});
set(gca,'YTick',[10^0,10^1,10^2]);
set(gca,'YTickLabel',{});
%set(gca,'position',[left,top,width,height])  
set (gca,'position',[0.50,0.76,0.2,0.15] )
set(gca,'linewidth',1.5,'fontsize',13,'fontweight','bold');
text(0.87, 1.18, 'turbulent', 'Units', 'normalized', 'FontWeight', 'bold', 'FontSize', 13);
box off
ax2 = axes('Position',get(gca,'Position'),'XAxisLocation','top',...
    'YAxisLocation','right','Color','none','XColor','k','YColor','k');  
set(ax2,'XTick', [],'YTick', []);  
set(gca,'LineWidth',1.5);
text(0.02,0.9,'(a3)','FontSize',13,'fontweight','bold');

subplot(4,4,4);
loglog(z_L_nm_tur_u2,phi_tur_u2,'d', 'Color', col2,'markersize',3);
hold on
loglog(z_L_nm_tur_u4,phi_tur_u4,'p', 'Color', col4,'markersize',4);
hold on
loglog(z_L_nm_tur_u1,phi_tur_u1,'+', 'Color', col1,'markersize',3);
hold on
loglog(z_L_nm_tur_u3,phi_tur_u3,'^', 'Color', col3,'markersize',3);
xlim([10^(-4),10^2]);ylim([5*10^(-1),10^2]);
set(gca,'XTick',[10^(-3),10^(-2),10^(-1),10^(0),10^(1)]);
set(gca,'XTickLabel',{});
set(gca,'YTick',[10^0,10^1,10^2]);
set(gca,'YTickLabel',{});
%set(gca,'position',[left,top,width,height])  
set (gca,'position',[0.705,0.76,0.2,0.15] )
set(gca,'linewidth',1.5,'fontsize',13,'fontweight','bold');
box off
ax2 = axes('Position',get(gca,'Position'),'XAxisLocation','top',...
    'YAxisLocation','right','Color','none','XColor','k','YColor','k'); 
set(ax2,'XTick', [],'YTick', []); 
set(gca,'LineWidth',1.5);
text(0.86,0.9,'(a4)','FontSize',13,'fontweight','bold');

subplot(4,4,7);
loglog(z_L_nm_tur_v2,phi_tur_v2,'d', 'Color', col2,'markersize',3);
hold on
loglog(z_L_nm_tur_v4,phi_tur_v4,'p', 'Color', col4,'markersize',4);
hold on
loglog(z_L_nm_tur_v1,phi_tur_v1,'+', 'Color', col1,'markersize',3);
hold on
loglog(z_L_nm_tur_v3,phi_tur_v3,'^', 'Color', col3,'markersize',3);
xlim([-10^2,-10^(-4)]);ylim([5*10^(-1),10^2]);
set(gca,'XTick',[-10^(1),-10^(0),-10^(-1),-10^(-2),-10^(-3)]);
set(gca,'XTickLabel',{});
set(gca,'YTick',[10^0,10^1,10^2]);
set(gca,'YTickLabel',{});
%set(gca,'position',[left,top,width,height])  
set (gca,'position',[0.50,0.59,0.2,0.15] )
set(gca,'linewidth',1.5,'fontsize',13,'fontweight','bold');
box off
ax2 = axes('Position',get(gca,'Position'),'XAxisLocation','top',...
    'YAxisLocation','right','Color','none','XColor','k','YColor','k'); 
set(ax2,'XTick', [],'YTick', []); 
set(gca,'LineWidth',1.5);
text(0.02,0.9,'(b3)','FontSize',13,'fontweight','bold');

subplot(4,4,8);
loglog(z_L_nm_tur_v2,phi_tur_v2,'d', 'Color', col2,'markersize',3);
hold on
loglog(z_L_nm_tur_v4,phi_tur_v4,'p', 'Color', col4,'markersize',4);
hold on
loglog(z_L_nm_tur_v1,phi_tur_v1,'+', 'Color', col1,'markersize',3);
hold on
loglog(z_L_nm_tur_v3,phi_tur_v3,'^', 'Color', col3,'markersize',3);
xlim([10^(-4),10^2]);ylim([5*10^(-1),10^2]);
set(gca,'XTick',[10^(-3),10^(-2),10^(-1),10^(0),10^(1)]);
set(gca,'XTickLabel',{});
set(gca,'YTick',[10^0,10^1,10^2]);
set(gca,'YTickLabel',{});
%set(gca,'position',[left,top,width,height])  
set (gca,'position',[0.705,0.59,0.2,0.15] )
set(gca,'linewidth',1.5,'fontsize',13,'fontweight','bold');
box off
ax2 = axes('Position',get(gca,'Position'),'XAxisLocation','top',...
    'YAxisLocation','right','Color','none','XColor','k','YColor','k');  
set(ax2,'XTick', [],'YTick', []);  
set(gca,'LineWidth',1.5);
text(0.86,0.9,'(b4)','FontSize',13,'fontweight','bold');

subplot(4,4,11);
loglog(z_L_nm_tur_w2,phi_tur_w2,'d', 'Color', col2,'markersize',3);
hold on
loglog(z_L_nm_tur_w4,phi_tur_w4,'p', 'Color', col4,'markersize',4);
hold on
loglog(z_L_nm_tur_w1,phi_tur_w1,'+', 'Color', col1,'markersize',3);
hold on
loglog(z_L_nm_tur_w3,phi_tur_w3,'^', 'Color', col3,'markersize',3);
xlim([-10^2,-10^(-4)]);ylim([0.3,10^2]);
set(gca,'XTick',[-10^(1),-10^(0),-10^(-1),-10^(-2),-10^(-3)]);
set(gca,'XTickLabel',{});
set(gca,'YTick',[10^0,10^1,10^2]);
set(gca,'YTickLabel',{});
%set(gca,'position',[left,top,width,height])  
set (gca,'position',[0.50,0.42,0.2,0.15] )
set(gca,'linewidth',1.5,'fontsize',13,'fontweight','bold');
box off
ax2 = axes('Position',get(gca,'Position'),'XAxisLocation','top',...
    'YAxisLocation','right','Color','none','XColor','k','YColor','k'); 
set(ax2,'XTick', [],'YTick', []);   
set(gca,'LineWidth',1.5);
text(0.02,0.9,'(c3)','FontSize',13,'fontweight','bold');

subplot(4,4,12);
loglog(z_L_nm_tur_w2,phi_tur_w2,'d', 'Color', col2,'markersize',3);
hold on
loglog(z_L_nm_tur_w4,phi_tur_w4,'p', 'Color', col4,'markersize',4);
hold on
loglog(z_L_nm_tur_w1,phi_tur_w1,'+', 'Color', col1,'markersize',3);
hold on
loglog(z_L_nm_tur_w3,phi_tur_w3,'^', 'Color', col3,'markersize',3);
xlim([10^(-4),10^2]);ylim([0.3,10^2]);
set(gca,'XTick',[10^(-3),10^(-2),10^(-1),10^(0),10^(1)]);
set(gca,'XTickLabel',{});
set(gca,'YTick',[10^0,10^1,10^2]);
set(gca,'YTickLabel',{});
%set(gca,'position',[left,top,width,height])  
set (gca,'position',[0.705,0.42,0.2,0.15] )
set(gca,'linewidth',1.5,'fontsize',13,'fontweight','bold');
box off
ax2 = axes('Position',get(gca,'Position'),'XAxisLocation','top',...
    'YAxisLocation','right','Color','none','XColor','k','YColor','k');  
set(ax2,'XTick', [],'YTick', []);  
set(gca,'LineWidth',1.5);
text(0.86,0.9,'(c4)','FontSize',13,'fontweight','bold');

subplot(4,4,15);
loglog(z_L_nm_tur_t2,phi_tur_t2,'d', 'Color', col2,'markersize',3);
hold on
loglog(z_L_nm_tur_t4,phi_tur_t4,'p', 'Color', col4,'markersize',4);
hold on
loglog(z_L_nm_tur_t1,phi_tur_t1,'+', 'Color', col1,'markersize',3);
hold on
loglog(z_L_nm_tur_t3,phi_tur_t3,'^', 'Color', col3,'markersize',3);
xlim([-10^2,-10^(-4)]);ylim([10^(-1),10^3]);
set(gca,'XTick',[-10^(1),-10^(0),-10^(-1),-10^(-2),-10^(-3)]);
set(gca,'XTickLabel',{'-10^{1}','-10^{0}','-10^{-1}','-10^{-2}','-10^{-3}'});
set(gca,'YTick',[10^0,10^1,10^2]);
set(gca,'YTickLabel',{});
%set(gca,'position',[left,top,width,height])  
set (gca,'position',[0.50,0.25,0.2,0.15] )
xlabel('z/L<0','FontSize',10,'fontweight','bold');
set(gca,'linewidth',1.5,'fontsize',13,'fontweight','bold');
box off
ax2 = axes('Position',get(gca,'Position'),'XAxisLocation','top',...
    'YAxisLocation','right','Color','none','XColor','k','YColor','k');  
set(ax2,'XTick', [],'YTick', []);  
set(gca,'LineWidth',1.5);
text(0.02,0.9,'(d3)','FontSize',13,'fontweight','bold');

subplot(4,4,16);
loglog(z_L_nm_tur_t2,phi_tur_t2,'d', 'Color', col2,'markersize',3);
hold on
loglog(z_L_nm_tur_t4,phi_tur_t4,'p', 'Color', col4,'markersize',4);
hold on
loglog(z_L_nm_tur_t1,phi_tur_t1,'+', 'Color', col1,'markersize',3);
hold on
loglog(z_L_nm_tur_t3,phi_tur_t3,'^', 'Color', col3,'markersize',3);
xlim([10^(-4),10^2]);ylim([10^(-1),10^3]);
set(gca,'XTick',[10^(-3),10^(-2),10^(-1),10^(0),10^(1)]);
set(gca,'XTickLabel',{'10^{-3}','10^{-2}','10^{-1}','10^{0}','10^{1}'});
set(gca,'YTick',[10^0,10^1,10^2]);
set(gca,'YTickLabel',{});
xlabel('z/L>0','FontSize',10,'fontweight','bold');
%set(gca,'position',[left,top,width,height])  
set (gca,'position',[0.705,0.25,0.2,0.15] )
set(gca,'linewidth',1.5,'fontsize',13,'fontweight','bold');
box off
ax2 = axes('Position',get(gca,'Position'),'XAxisLocation','top',...
    'YAxisLocation','right','Color','none','XColor','k','YColor','k');  
set(ax2,'XTick', [],'YTick', []);  
set(gca,'LineWidth',1.5);
text(0.86,0.9,'(d4)','FontSize',13,'fontweight','bold');

% exportgraphics(gcf, 'Figure 4.jpg', 'Resolution', 600);