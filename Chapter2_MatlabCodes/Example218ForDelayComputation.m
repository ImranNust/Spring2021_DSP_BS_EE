% Example217
clear; close all; clc; workspace;
x = input('Input Sequence 1 = ');
nx = input('Give the range of values for which x is define (e.g. -4:1:8)');
y = input('Input Sequence 2 = ');
ny = input('Give the range of values for which y is define (e.g. -4:1:8)');
r = conv(x, fliplr(y));

stem(min(nx):1:max(nx),x,'LineWidth',2,'Color','red');
xlabel('Time Index','FontSize',18);
ylabel('Amplitude','FontSize',18);
title('Sequence x[n]','FontSize',18);
set(gca,'Xtick',min(nx)-1:1:max(nx)+1);
grid;

figure;
stem(min(ny):1:max(ny),y,'LineWidth',2,'Color','blue');
xlabel('Time Index','FontSize',18);
ylabel('Amplitude','FontSize',18);
title('Sequence x[n-4]','FontSize',18);
set(gca,'Xtick',min(ny)-1:1:max(ny)+1);
grid;
figure;

stem(-(abs(0+abs(length(y)-1))):1:(abs(0+abs(length(x)-1))),r,'LineWidth',2,'Color','green');
xlabel('Time Index','FontSize',18);
ylabel('Amplitude','FontSize',18);
title('Cross-Correlation Sequence r_{xx}[n]','FontSize',18);
set(gca,'Xtick',-(abs(0+abs(length(y)-1))):1:(abs(0+abs(length(x)-1))));
grid;