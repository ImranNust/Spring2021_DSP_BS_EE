clear; close all; clc;

% Impulse Response of a System
h = [0,1]; % delay of one sample h[n]=\delta[n-1]






figure;
stem(0:length(h)-1,h,'LineWidth',2,'Color','r'); axis([-0.2,length(h)-1+0.2,min(h)-0.2,max(h)+0.2])
grid; grid minor;
title('Impulse Response: h[n]=\delta[n-1] OR h[n]=[0,1]','Interpreter','Tex',...
    'Color','b','FontWeight','bold');
xlabel('Time Index n','Interpreter','Tex'); ylabel('Amplitude');
set(gca,'xcolor','b','ycolor','b','GridAlpha',1,'MinorGridAlpha',1,...
    'GridColor','b','MinorGridColor','r','FontWeight','bold','FontSize',13)

%% For Input
x = [1,2,3];
figure;
stem(0:length(x)-1,x,'LineWidth',2,'Color','r'); axis([-0.2,length(x)-1+0.2,min(x)-min(x)-0.2,max(x)+0.2])
grid; grid minor;
title('Input Sequence: x[n] = [1, 2, 3]','Interpreter','Tex',...
    'Color','b','FontWeight','bold');
xlabel('Time Index n','Interpreter','Tex'); ylabel('Amplitude');
set(gca,'xcolor','b','ycolor','b','GridAlpha',1,'MinorGridAlpha',1,...
    'GridColor','b','MinorGridColor','r','FontWeight','bold','FontSize',13)

%% Performing Convolution
% Performing Convolution
y = conv(h,x);
figure;
stem(0:length(y)-1,y,'LineWidth',2,'Color','r'); axis([-0.2,length(y)-1+0.2,min(y)-min(y)-0.2,max(y)+0.2])
grid; grid minor;
str = num2str(y);
title(['Output Sequence: y[n] = \Sigma_{k=0}^{2}x[k]h[n-k] = [', str, ' ]'],'Interpreter','Tex',...
    'Color','b','FontWeight','bold');
xlabel('Time Index n','Interpreter','Tex'); ylabel('Amplitude');
set(gca,'xcolor','b','ycolor','b','GridAlpha',1,'MinorGridAlpha',1,...
    'GridColor','b','MinorGridColor','r','FontWeight','bold','FontSize',13)
text(0,2.6,'It can be seen that there is a delay of one sample','FontWeight','bold',...
    'FontSize',13,'Color','m')