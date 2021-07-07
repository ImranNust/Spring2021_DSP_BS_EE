%% Example 3.1
clear; close all; clc; workspace;
t=0:0.01:10;
alpha = 0.5;

x = exp(-alpha.*t);
plot(t,x,'LineWidth',2,'Color','blue');
hold on
stem(0,1,'LineWidth',2,'Color','blue');
title('x(t)=e^{-j0.5t}','FontSize',18,'Color','red');
xlabel('\Omega in radians/sec','FontSize',18,'Color','b');
axis([-5 10 -0.2 1.2]);
grid; grid minor; 
set(gca,'xtick',-4:1:4,'FontSize',18);
set(gca,'Xtick',-10:2:10,'XColor','m','YColor','m','GridAlpha',1,'MinorGridAlpha',1,...
    'GridColor','r','MinorGridColor','b');
figure;

%% Fourier Transform
Omega = -4:0.001:4;
X = 1./(alpha+1i*Omega);
magX = abs(X);
angX = angle(X);

plot(Omega,magX,'LineWidth',2);
title('Mangnitude Plot','FontSize',18,'Color','red');
xlabel('\Omega in radians/sec','FontSize',18,'Color','b');
set(gca,'xtick',-4:1:4,'FontSize',18,'GridAlpha',1,'MinorGridAlpha',1,...
    'GridColor','r','MinorGridColor','b');
grid; grid minor

figure;
plot(Omega,angX,'LineWidth',2);
title('Phase in radianse','FontSize',18,'Color','red');
xlabel('\Omega in radians/sec','FontSize',18,'Color','b');
set(gca,'xtick',-4:1:4,'FontSize',18,'XColor','m','YColor','m','GridAlpha',1,'MinorGridAlpha',1,...
    'GridColor','r','MinorGridColor','b');
grid; grid minor