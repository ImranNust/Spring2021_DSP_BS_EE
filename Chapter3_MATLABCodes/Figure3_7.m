%% Dirac Delta Function
clear; close all; clc; workspace;

n1=-0.18:0.001:0.18;
w =  rectpuls(n1,0.35);
plot(n1,w,'LineWidth',2);
%xlabel('normalized angular frequency (\omega)','FontSize',18,'Color','b');
title('p_{\Delta(\omega)}','FontSize',18,'Color','r');
axis([-2 2 0 1.2]);
set(gca,'Xtick',[-0.18,0,0.18],'XColor','m','YColor','b','FontSize',12);
set(gca,'XtickLabel',{'-\Delta', '0','\Delta'},'FontSize',12);
set(gca,'Ytick',[]);
grid on; grid minor;
str = '$$ \frac{1}{2\Delta} $$';
text(-0.5,1,str,'Interpreter','latex','FontSize',18);
xlabel('Unit Area Pulse Function','FontSize',18,'Color','r');