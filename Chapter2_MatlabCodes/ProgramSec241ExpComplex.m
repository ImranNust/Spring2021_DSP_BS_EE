% Sinusoidal Input
clear; close all; clc; workspace;
n=0:1:40;
A = exp((-1/12).*n);
wo = pi/6;
ph = 0;
xrel = A.*cos(wo.*n);
ximg = A.*sin(wo.*n);

%% Real Part
stem(n,xrel,'LineWidth',1.5);
title('Real Component of Complex Exponential Sequence |e^{(-1/12)n}|cos(w_on +\phi)','FontSize',12);
xlabel('Time Value','FontSize', 12);
ylabel('Amplitude','FontSize',12);
set(gca,'Xtick',0:5:40,'FontSize',12);grid;
axis([0,40,-2 2]);
legend({'Here w_o = \pi/6 and \phi = 0'},'FontSize',12,'TextColor','red','Location','southwest');

%% Imaginary Part
stem(n,ximg,'LineWidth',1.5);
title('Imag Component of Complex Exponential Sequence |e^{(-1/12)n}|sin(w_on +\phi)','FontSize',12);
xlabel('Time Value','FontSize', 12);
ylabel('Amplitude','FontSize',12);
set(gca,'Xtick',0:5:40,'FontSize',12);grid;
axis([0,40,-2 2]);
legend({'Here w_o = \pi/6 and \phi = 0'},'FontSize',12,'TextColor','red','Location','southwest');




