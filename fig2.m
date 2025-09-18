clear;clc;close all;
load('1438.mat');
load('522.mat');
load('37.mat');
load('785.mat');

col2=[38 70 83]./255;col2=roundn(col2,-4);
col3=[230 111 81]./255;col3=roundn(col3,-4);
col1=[42 157 142]./255;col1=roundn(col1,-4);
col4=[243 162 97]./255;col4=roundn(col4,-4);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(1);clf;
fig=figure(1);
set(gcf,'position',[250 300 1200 600])
subplot(2,4,1)
loglog(lg_Hf_1438,sm_lg_Hs2_1438,'-', 'Color', col1,'LineWidth',2);
hold on
loglog(lg_xx_1438,lg_yy_1438,'Color', col3,'LineWidth',2);
set(gca,'XTick',[10^(-3),10^(-2),10^(-1),10^0,10^1]);
set(gca,'XTickLabel',{'10^{-3}','10^{-2}','10^{-1}','10^0','10^1'});
set(gca,'YTick',[10^(-1),10^0,10^1,10^2]);
set(gca,'YTickLabel',{'10^{-1}','10^0','10^1','10^2'});
ylabel('H','FontSize',10,'fontweight','bold');
%set(gca,'position',[left,top,width,height])  
set (gca,'position',[0.06,0.6,0.2,0.3] )
set(gca,'linewidth',1.5,'fontsize',12,'fontweight','bold');
axis([10.^(-3),10,min(sm_lg_Hs2_1438),max(sm_lg_Hs2_1438)]);
text(1.5*10.^(-3),6*10.^(-2),'(a)  Regime 1','FontSize',13,'fontweight','bold');
box off
ax2 = axes('Position',get(gca,'Position'),'XAxisLocation','top',...
    'YAxisLocation','right','Color','none','XColor','k','YColor','k'); 
set(ax2,'XTick', [],'YTick', []);  
set(gca,'LineWidth',1.5);

subplot(2,4,2)
loglog(lg_Hf_785,sm_lg_Hs2_785,'-', 'Color', col1,'LineWidth',2);
hold on
plot([lg_Hf_785(location_gap_785),lg_Hf_785(location_gap_785)],[min([sm_lg_Hs2_785;sm_lg_Hs2_tur_785]),max([sm_lg_Hs2_785;sm_lg_Hs2_tur_785])],'--','Color', col4,'LineWidth',2);
hold on
loglog(lg_xx_785,lg_yy_785,'Color', col3,'LineWidth',2);
set(gca,'XTick',[10^(-3),10^(-2),10^(-1),10^0,10^1]);
set(gca,'XTickLabel',{'10^{-3}','10^{-2}','10^{-1}','10^0','10^1'});
set(gca,'YTick',[10^(-3),10^(-2),10^(-1),10^0,10^1,10^2,10^3]);
set(gca,'YTickLabel',{'10^{-3}','10^{-2}','10^{-1}','10^0','10^1','10^2','10^3'});
set (gca,'position',[0.3,0.6,0.2,0.3] )
set(gca,'linewidth',1.5,'fontsize',12,'fontweight','bold');
axis([10.^(-3),10,min([sm_lg_Hs2_785;sm_lg_Hs2_tur_785]),max([sm_lg_Hs2_785;sm_lg_Hs2_tur_785])]);
text(1.5*10.^(-3),0.12,'(b)  Regime 2','FontSize',13,'fontweight','bold');
box off
ax2 = axes('Position',get(gca,'Position'),'XAxisLocation','top',...
    'YAxisLocation','right','Color','none','XColor','k','YColor','k');  
set(ax2,'XTick', [],'YTick', []); 
set(gca,'LineWidth',1.5);

subplot(2,4,3)
loglog(lg_Hf_522,sm_lg_Hs2_522,'-', 'Color', col1,'LineWidth',2);
hold on
loglog(lg_xx_522,lg_yy_522,'Color', col3,'LineWidth',2);
set(gca,'XTick',[10^(-3),10^(-2),10^(-1),10^0,10^1]);
set(gca,'XTickLabel',{'10^{-3}','10^{-2}','10^{-1}','10^0','10^1'});
set(gca,'YTick',[10^(-3),10^(-2),10^(-1),10^0,10^1,10^2,10^3]);
set(gca,'YTickLabel',{'10^{-3}','10^{-2}','10^{-1}','10^0','10^1','10^2','10^3'});
set (gca,'position',[0.54,0.6,0.2,0.3] )
set(gca,'linewidth',1.5,'fontsize',12,'fontweight','bold');
axis([10.^(-3),10,min(sm_lg_Hs2_522),max(sm_lg_Hs2_522)]);
text(1.5*10.^(-3),2.7*10.^(-2),'(c)  Regime 3','FontSize',13,'fontweight','bold');
box off
ax2 = axes('Position',get(gca,'Position'),'XAxisLocation','top',...
    'YAxisLocation','right','Color','none','XColor','k','YColor','k');  
