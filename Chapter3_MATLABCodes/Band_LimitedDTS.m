%% Example 3.1
clear; close all; clc; workspace;
n=0:1:12;
alpha = 0.5;

x = alpha.^n;
stem(n,x,'LineWidth',2,'Color','blue');
hold on
stem(0,1,'LineWidth',2,'Color','blue');
str = '$$ x[n]=\alpha^n\mu[n] $$';
title(str,'Interpreter','Latex','FontSize',18,'Color','red','FontWeight','bold');
xlabel('Time Index','FontSize',18,'Color','b');
ylabel('Amplitude','FontSize',18,'Color','b');
set(gca,'xtick',n,'FontSize',18,'XColor','r','YColor','r','GridAlpha',...
    0.9,'MinorGridAlpha',0.9,'GridColor','g','MinorGridColor','b','FontWeight','bold');
str = '$$ \alpha = 0.5 $$';
text(9.5,0.94,str,'Interpreter','Latex','FontSize',24,'FontWeight','Bold','Color','b');
grid; grid minor;
figure;

%% Fourier Transform
Omega = -3*pi:0.0001:3*pi;
X = 1./(1-alpha*exp(-1i*Omega));
magX = abs(X);
angX = angle(X);

plot(Omega,magX,'LineWidth',2);
title('Mangnitude Plot','FontSize',18,'Color','red','FontWeight','bold');
str = '$$\frac{\omega}{\pi}$$';
xlabel(str,'Interpreter','Latex','FontSize',18,'Color','b');
ylabel('Amplitude','FontSize',18,'Color','b');
lim = [-3*pi,-2*pi,-pi,0,0.5081*pi,pi,2*pi,3*pi];
set(gca,'xtick',lim,'XtickLabel',{'-3\pi','-2\pi','-\pi','0','0.5081\pi','\pi','2\pi','3\pi'},...
    'FontSize',18,'GridColor','g','MinorGridColor','b','GridAlpha',0.95,...
    'MinorGridAlpha',0.95,'FontWeight','bold');
grid;grid minor; hold on

[~,a] = min(abs(Omega-0)); % finding the index of omega for w=0
[~,b] = min(abs(Omega-0.5081*pi)); % finding the index of omega for w=0.5081*pi
stem([0,0.5081*pi],[magX(a),magX(b)],'LineWidth',2.2,'Color','r','LineStyle',':');
axis([-3*pi,3*pi,0.6,2]);
x = [0.435 0.55];
y = [0.5 0.2];
str = {'80% Energy lies', 'Between these two lines'};
annotation('textarrow',x,y,'String',str,'FontSize',18,...
    'LineWidth',1.8,'TextColor','r')
% figure;
% plot(Omega,angX,'LineWidth',2);
% title('Phase in radianse','FontSize',18,'Color','red');
% xlabel('\Omega in radians/sec','FontSize',18,'Color','b');
% set(gca,'xtick',-4:1:4,'FontSize',18,'XColor','m','YColor','m');
% grid;