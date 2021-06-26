% Sinusoidal Input
clear; close all; clc; workspace;
n=0:1:40;
x1 = [zeros(1,9), ones(1,22), zeros(1,10)];
stem(n,x1,'LineWidth',1.5);
title('Rectangular Window Sequence x_R[n]','FontSize',18);
xlabel('Time Value','FontSize', 18);
ylabel('Amplitude','FontSize',18);
set(gca,'Xtick',0:5:40,'FontSize',18);grid;
axis([0,40,-2 2]);
legend({'Here N_1 = 10 and N_2 = 31'},'FontSize',18,'TextColor','red','Location','south');

%% x[n]
figure;
A = 1.5;
wo = 0.1*pi;
ph = 0;

x = A.*cos(wo.*n+ph);

stem(n,x,'LineWidth',1.5);
title('Sinusoidal Sequence x[n] = A\times cos(w_1n +\phi)','FontSize',18);
xlabel('Time Value','FontSize', 18);
ylabel('Amplitude','FontSize',18);
set(gca,'Xtick',0:5:40,'FontSize',18);grid;
axis([0,40,-2 2]);
legend({'Here w_1 = 0.1*\pi and \phi = 0'},'FontSize',18,'TextColor','red','Location','southwest');

%% x1[n].w_R[n]
figure;

x2 = x.*x1;

stem(n,x2,'LineWidth',1.5);
title('After Windowing x[n].\times w_R[n]','FontSize',18);
xlabel('Time Value','FontSize', 18);
ylabel('Amplitude','FontSize',18);
set(gca,'Xtick',0:5:40,'FontSize',18);grid;
axis([0,40,-2 2]);
%legend({'Here w_2 = w_1+2\pi k, where k=1 and \phi = 0'},'FontSize',18,'TextColor','red','Location','southwest');
