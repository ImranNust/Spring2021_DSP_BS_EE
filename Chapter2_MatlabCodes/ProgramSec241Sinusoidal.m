% Sinusoidal Input
clear; close all; clc; workspace;
n=0:1:40;
A = 1.5;
wo = 1.2*pi;
ph = 0;
x = A.*cos(wo.*n+ph);

stem(n,x,'LineWidth',1.5);
title('Sinusoidal Sequence Acos(w_on +\phi)','FontSize',18);
xlabel('Time Value','FontSize', 18);
ylabel('Amplitude','FontSize',18);
set(gca,'Xtick',0:5:40,'FontSize',18);grid;
axis([0,40,-2 2]);
legend({'Here w_o = 1.2*\pi and \phi = 0'},'FontSize',18,'TextColor','red','Location','southwest');
