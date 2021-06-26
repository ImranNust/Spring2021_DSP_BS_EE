% Program for circulal time reversal
clear; close all; clc; workspace;
x = [1,2,3,4,5,0,0];
x1=repmat(x,[1,3]);
n=0:length(x1)-1;
stem(n,x1,'LineWidth',1.5,'Color','Blue');
set(gca, 'XTick',0:length(x1)-1,'FontSize',18) ;
title('ProgramForSec233Periodic.m','FontSize',18);
xlabel('Time Value','FontSize',18); ylabel('Amplitude','FontSize',18); grid;
legend('Perioid Sequence x[n]=x[n+7]');
