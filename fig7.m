%fig7
%SS
clear;clc;close all;
load('SS.mat');

figure(1);clf;
fig=figure(1);
set(gcf,'position',[250 300 800 400])
subplot(1,2,1);
X = categorical({'\phi_{u}','\phi_{v}','\phi_{w}','\phi_{\theta}','\phi_{m}','\phi_{h}'});
X = reordercats(X,{'\phi_{u}','\phi_{v}','\phi_{w}','\phi_{\theta}','\phi_{m}','\phi_{h}'});
Y_b = [SS_u2_b SS_u4_b;SS_v2_b SS_v4_b;SS_w2_b SS_w4_b;SS_t2_b SS_t4_b;SS_m2_b SS_m4_b;SS_h2_b SS_h4_b];
bar(X,Y_b);
ylabel('SS');
ylim([-0.2,0.8]);
set(gca,'YTick',[-0.2,0,0.2,0.4,0.6,0.8]);
set(gca,'YTickLabel',{'-0.2','0','0.2','0.4','0.6','0.8','1'});
legend({'Regime 2', 'Regime 4'},Location='northwest');
legend('boxoff')
set(gca,'linewidth',1.5,'fontsize',13,'fontweight','bold');
text(0.37, 1.05, 'Unstable', 'Units', 'normalized', 'FontWeight', 'bold', 'FontSize', 13);

subplot(1,2,2);
Y_w = [SS_u2_w SS_u4_w;SS_v2_w SS_v4_w;SS_w2_w SS_w4_w;SS_t2_w SS_t4_w;SS_m2_w SS_m4_w;SS_h2_w SS_h4_w];
h=bar(X,Y_w);
ylabel('SS');
ylim([-0.2,0.8]);
set(gca,'YTick',[-0.2,0,0.2,0.4,0.6,0.8]);
set(gca,'YTickLabel',{'-0.2','0','0.2','0.4','0.6','0.8','1'});
set(gca,'linewidth',1.5,'fontsize',13,'fontweight','bold');
text(0.4, 1.05, 'Stable', 'Units', 'normalized', 'FontWeight', 'bold', 'FontSize', 13);

% exportgraphics(gcf, 'Figure 7.jpg', 'Resolution', 600);