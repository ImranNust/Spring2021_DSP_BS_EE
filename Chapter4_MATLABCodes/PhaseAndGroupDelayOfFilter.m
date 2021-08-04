clear; close all; clc

% The impulse response is h[n]=?6.76195?[0]+13.456335?[n?1]?6.76195?[n?2]
num = [-6.76195, 13.456335, -6.76195];
den = 1;


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