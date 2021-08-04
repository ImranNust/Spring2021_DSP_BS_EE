%%% Example 4.32 %%%%
clear; close all; clc

% impulse response 
h = [4, -5, 6, -3];

x = ones(30,1);

y = conv(x,h); 

stem(0:length(x)-3,y(1:length(x)-2),'b','LineWidth',2)
axis([0,length(x)-3,min(y)-1,max(y)+1]);
title('Steady-State and Transient Responses','Color','r');
xlabel('Time Index n'); ylabel('Amplitude');grid; grid minor;
set(gca,'GridAlpha',1,'MinorGridAlpha',1,'GridColor','r','MinorGridColor','b','FontSize',12,...
    'xcolor','b','ycolor','b','FontWeight','bold')