clear; close; clc;
%% Consider an input sequence
x = [3, -2, 5, 1];
n = 0:length(x)-1;
stem(n,x,'LineWidth',2,'Color','b'); grid; grid minor;
title('Original Signal');
set(gca,'FontSize',12,'GridAlpha',1,'MinorGridAlpha',1,'GridColor','b','MinorGridColor','r',...
    'Xtick',0:1:length(x));

%% performing Up-Sampling
x1 = zeros(1,3*length(x)+1);
x1(1:4:end)=x;
n1 = 0:length(x1)-1;
figure;
stem(n1,x1,'LineWidth',2,'Color','r'); grid; grid minor;
title('Upsampled Signal: x_u[n]');
set(gca,'FontSize',12,'GridAlpha',1,'MinorGridAlpha',1,'GridColor','r','MinorGridColor','b',...
    'Xtick',0:1:length(x1));

%% performing Factor-2-Interpolation
fun = @(x) 0.5*x(1)+x(2)+0.5*x(3);
y = nlfilter(x1,[1,3],fun);
figure;stem(n1,y,'LineWidth',2,'Color','b'); grid; grid minor;
title('Interpolated Signal: y[n]=x_u[n]+(1/2)\{x_u[n-1]+x_u[n+1]\}');
set(gca,'FontSize',12,'GridAlpha',1,'MinorGridAlpha',1,'GridColor','b','MinorGridColor','r',...
    'Xtick',0:1:length(y));
hold on;
plot(n1,y,'LineWidth',1.2,'Color','r');