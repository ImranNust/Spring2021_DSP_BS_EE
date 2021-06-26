% Program for circulal time reversal
clear; close all; clc; workspace;
x = [1,2,3,4,5];
n=0:length(x)-1;
stem(n,x,'LineWidth',1.5,'Color','Blue');
set(gca, 'XTick',0:1:4) ;
title('Original Signal x[n]: Example2_7.m','FontSize',18);
xlabel('Time Value','FontSize',18); ylabel('Amplitude','FontSize',18); grid;

%% Circular Time Reversal
figure;
n1=mod(-n,length(x))+1;
y=x(n1);
stem(n,y,'LineWidth',1.5,'Color','Red');
set(gca, 'XTick',0:1:4) ;
title('Time Reversed Sequence y[n]: Example2_7.m','FontSize',18);
xlabel('Time Value','FontSize',18); ylabel('Amplitude','FontSize',18); grid;
