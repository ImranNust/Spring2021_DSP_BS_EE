%% Convergence Condition: Absolutely Summable
clear; close all; clc; workspace;
n=0:1:12;

%% Absolutely Summable Sequence
alpha1 = 0.5;
x = alpha1.^n;
stem(n,x,'LineWidth',2,'Color','blue');
title('x[n]=\alpha^n\mu[n], where \alpha=0.5<1','FontSize',18,'Color','red');
xlabel('Time Index','FontSize',18,'Color','b');
ylabel('Amplitude','FontSize',18,'Color','b');
%set(gca,'xtick',-:1:4,'FontSize',18);
set(gca,'Xtick',n,'XColor','m','YColor','m');
axis([-1 12 -0.2 1.2]);
grid;
text(5,1.03,'Decaying Exponential Curve','FontSize',18);

%% Not Summable Sequence
figure;
alpha2 = 1.2;
y = alpha2.^n;
stem(n,y,'LineWidth',2,'Color','blue');
title('x[n]=\alpha^n\mu[n], where \alpha=2>1','FontSize',18,'Color','red');
xlabel('Time Index','FontSize',18,'Color','b');
ylabel('Amplitude','FontSize',18,'Color','b');
%set(gca,'xtick',-:1:4,'FontSize',18);
set(gca,'Xtick',n,'XColor','m','YColor','m');
%axis([-1 12 -0.2 1.2]);
grid;
text(0.5,8.5,'Growing Exponential Curve','FontSize',18);

%% HLP
figure;

n1=-2:0.001:2;
w =  rectpuls(n1,2);
plot(n1,w,'LineWidth',2);
xlabel('normalized angular frequency (\omega)','FontSize',18,'Color','b');
title('H_{LP}(e^{j\omega})','FontSize',18,'Color','r');
axis([-2 2 0 1.2]);
set(gca,'Xtick',-2:1:2,'XColor','m','YColor','b','FontSize',18);
set(gca,'XtickLabel',{'-\pi', '-\omega_c','','\omega_c','\pi'},'FontSize',18);
set(gca,'Ytick',[1]);
grid;
