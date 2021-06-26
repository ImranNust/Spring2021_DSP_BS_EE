% Sinusoidal Input
clear; close all; clc; workspace;
n=0:1:40;
A = 1.5;
wo = 0.1*pi;
ph = 0;

%% x1[n]
x = A.*cos(wo.*n+ph);

stem(n,x,'LineWidth',1.5);
title('Sinusoidal Sequence x_1[n] = A\times cos(w_1n +\phi)','FontSize',18);
xlabel('Time Value','FontSize', 18);
ylabel('Amplitude','FontSize',18);
set(gca,'Xtick',0:5:40,'FontSize',18);grid;
axis([0,40,-2 2]);
legend({'Here w_1 = 0.1*\pi and \phi = 0'},'FontSize',18,'TextColor','red','Location','southwest');

%% x1[n]
figure;
k = 1;
w2 = wo + 2*pi*k;
x = A.*cos(w2.*n+ph);

stem(n,x,'LineWidth',1.5);
title('Sinusoidal Sequence x_2[n] = A\times cos(w_2n +\phi)','FontSize',18);
xlabel('Time Value','FontSize', 18);
ylabel('Amplitude','FontSize',18);
set(gca,'Xtick',0:5:40,'FontSize',18);grid;
axis([0,40,-2 2]);
legend({'Here w_2 = w_1+2\pi k, where k=1 and \phi = 0'},'FontSize',18,'TextColor','red','Location','southwest');
