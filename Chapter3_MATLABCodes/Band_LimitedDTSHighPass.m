%% Example 3.1
clear; close all; clc; workspace;
n=0:1:20;
alpha = 0.75;

x = (-1*alpha).^n;
stem(n,x,'LineWidth',2,'Color','blue');
hold on
stem(0,1,'LineWidth',2,'Color','blue');
str = '$$ x[n]=(-1)^n\alpha^n\mu[n] $$';
title(str,'Interpreter','Latex','FontSize',18,'Color','red');
xlabel('Time Index','FontSize',18,'Color','b');
ylabel('Amplitude','FontSize',18,'Color','b');
set(gca,'xtick',0:2:20,'FontSize',18,'XColor','r','YColor','r','GridAlpha',...
    0.9,'MinorGridAlpha',0.9,'GridColor','g','MinorGridColor','b');
str = '$$ \alpha = 0.75 $$';
text(9.5,0.94,str,'Interpreter','Latex','FontSize',24,'FontWeight','Bold','Color','b');
grid; grid minor;
figure;

%% Fourier Transform
Omega = -3*pi:0.0001:3*pi;
X = 1./(1+alpha*exp(-1i*Omega));
magX = abs(X);
angX = angle(X);

plot(Omega,magX,'LineWidth',2);
title('Mangnitude Plot','FontSize',18,'Color','red');
str = '$$\frac{\omega}{\pi}$$';
xlabel(str,'Interpreter','Latex','FontSize',18,'Color','b');
ylabel('Amplitude','FontSize',18,'Color','b');
lim = [-3*pi,-2*pi,-pi,0,0.4919*pi,0.8929*pi,pi,2*pi,3*pi];
set(gca,'xtick',lim,'XtickLabel',{'-3\pi','-2\pi','-\pi','0','0.49\pi','0.89\pi','\pi','2\pi','3\pi'},...
    'FontSize',18,'GridColor','g','MinorGridColor','b','GridAlpha',0.95,...
    'MinorGridAlpha',0.95,'Xcolor','b','ycolor','b');
grid;grid minor; hold on

[~,a] = min(abs(Omega-0.4919*pi)); % finding the index of omega for w=0.5081*pi (the 20% energy)
[~,b] = min(abs(Omega-0.8929*pi)); % finding the index of omega for w=0.5081*pi (the 80% energy)
[~,c] = min(abs(Omega-pi)); % finding the index of omega for w=pi
stem([0.4919*pi, pi],[magX(a),magX(c)],'LineWidth',2.2,'Color','b','LineStyle',':');
axis([-3*pi,3*pi,0.4,4]);
hold on
stem(0.8929*pi,magX(b),'LineWidth',2.3,'Color','r','LineStyle','--');

% figure;
% plot(Omega,angX,'LineWidth',2);
% title('Phase in radianse','FontSize',18,'Color','red');
% xlabel('\Omega in radians/sec','FontSize',18,'Color','b');
% set(gca,'xtick',-4:1:4,'FontSize',18,'XColor','m','YColor','m');
% grid;