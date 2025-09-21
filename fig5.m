%fig5
%SS
clear;clc;close all;
load('SS.mat');

figure(1);clf;
fig=figure(1);
set(gcf,'position',[250 300 800 400])
subplot(1,2,1);
X = categorical({'\phi_{u}','\phi_{v}','\phi_{w}','\phi_{\theta}'});
X = reordercats(X,{'\phi_{u}','\phi_{v}','\phi_{w}','\phi_{\theta}'});
Y_b = [SS_u2_b SS_u4_b;SS_v2_b SS_v4_b;SS_w2_b SS_w4_b;SS_t2_b SS_t4_b];
bar(X,Y_b);
ylabel('SS');
ylim([-0.1,0.8]);
set(gca,'YTick',[-0.2,0,0.2,0.4,0.6,0.8]);
set(gca,'YTickLabel',{'-0.2','0','0.2','0.4','0.6','0.8','1'});
legend({'Regime 2', 'Regime 4'},Location='northwest');
legend('boxoff')
set(gca,'linewidth',1.5,'fontsize',13,'fontweight','bold');
text(0.03, 1.05, '(a) Unstable', 'Units', 'normalized', 'FontWeight', 'bold', 'FontSize', 13);

subplot(1,2,2);
Y_w = [SS_u2_w SS_u4_w;SS_v2_w SS_v4_w;SS_w2_w SS_w4_w;SS_t2_w SS_t4_w];
h=bar(X,Y_w);
ylabel('SS');
ylim([-0.1,0.8]);
set(gca,'YTick',[-0.2,0,0.2,0.4,0.6,0.8]);
set(gca,'YTickLabel',{'-0.2','0','0.2','0.4','0.6','0.8','1'});
set(gca,'linewidth',1.5,'fontsize',13,'fontweight','bold');
text(0.03, 1.05, '(b) Stable', 'Units', 'normalized', 'FontWeight', 'bold', 'FontSize', 13);

% exportgraphics(gcf, 'Figure 5.jpg', 'Resolution', 600);