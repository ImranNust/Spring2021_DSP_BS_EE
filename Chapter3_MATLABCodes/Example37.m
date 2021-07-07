%% Example 3.7
clear; close all; clc; workspace;
n=0:1:10;
alpha = 0.5;

x = alpha.^n;
stem(n,x,'LineWidth',2,'Color','blue');
title('x[n]=\alpha^n\mu[n]','FontSize',18,'Color','red');
xlabel('\omega in radians/sec','FontSize',18,'Color','b');
ylabel('Amplitude','FontSize',18,'Color','b');
set(gca,'xtick',-4:1:4,'FontSize',18);
set(gca,'Xtick',-5:1:10,'XColor','m','YColor','m');
axis([-5 10 -0.2 1.2]);
grid;
figure;

%% Fourier Transform
w = -3*pi:0.001:3*pi;
X = 1./(1-alpha*exp(-1i*w));
magX = abs(X);
angX = angle(X);

plot(w,magX,'LineWidth',2);
title('Mangnitude Plot','FontSize',18,'Color','red');
xlabel('\omega in radians/sample','FontSize',18,'Color','b');
ylabel('Amplitude','FontSize',18,'Color','b');
%set(gca,'xtick',-3*pi:5:4*pi,'FontSize',18);
set(gca,'XTick',-3*pi:pi/2:3*pi,'XColor','m','YColor','m') 
set(gca,'XTickLabel',{'-3\pi','-2.5\pi','-2\pi','-1.5\pi','-\pi','-\pi/2',...
    '0','\pi/2','\pi','1.5\pi','2\pi','2.5\pi','3\pi'}) 
grid;

figure;
plot(w,angX,'LineWidth',2);
title('Phase Plot','FontSize',18,'Color','red');
xlabel('\omega in radians','FontSize',18,'Color','b');
ylabel('phase in radians','FontSize',18);
set(gca,'XTick',-3*pi:pi/2:3*pi,'XColor','m','YColor','m') 
set(gca,'XTickLabel',{'-3\pi','-2.5\pi','-2\pi','-1.5\pi','-\pi','-\pi/2',...
    '0','\pi/2','\pi','1.5\pi','2\pi','2.5\pi','3\pi'}) 
grid;

%%%%%%%%%%%%%%%%%%%%% REAL AND IMAGINARY FUNCTION %%%%%%%%%%%%%%%%%%%%%%
realX = real(X);
imgX = imag(X);
figure;
plot(w,realX,'LineWidth',2);
title('Real Part','FontSize',18,'Color','red');
xlabel('\omega in radians/sample','FontSize',18,'Color','b');
ylabel('Amplitude','FontSize',18,'Color','b');
%set(gca,'xtick',-3*pi:5:4*pi,'FontSize',18);
set(gca,'XTick',-3*pi:pi/2:3*pi,'XColor','m','YColor','m') 
set(gca,'XTickLabel',{'-3\pi','-2.5\pi','-2\pi','-1.5\pi','-\pi','-\pi/2',...
    '0','\pi/2','\pi','1.5\pi','2\pi','2.5\pi','3\pi'}) 
grid;

figure;
plot(w,imgX,'LineWidth',2);
title('Imaginary Part','FontSize',18,'Color','red');
xlabel('\omega in radians','FontSize',18,'Color','b');
ylabel('Amplitude','FontSize',18);
set(gca,'XTick',-3*pi:pi/2:3*pi,'XColor','m','YColor','m') 
set(gca,'XTickLabel',{'-3\pi','-2.5\pi','-2\pi','-1.5\pi','-\pi','-\pi/2',...
    '0','\pi/2','\pi','1.5\pi','2\pi','2.5\pi','3\pi'}) 
grid;
