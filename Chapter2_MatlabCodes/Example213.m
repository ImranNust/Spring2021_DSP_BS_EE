% Sinusoidal Input
clear; close all; clc; workspace;
%% First Sequence x1[n]
subplot(221);
n=0:1:80;
A = 1;
w1 = 0.05*pi;
ph = 0;
x1 =  A.*sin(w1.*n+ph);
stem(n,x1,'LineWidth',1.5);
title('x_1[n]=sin(0.05\pi n)','FontSize',18);
xlabel('Time Value','FontSize', 18);
ylabel('Amplitude','FontSize',18);
set(gca,'Xtick',0:10:80,'FontSize',18);grid;
axis([0,80,-1.2 1.2]);
%legend({'Here N_1 = 10 and N_2 = 31'},'FontSize',18,'TextColor','red','Location','south');

%% x[n]
subplot(222);
w2 = 0.15*pi;
x2 = A.*sin(w2.*n+ph);

stem(n,x2,'LineWidth',1.5);
title('x_2[n]=sin(0.15\pi n)','FontSize',18);
xlabel('Time Value','FontSize', 18);
ylabel('Amplitude','FontSize',18);
set(gca,'Xtick',0:10:80,'FontSize',18);grid;
axis([0,80,-1.2 1.2]);
%legend({'Here w_1 = 0.1*\pi and \phi = 0'},'FontSize',18,'TextColor','red','Location','southwest');



%% composite signal
subplot(223);
w3 = 0.25*pi;
x3 = A.*sin(w3.*n+ph);

stem(n,x3,'LineWidth',1.5);
title('x_3[n]=sin(0.25\pi n)','FontSize',18);
xlabel('Time Value','FontSize', 18);
ylabel('Amplitude','FontSize',18);
set(gca,'Xtick',0:10:80,'FontSize',18);grid;
axis([0,80,-1.2 1.2]);
%legend({'Here w_2 = w_1+2\pi k, where k=1 and \phi = 0'},'FontSize',18,'TextColor','red','Location','southwest');

%% Composite Signal
subplot(224);
y = x1+(1/3)*x2+(1/5)*x3;


stem(n,y,'LineWidth',1.5);
title('x[n]=x_1[n]+1/3\times x_2[n]+1/5\times x_3[n]','FontSize',18);
xlabel('Time Value','FontSize', 18);
ylabel('Amplitude','FontSize',18);
set(gca,'Xtick',0:10:80,'FontSize',18);grid;
axis([0,80,-1.2 1.2]);
%legend({'Here w_2 = w_1+2\pi k, where k=1 and \phi = 0'},'FontSize',18,'TextColor','red','Location','southwest');
