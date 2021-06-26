% Step Input
clear; close all; clc; workspace;
n=-10:1:10;
x=[zeros(1,10), ones(1,11)];
stem(n,x,'LineWidth',1.5);
title('Unit Step Sequence \mu[n]','FontSize',18);
xlabel('Time Value','FontSize', 18);
ylabel('Amplitude','FontSize',18);
set(gca,'Xtick',-10:2:10,'FontSize',18);grid;
figure;
%% Shifted Version
k = -2;
x = [zeros(1,10+k),ones(1,11-k)];
stem(n,x,'LineWidth',1.5);
title('Unit Step Sequence \mu[n-k]','FontSize',18);
xlabel('Time Value','FontSize', 18);
ylabel('Amplitude','FontSize',18);
set(gca,'Xtick',-10:2:10,'FontSize',18);grid;
legend({'Here K = -2'},'FontSize',18,'TextColor','red','Location','northwest');