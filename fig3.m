clear;clc;close all;
load('U_ori.mat');

col5=[111 174 224]./255;col5=roundn(col5,-4);
col6=[142 51 138]./255;col6=roundn(col6,-4);

figure(1);clf;
fig=figure(1);
set(gcf,'position',[250 300 1200 800])
subplot(4,1,1);
plot(U_ori_1438,'LineWidth',1.5,'Color',col5);
hold on
yline(0, '--', 'LineWidth', 2,'Color',col6);
ylim([-4,4]);
set(gca,'XTick',(0:2000:18000));
set(gca,'XTickLabel',{'0','200','400','600','800','1000','1200','1400','1600','1800'});
ylabel('u'' (ms^{-1})','FontSize',10,'fontweight','bold');
set(gca,'linewidth',1.5,'fontsize',12,'fontweight','bold');
text(200,3,'(a)  Regime 1','FontSize',13,'fontweight','bold');
box off
ax1 = axes('Position',get(gca,'Position'),'XAxisLocation','top',...
    'YAxisLocation','right','Color','none','XColor','k','YColor','k');  % 设置坐标区
set(ax1,'XTick', [],'YTick', []);   % 去掉xy轴刻度
set(gca,'LineWidth',1.5);

subplot(4,1,2);
plot(U_ori_785,'b','LineWidth',1.5,'Color',col5);
hold on
yline(0, '--', 'LineWidth', 2,'Color',col6);
ylim([-4,4]);
set(gca,'XTick',(0:2000:18000));
set(gca,'XTickLabel',{'0','200','400','600','800','1000','1200','1400','1600','1800'});
ylabel('u'' (ms^{-1})','FontSize',10,'fontweight','bold');
set(gca,'linewidth',1.5,'fontsize',12,'fontweight','bold');
text(200,3,'(b)  Regime 2','FontSize',13,'fontweight','bold');
box off
ax1 = axes('Position',get(gca,'Position'),'XAxisLocation','top',...
    'YAxisLocation','right','Color','none','XColor','k','YColor','k');  % 设置坐标区
set(ax1,'XTick', [],'YTick', []);   % 去掉xy轴刻度
set(gca,'LineWidth',1.5);

subplot(4,1,3);
plot(U_ori_522,'b','LineWidth',1.5,'Color',col5);
hold on
yline(0, '--', 'LineWidth', 2,'Color',col6);
ylim([-4,4]);
set(gca,'XTick',(0:2000:18000));
set(gca,'XTickLabel',{'0','200','400','600','800','1000','1200','1400','1600','1800'});
ylabel('u'' (ms^{-1})','FontSize',10,'fontweight','bold');
set(gca,'linewidth',1.5,'fontsize',12,'fontweight','bold');
text(200,3,'(c)  Regime 3','FontSize',13,'fontweight','bold');
box off
ax1 = axes('Position',get(gca,'Position'),'XAxisLocation','top',...
    'YAxisLocation','right','Color','none','XColor','k','YColor','k');  % 设置坐标区
set(ax1,'XTick', [],'YTick', []);   % 去掉xy轴刻度
set(gca,'LineWidth',1.5);

subplot(4,1,4);
plot(U_ori_37,'b','LineWidth',1.5,'Color',col5);
hold on
yline(0, '--', 'LineWidth', 2,'Color',col6);
ylim([-4,4]);
set(gca,'XTick',(0:2000:18000));
set(gca,'XTickLabel',{'0','200','400','600','800','1000','1200','1400','1600','1800'});
ylabel('u'' (ms^{-1})','FontSize',10,'fontweight','bold');
xlabel('Time (s)','FontSize',10,'fontweight','bold');
set(gca,'linewidth',1.5,'fontsize',12,'fontweight','bold');
text(200,3,'(d)  Regime 4','FontSize',13,'fontweight','bold');
box off
ax1 = axes('Position',get(gca,'Position'),'XAxisLocation','top',...
    'YAxisLocation','right','Color','none','XColor','k','YColor','k');  % 设置坐标区
set(ax1,'XTick', [],'YTick', []);   % 去掉xy轴刻度
set(gca,'LineWidth',1.5);

% exportgraphics(gcf, 'Figure 3.jpg', 'Resolution', 600);