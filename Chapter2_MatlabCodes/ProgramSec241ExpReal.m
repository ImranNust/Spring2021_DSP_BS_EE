% Sinusoidal Input
clear; close all; clc; workspace;
n=0:1:40;
%% Growing \alpha = 1.2
A = 0.2 ;
alpha = 1.2;

x1 = A.*(alpha.^n);


stem(n,x1,'LineWidth',1.5);
title('Growing Exponential Sequence 0.2(1.2)^n','FontSize',12);
xlabel('Time Value','FontSize', 12);
ylabel('Amplitude','FontSize',12);
set(gca,'Xtick',0:5:40,'FontSize',12);grid;
%axis([0,40,-2 2]);
legend({'Here A = 0.2  and \alpha = 1.2'},'FontSize',12,'TextColor','red','Location','northeast');


%% Decaying \alpha = 1.2
figure;
A = 20 ;
alpha = 0.9;

x1 = A.*(alpha.^n);


stem(n,x1,'LineWidth',1.5);
title('Decaying Exponential Sequence 20(0.9)^n','FontSize',12);
xlabel('Time Value','FontSize', 12);
ylabel('Amplitude','FontSize',12);
set(gca,'Xtick',0:5:40,'FontSize',12);grid;
%axis([0,40,-2 2]);
legend({'Here A = 20  and \alpha = 0.9'},'FontSize',12,'TextColor','red','Location','northeast');



