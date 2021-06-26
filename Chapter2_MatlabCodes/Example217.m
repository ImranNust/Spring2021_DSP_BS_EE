% Example217
clear; close all; clc; workspace;
x = input('Input Sequence 1 = ');
y = input('Input Sequence 2 = ');

r = conv(x, fliplr(y));

stem(0:length(x)-1,x,'LineWidth',2,'Color','red');
xlabel('Time Index','FontSize',18);
ylabel('Amplitude','FontSize',18);
title('Sequence x[n]','FontSize',18);
set(gca,'Xtick',0:1:length(x));
grid;

figure;
stem(0:length(y)-1,y,'LineWidth',2,'Color','blue');
xlabel('Time Index','FontSize',18);
ylabel('Amplitude','FontSize',18);
title('Sequence y[n]','FontSize',18);
set(gca,'Xtick',0:1:length(y));
grid;
figure;

stem(-(abs(0+abs(length(y)-1))):1:(abs(0+abs(length(x)-1))),r,'LineWidth',2,'Color','green');
xlabel('Time Index','FontSize',18);
ylabel('Amplitude','FontSize',18);
title('Cross-Correlation Sequence r_{xy}[n]','FontSize',18);
set(gca,'Xtick',-(abs(0+abs(length(y)-1))):1:(abs(0+abs(length(x)-1))));
grid;