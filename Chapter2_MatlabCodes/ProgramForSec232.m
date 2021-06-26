% Program for circulal time reversal
clear; close all; clc; workspace;
x = [1,2,3,4,5,6];
n=0:length(x)-1;
subplot(121);
stem(n,x,'LineWidth',1.5,'Color','Blue');
set(gca, 'XTick',0:1:length(x)-1,'FontSize',18) ;
title('Original Signal x[n]','FontSize',18);
xlabel('Time Value','FontSize',18); ylabel('Amplitude','FontSize',18); grid;

%% Circular Time Reversal

no = 1;
n1=mod(n-no,length(x))+1;
y=x(n1);
subplot(122);
stem(n,y,'LineWidth',1.5,'Color','Red');
set(gca, 'XTick',0:1:length(y)-1,'FontSize',18) ;
title('ProgramForSec232.m','FontSize',18);
xlabel('Time Value','FontSize',18); ylabel('Amplitude','FontSize',18); grid;
legend('Circular Time Shifted Sequence y[n]=x[<n-1>_6]');
