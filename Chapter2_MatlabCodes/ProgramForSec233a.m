% Program for circulal time reversal
clear; close all; clc; workspace;
x = [1,2,3,4,5,6];
x1=[fliplr(x),0,x]
n=-length(x):length(x);
subplot(211);
stem(n,x1,'LineWidth',1.5,'Color','Blue');
set(gca, 'XTick',-length(x):1:length(x),'FontSize',18) ;
title('ProgramForSec233a.m','FontSize',18);
xlabel('Time Value','FontSize',18); ylabel('Amplitude','FontSize',18); grid;
legend('Even Sequence x[n]=x[-n]');
%% Circular Time Reversal


y=[-fliplr(x),0,x];
subplot(212);
stem(n,y,'LineWidth',1.5,'Color','Red');
set(gca, 'XTick',-length(x):1:length(x),'FontSize',18) ;
title('ProgramForSec233a.m','FontSize',18);
xlabel('Time Value','FontSize',18); ylabel('Amplitude','FontSize',18); grid;
legend('Odd Sequence x[n]=-x[-n]');
