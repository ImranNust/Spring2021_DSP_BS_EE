% Sinusoidal Input
clear; close all; clc; workspace;
%% First Sequence x1[n]
%subplot(221);
n=0:0.01:350;
A = 1;
w1 = 0.1*pi;
w2 = 0.01*pi;
ph = 0;
x1 =  A.*cos((w1+w2).*n+ph);
plot(n,x1,'LineWidth',1.5);
title('x_1[n]=cos((w_1+w_2)\pi n)','FontSize',18);
xlabel('Time Value','FontSize', 18);
ylabel('Amplitude','FontSize',18);
%set(gca,'Xtick',0:10:80,'FontSize',18);grid;
%axis([0,80,-1.2 1.2]);
legend({'Here w_1 = 0.1\pi and w_2 = 0.01\pi'},'FontSize',18,'TextColor','red','Location','southwest');

%% x[n]
figure;

x2 = A.*cos((w2-w1).*n+ph);

plot(n,x2,'LineWidth',1.5);
title('x_2[n]=cos((w_2-w_1)\pi n)','FontSize',18);
xlabel('Time Value','FontSize', 18);
ylabel('Amplitude','FontSize',18);
% set(gca,'Xtick',0:10:80,'FontSize',18);grid;
% axis([0,80,-1.2 1.2]);
legend({'Here w_1 = 0.1\pi and w_2 = 0.01\pi'},'FontSize',18,'TextColor','red','Location','southwest');




%% Composite Signal
figure;
y = 1/2*x1+(1/2)*x2;

plot(n,y,'LineWidth',1.5);
title('x[n]=1/2cos((w_1+w_2)\pi n)+1/2cos((w_2-w_1)\pi n)','FontSize',18);
xlabel('Time Value','FontSize', 18);
ylabel('Amplitude','FontSize',18);
% set(gca,'Xtick',0:10:80,'FontSize',18);grid;
% axis([0,80,-1.2 1.2]);
%legend({'Here w_2 = w_1+2\pi k, where k=1 and \phi = 0'},'FontSize',18,'TextColor','red','Location','southwest');
