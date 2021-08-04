clear; close all; clc

num = 0.136728736*[1, 0, -1];
den = [1 -0.53353098 0.726542528];


%% Phase Delay
[phi, w] = phasedelay(num, den, 1024);
figure;plot(w/pi, phi,'LineWidth',2,'Color','b');%axis([min(n)-1,max(n),-2,2]);
xlabel('\omega/\pi'); ylabel('Phase Delay, Samples');
title('Phase Delay','Color','b','FontWeight','bold',...
    'FontSize',12)
grid; grid minor
set(gca,'GridAlpha',1,'MinorGridAlpha',1,'GridColor','r','MinorGridColor','b',...
    'FontWeight','bold','FontSize',12,'xcolor','b','ycolor','b')


%% Group Delay
[phi, w] = grpdelay(num, den, 1024);
figure;plot(w/pi, phi,'LineWidth',2,'Color','b');%axis([min(n)-1,max(n),-2,2]);
xlabel('\omega/\pi'); ylabel('Group Delay, Samples');
title('Group Delay','Color','b','FontWeight','bold',...
    'FontSize',12)
grid; grid minor
set(gca,'GridAlpha',1,'MinorGridAlpha',1,'GridColor','r','MinorGridColor','b',...
    'FontWeight','bold','FontSize',12,'xcolor','b','ycolor','b')