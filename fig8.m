%fig8
clear;clc;close all;
load('ntd.mat');

col6=[0 52 245]./255;col6=roundn(col6,-4);
col7=[17 214 255]./255;col7=roundn(col7,-4);
col9=[246 1 1]./255;col9=roundn(col9,-4);
col10=[254 101 4]./255;col10=roundn(col10,-4);

figure(1);clf;
fig=figure(1);
set(gcf,'position',[250 300 800 600])
subplot(2,2,1);
semilogx(Edges(1:8),UW_nm_ori_b_R2,'-o','LineWidth',1,'Color',col6);
hold on
semilogx(Edges(1:8),UW_nm_tur_b_R2,'--^','LineWidth',1,'Color',col6);
hold on
semilogx(Edges(1:8),UW_nm_ori_b_R4,'-o','LineWidth',1,'Color',col7);
hold on
semilogx(Edges(1:8),UW_nm_tur_b_R4,'--^','LineWidth',1,'Color',col7);
xlim([-10^1,-10^(-2)]);ylim([-0.1,1]);
set(gca,'XTick',[-10^1,-10^0,-10^(-1),-10^(-2)]);
set(gca,'XTickLabel',{'-10^1','-10^0','-10^{-1}','-10^{-2}'});
set(gca,'YTick',[0,0.2,0.4,0.6,0.8,1]);
set(gca,'YTickLabel',{'0','0.2','0.4','0.6','0.8','1'});
set (gca,'position',[0.09,0.575,0.4,0.35] )
xlabel('$\mathbf{Ri}_{\mathbf{b}}$','Interpreter','latex','FontSize',11,'fontweight','bold');
ylabel('Fraction','FontSize',10,'fontweight','bold');
set(gca,'linewidth',1.5,'fontsize',13,'fontweight','bold');
legend('Regime 2 \tau_{ori}','Regime 2 \tau_{tur}','Regime 4 \tau_{ori}','Regime 4 \tau_{tur}','location','northwest','FontSize',11,'FontWeight','bold','NumColumns',2);
legend('boxoff')
text(-8,0.93,'(a)','FontSize',13,'fontweight','bold');

subplot(2,2,2);
semilogx(Edges(9:16),UW_nm_ori_R2,'-o','LineWidth',1,'Color',col6);
hold on
semilogx(Edges(9:16),UW_nm_tur_R2,'--^','LineWidth',1,'Color',col6);
hold on
semilogx(Edges(9:16),UW_nm_ori_R4,'-o','LineWidth',1,'Color',col7);
hold on
semilogx(Edges(9:16),UW_nm_tur_R4,'--^','LineWidth',1,'Color',col7);
xlim([10^(-2),10^(1)]);ylim([-0.1,1]);
set(gca,'XTick',[10^(-2),10^(-1),10^0,10^1]);
set(gca,'XTickLabel',{'10^{-2}','10^{-1}','10^0','10^1',});
set(gca,'YTick',[0,0.2,0.4,0.6,0.8,1]);
set(gca,'YTickLabel',{'0','0.2','0.4','0.6','0.8','1'});
set (gca,'position',[0.575,0.575,0.4,0.35] )
xlabel('$\mathbf{Ri}_{\mathbf{b}}$','Interpreter','latex','FontSize',11,'fontweight','bold');
set(gca,'linewidth',1.5,'fontsize',13,'fontweight','bold');
text(5.5,0.93,'(b)','FontSize',13,'fontweight','bold');

subplot(2,2,3);

semilogx(Edges(1:8),WT_nm_ori_b_R2,'-o','LineWidth',1,'Color',col9);
hold on
semilogx(Edges(1:8),WT_nm_tur_b_R2,'--^','LineWidth',1,'Color',col9);
hold on
semilogx(Edges(1:8),WT_nm_ori_b_R4,'-o','LineWidth',1,'Color',col10);
hold on
semilogx(Edges(1:8),WT_nm_tur_b_R4,'--^','LineWidth',1,'Color',col10);
xlim([-10^(1),-10^(-2)]);ylim([-0.1,1]);
set(gca,'XTick',[-10^1,-10^0,-10^(-1),-10^(-2)]);
set(gca,'XTickLabel',{'-10^1','-10^0','-10^{-1}','-10^{-2}'});
set(gca,'YTick',[0,0.2,0.4,0.6,0.8,1]);
set(gca,'YTickLabel',{'0','0.2','0.4','0.6','0.8','1'});
set (gca,'position',[0.09,0.125,0.4,0.35] )
xlabel('$\mathbf{Ri}_{\mathbf{b}}$','Interpreter','latex','FontSize',11,'fontweight','bold');
ylabel('Fraction','FontSize',10,'fontweight','bold');
set(gca,'linewidth',1.5,'fontsize',13,'fontweight','bold');
legend('Regime 2 H_{ori}','Regime 2 H_{tur}','Regime 4 H_{ori}','Regime 4 H_{tur}','location','northwest','FontSize',11,'FontWeight','bold','NumColumns',2);
legend('boxoff')
text(-8,0.93,'(c)','FontSize',13,'fontweight','bold');

subplot(2,2,4);
semilogx(Edges(9:16),WT_nm_ori_R2,'-o','LineWidth',1,'Color',col9);
hold on
semilogx(Edges(9:16),WT_nm_tur_R2,'--^','LineWidth',1,'Color',col9);
hold on
semilogx(Edges(9:16),WT_nm_ori_R4,'-o','LineWidth',1,'Color',col10);
hold on
semilogx(Edges(9:16),WT_nm_tur_R4,'--^','LineWidth',1,'Color',col10);
xlim([10^(-2),10^(1)]);ylim([-0.1,1]);
set(gca,'XTick',[10^(-2),10^(-1),10^0,10^1]);
set(gca,'XTickLabel',{'10^{-2}','10^{-1}','10^0','10^1',});
set(gca,'YTick',[0,0.2,0.4,0.6,0.8,1]);
set(gca,'YTickLabel',{'0','0.2','0.4','0.6','0.8','1'});
set (gca,'position',[0.575,0.125,0.4,0.35] )
xlabel('$\mathbf{Ri}_{\mathbf{b}}$','Interpreter','latex','FontSize',11,'fontweight','bold');
set(gca,'linewidth',1.5,'fontsize',13,'fontweight','bold');
text(5.5,0.93,'(d)','FontSize',13,'fontweight','bold');

% exportgraphics(gcf, 'Figure 8.jpg', 'Resolution', 600);