set(ax2,'XTick', [],'YTick', []);   
set(gca,'LineWidth',1.5);

subplot(2,4,4)
h1=loglog(lg_Hf_37,sm_lg_Hs2_37,'-', 'Color', col1,'LineWidth',2);
hold on
h2=plot([lg_Hf_37(location_gap_37),lg_Hf_37(location_gap_37)],[min([sm_lg_Hs2_37;sm_lg_Hs2_tur_37]),max([sm_lg_Hs2_37;sm_lg_Hs2_tur_37])],'--','Color', col4,'LineWidth',2);
hold on
h3=loglog(lg_xx_37,lg_yy_37,'Color', col3,'LineWidth',2);
set(gca,'XTick',[10^(-3),10^(-2),10^(-1),10^0,10^1]);
set(gca,'XTickLabel',{'10^{-3}','10^{-2}','10^{-1}','10^0','10^1'});
set(gca,'YTick',[10^(-3),10^(-2),10^(-1),10^0,10^1,10^2,10^3]);
set(gca,'YTickLabel',{'10^{-3}','10^{-2}','10^{-1}','10^0','10^1','10^2','10^3'});
legend([h1,h3,h2],'original','Kaimal et al.','gap location','location','northeast','FontSize',11,'FontWeight','bold');
legend('boxoff')
set (gca,'position',[0.78,0.6,0.2,0.3] )
set(gca,'linewidth',1.5,'fontsize',12,'fontweight','bold');
axis([10.^(-3),10,min([sm_lg_Hs2_37;sm_lg_Hs2_tur_37]),max([sm_lg_Hs2_37;sm_lg_Hs2_tur_37])]);
text(1.5*10.^(-3),5.9*10.^(-1),'(d)  Regime 4','FontSize',13,'fontweight','bold');
box off
ax2 = axes('Position',get(gca,'Position'),'XAxisLocation','top',...
    'YAxisLocation','right','Color','none','XColor','k','YColor','k'); 
set(ax2,'XTick', [],'YTick', []);  
set(gca,'LineWidth',1.5);

subplot(2,4,5)
loglog(lg_Hf_1438,sm_lg_FHs2_1438,'-', 'Color', col1,'LineWidth',2);
hold on 
loglog(lg_xx_2_1438,lg_yy_2_1438,'Color', col3,'LineWidth',2);
set(gca,'XTick',[10^(-3),10^(-2),10^(-1),10^0,10^1]);
set(gca,'XTickLabel',{'10^{-3}','10^{-2}','10^{-1}','10^0','10^1'});
set(gca,'YTick',[10^(-1),10^(-0.5),10^0]);
set(gca,'YTickLabel',{'10^{-1}','10^{-0.5}','10^0'});
ylabel('\omegaH','FontSize',10,'fontweight','bold');xlabel('\omega','FontSize',10,'fontweight','bold');
set (gca,'position',[0.06,0.2,0.2,0.3] )
axis([10.^(-3),10,min(sm_lg_FHs2_1438),max(sm_lg_FHs2_1438)]);
set(gca,'linewidth',1.5,'fontsize',12,'fontweight','bold');
text(1.5*10.^(-3),7*10.^(-2),'(e)  Regime 1','FontSize',13,'fontweight','bold');
box off
ax2 = axes('Position',get(gca,'Position'),'XAxisLocation','top',...
    'YAxisLocation','right','Color','none','XColor','k','YColor','k'); 
set(ax2,'XTick', [],'YTick', []);   
set(gca,'LineWidth',1.5);

