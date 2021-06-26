% Program For Section:
clear; close all; clc; workspace;
x = input('Type in the first sequence = ');

a = input('Type in the initial limit = ');

b = input('Type in the final limit = ');


n=a:1:b;
stem(n,x,'LineWidth',1.5,'Color','red');
title('An Arbitrary Sequence x[n]','FontSize',18);
xlabel('Time Index','FontSize',18);
ylabel('Amplitude','FontSize',18);
set(gca,'Xtick',min(n)-1:1:max(n)+1,'FontSize',18);
axis([min(n)-1 max(n)+1 min(x)-0.5 max(x)+0.5]);
grid;