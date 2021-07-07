%% Example 3.10
clear; close all; clc; workspace

M =10;
alpha = 0.5;

n = 0:1:M-1;
y = alpha.^n;
stem(n,y,'LineWidth',2,'Color','b');grid; grid minor;
str = '$$ \alpha^n \mu [n] - \alpha^n \mu [n-M]$$';
title(str,'Interpreter','Latex','FontSize',18,'Color','r','FontWeight','bold');
ylabel('Amplitude'); xlabel('Time Index');
set(gca,'GridColor','r','GridAlpha',0.8,'MinorGridAlpha',0.7,...
    'FontSize',16,'Xtick',-1:1:M,'XColor','m','YColor','m','YTick',0:0.1:1);
str = '$$ M = 10 $$';
text(8.2,0.93,str,'Interpreter','Latex','FontSize',20,'FontWeight','bold','Color','b')

%% Discrete-Time Fourier Transform 
figure;
w = -3*pi:0.01:3*pi;
num = 1 + alpha^M*(exp(-1i*w*M));
den = 1 - alpha*exp(-1i*w);
Y =num./den;
MagY = abs(Y);
PhasY = phase(Y);

plot(w,MagY,'LineWidth',2,'Color','b');
xlabel('Normalized Frequencey (\omega)');
ylabel('Amplitude');grid; grid minor;
str = '$$Magnitude Plot: |Y(e^{j\omega})|$$';
title(str,'Interpreter','Latex','FontSize',18,'Color','r');
set(gca,'Xtick',[-3*pi,-2*pi,-pi,0,pi,2*pi,3*pi],'XtickLabel',...
    {'-3\pi','-2\pi','-\pi','0','\pi','2\pi','3\pi'},'FontSize',18,...
    'XColor','r','YColor','r','MinorGridAlpha',0.9,'MinorGridColor','b',...
    'GridAlpha',0.9,'GridColor','g');
figure;
plot(w,PhasY,'LineWidth',2,'Color','b');
xlabel('Normalized Frequencey (\omega)');
ylabel('Phase in Radians');grid; grid minor;
str = '$$Phase Plot: \angle Y(e^{j\omega})$$';
title(str,'Interpreter','Latex','FontSize',18,'Color','r');
set(gca,'Xtick',[-3*pi,-2*pi,-pi,0,pi,2*pi,3*pi],'XtickLabel',...
    {'-3\pi','-2\pi','-\pi','0','\pi','2\pi','3\pi'},'FontSize',18,...
    'XColor','r','YColor','r','MinorGridAlpha',0.9,'MinorGridColor','b',...
    'GridAlpha',0.9,'GridColor','g');