subplot(2,4,6)
loglog(lg_Hf_785,sm_lg_FHs2_785,'-', 'Color', col1,'LineWidth',2);
hold on
plot([lg_Hf_785(location_gap_785),lg_Hf_785(location_gap_785)],[min([sm_lg_FHs2_785;sm_lg_FHs2_tur_785]),max([sm_lg_FHs2_785;sm_lg_FHs2_tur_785])],'--','Color', col4,'LineWidth',2);
hold on
loglog(lg_xx_2_785,lg_yy_2_785,'Color', col3,'LineWidth',2);
set(gca,'XTick',[10^(-3),10^(-2),10^(-1),10^0,10^1]);
set(gca,'XTickLabel',{'10^{-3}','10^{-2}','10^{-1}','10^0','10^1'});
set(gca,'YTick',[10^(-5),10^(-4),10^(-3),10^(-2),10^(-1),10^0]);
set(gca,'YTickLabel',{'10^{-5}','10^{-4}','10^{-3}','10^{-2}','10^{-1}','10^0'});
set (gca,'position',[0.3,0.2,0.2,0.3] )
xlabel('\omega','FontSize',10,'fontweight','bold');
axis([10.^(-3),10,min([sm_lg_FHs2_785;sm_lg_FHs2_tur_785]),max([sm_lg_FHs2_785;sm_lg_FHs2_tur_785])]);
set(gca,'linewidth',1.5,'fontsize',12,'fontweight','bold');
text(1.5*10.^(-3),3*10.^(-3),'(f)  Regime 2','FontSize',13,'fontweight','bold');
box off
ax2 = axes('Position',get(gca,'Position'),'XAxisLocation','top',...
    'YAxisLocation','right','Color','none','XColor','k','YColor','k');  
set(ax2,'XTick', [],'YTick', []);  
set(gca,'LineWidth',1.5);

subplot(2,4,7)
loglog(lg_Hf_522,sm_lg_FHs2_522,'-', 'Color', col1,'LineWidth',2);
hold on 
loglog(lg_xx_2_522,lg_yy_2_522,'Color', col3,'LineWidth',2);
set(gca,'XTick',[10^(-3),10^(-2),10^(-1),10^0,10^1]);
set(gca,'XTickLabel',{'10^{-3}','10^{-2}','10^{-1}','10^0','10^1'});
set(gca,'YTick',[10^(-2),10^(-1.5),10^(-1),10^(-0.5),10^0]);
set(gca,'YTickLabel',{'10^{-2}','10^{-1.5}','10^{-1}','10^{-0.5}','10^0'});
xlabel('\omega','FontSize',10,'fontweight','bold');
set (gca,'position',[0.54,0.2,0.2,0.3] )
axis([10.^(-3),10,7*10.^(-3),max(sm_lg_FHs2_522)]);
set(gca,'linewidth',1.5,'fontsize',12,'fontweight','bold');
text(1.5*10.^(-3),1.15*10.^(-2),'(g)  Regime 3','FontSize',13,'fontweight','bold');
box off
ax2 = axes('Position',get(gca,'Position'),'XAxisLocation','top',...
    'YAxisLocation','right','Color','none','XColor','k','YColor','k');  
set(ax2,'XTick', [],'YTick', []);  
set(gca,'LineWidth',1.5);

subplot(2,4,8)
h1=loglog(lg_Hf_37,sm_lg_FHs2_37,'-', 'Color', col1,'LineWidth',2);
hold on
h2=plot([lg_Hf_37(location_gap_37),lg_Hf_37(location_gap_37)],[min([sm_lg_FHs2_37;sm_lg_FHs2_tur_37]),max([sm_lg_FHs2_37;sm_lg_FHs2_tur_37])],'--','Color', col4,'LineWidth',2);
hold on
h3=loglog(lg_xx_2_37,lg_yy_2_37,'Color', col3,'LineWidth',2);
set(gca,'XTick',[10^(-3),10^(-2),10^(-1),10^0,10^1]);
set(gca,'XTickLabel',{'10^{-3}','10^{-2}','10^{-1}','10^0','10^1'});
set(gca,'YTick',[10^(-5),10^(-4),10^(-3),10^(-2),10^(-1),10^(-0.5),10^0,10^0.5]);
set(gca,'YTickLabel',{'10^{-5}','10^{-4}','10^{-3}','10^{-2}','10^{-1}','10^{-0.5}','10^0','10^{0.5}'});
set (gca,'position',[0.78,0.2,0.2,0.3] )
xlabel('\omega','FontSize',10,'fontweight','bold');
axis([10.^(-3),10,10^(-0.6),max(sm_lg_FHs2_37)]);
set(gca,'linewidth',1.5,'fontsize',12,'fontweight','bold');
text(1.5*10.^(-3),1.15*10.^(-0.5),'(h)  Regime 4','FontSize',13,'fontweight','bold');
box off
ax2 = axes('Position',get(gca,'Position'),'XAxisLocation','top',...
    'YAxisLocation','right','Color','none','XColor','k','YColor','k');  
set(ax2,'XTick', [],'YTick', []); 
set(gca,'LineWidth',1.5);

% exportgraphics(gcf, 'Figure 2.jpg', 'Resolution', 600);