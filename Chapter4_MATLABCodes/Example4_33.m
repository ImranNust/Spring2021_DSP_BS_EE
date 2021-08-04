%% Example 4.33 %%
clear; close all; clc

h = [-562949953421312/83252609650329, 1120275096994552/83252609650329,-562949953421312/83252609650329];

[H, w] = freqz(h,1,256);

%% Magnitude Response
m = abs(H);
plot(w/pi,m,'LineWidth',2,'Color','b');
xlabel('\omega/\pi'); ylabel('Magnitude');
title('|2\alpha_0 cos(\omega)+\alpha_1|','Color','b','FontWeight','bold',...
    'FontSize',12)
grid; grid minor
set(gca,'GridAlpha',1,'MinorGridAlpha',1,'GridColor','r','MinorGridColor','b',...
    'FontWeight','bold','FontSize',12,'xcolor','b','ycolor','b')

%% Phase Response
ph1 = angle(H)*180/pi;figure;
plot(w/pi,ph1,'LineWidth',2,'Color','b');
xlabel('\omega/\pi'); ylabel('Phase in Degrees');
title('\theta(\omega)=-\omega','Color','b','FontWeight','bold',...
    'FontSize',12)
grid; grid minor
set(gca,'GridAlpha',1,'MinorGridAlpha',1,'GridColor','r','MinorGridColor','b',...
    'FontWeight','bold','FontSize',12,'xcolor','b','ycolor','b')

%% Implementing the Filter (High-Pass Filter)
n = 1: 120;
x1 = cos(0.1*n); % Low-Frequency Component
figure;plot(n,x1,'LineWidth',2,'Color','b');axis([min(n)-1,max(n),-2,2]);
xlabel('Time Index n'); ylabel('Amplitude');
title('Low-frequency Component: x_1[n]=cos(0.1n)','Color','b','FontWeight','bold',...
    'FontSize',12)
grid; grid minor
set(gca,'GridAlpha',1,'MinorGridAlpha',1,'GridColor','r','MinorGridColor','b',...
    'FontWeight','bold','FontSize',12,'xcolor','b','ycolor','b')
x2 = cos(0.4*n); % High-Frequency Component
figure;plot(n,x2,'LineWidth',2,'Color','b');axis([min(n)-1,max(n),-2,2]);
xlabel('Time Index n'); ylabel('Amplitude');
title('High-frequency Component: x_2[n]=cos(0.4n)','Color','b','FontWeight','bold',...
    'FontSize',12)
grid; grid minor
set(gca,'GridAlpha',1,'MinorGridAlpha',1,'GridColor','r','MinorGridColor','b',...
    'FontWeight','bold','FontSize',12,'xcolor','b','ycolor','b')

% Composit signal
xx = x1+x2;
figure;plot(n,xx,'LineWidth',2,'Color','b');axis([min(n)-1,max(n),-2,2]);
xlabel('Time Index n'); ylabel('Amplitude');
title('x[n]=x_1[n]+x_2[n]=cos(0.1n)+cos(0.4n)','Color','b','FontWeight','bold',...
    'FontSize',12)
grid; grid minor
set(gca,'GridAlpha',1,'MinorGridAlpha',1,'GridColor','r','MinorGridColor','b',...
    'FontWeight','bold','FontSize',12,'xcolor','b','ycolor','b')

% Applying the filtering
% Composit signal
y = filter(h,1,xx,[0,0]);
figure;plot(n,y,'LineWidth',2,'Color','b');axis([min(n)-1,max(n),-2,2]);
xlabel('Time Index n'); ylabel('Amplitude');
title('Filtered Output','Color','b','FontWeight','bold',...
    'FontSize',12)
grid; grid minor
set(gca,'GridAlpha',1,'MinorGridAlpha',1,'GridColor','r','MinorGridColor','b',...
    'FontWeight','bold','FontSize',12,'xcolor','b','ycolor','b')

figure;
plot(n,x1,'r.',n,x2,'g-',n,xx,'b-.',n,y,'k','LineWidth',2);axis([min(n)-1,max(n),-2,2]);
xlabel('Time Index n'); ylabel('Amplitude');
title('Filtering','Color','b','FontWeight','bold',...
    'FontSize',12)
grid; grid minor
set(gca,'GridAlpha',1,'MinorGridAlpha',1,'GridColor','r','MinorGridColor','b',...
    'FontWeight','bold','FontSize',12,'xcolor','b','ycolor','b')
legend('Low-Frequency Signal','High-Frequency Signal','Composite Signal','Filtered Signal');