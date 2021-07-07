%% Example 3.12
clear; close all; clc; workspace

M =20;
alpha = 0.75;

n = 0:1:M-1;
y = ((-1).^n).*alpha.^n;
stem(n,y,'LineWidth',2,'Color','b');grid; grid minor;
str = '$$(-1)^n \alpha^n \mu [n] \ \ \ where, 0\leq n\leq 20$$';
title(str,'Interpreter','Latex','FontSize',18,'Color','r','FontWeight','bold');
ylabel('Amplitude'); xlabel('Time Index');
set(gca,'GridColor','r','GridAlpha',0.8,'MinorGridAlpha',0.7,...
    'FontSize',16,'Xtick',-1:2:M,'XColor','m','YColor','m','YTick',-1:0.2:1);
str = '$$ \alpha = 0.75 $$';
text(17,0.83,str,'Interpreter','Latex','FontSize',18,'Color','b')

%% Discrete-Time Fourier Transform 
figure;
w = -3*pi:0.01:3*pi;
num = 1 ;
den = 1 + alpha*exp(-1i*w);
Y =num./den;
MagY = abs(Y);
PhasY = phase(Y);

plot(w,MagY,'LineWidth',2,'Color','b');
xlabel('Normalized Frequencey (\omega)');
ylabel('Amplitude');grid; grid minor;
str = '$$Magnitude Plot: |Y(e^{j\omega})|=|\frac{1}{1+\alpha e^{-j\omega}}|$$';
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