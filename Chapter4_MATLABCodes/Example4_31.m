
clear; close all; clc;

%% Defining the Impulse Response of a 5- point and 14-Point Moving Average Filter

h1 = 1/5*ones(5,1); % impulse response of 5-point Moving Average Filter
h2 = 1/14*ones(14,1); % impulse response of 14-point Moving Average Filter

%% Computing the frequency response

[H1, w1] = freqz(h1,1,256); % the 'h' is the numerator, '1' is the denomentor, and 256 is the length of the frequency response
[H2, w2] = freqz(h2,1,256);

%% Calculating the Magnitude and plotting it
m1 = abs(H1); m2 = abs(H2);
plot(w1,m1,'r-',w2,m2,'-.','LineWidth',2); grid; grid minor;
ylabel('Magnitude'); xlabel('\omega');
title('Magnitude Response','FontWeight','bold',...
    'Color','b','FontSize',14); axis([0,pi,0,1])
set(gca,'GridAlpha',1,'MinorGridAlpha',1,'GridColor','b','MinorGridColor','r',...
    'FontSize',14,'xcolor','b','ycolor','b','FontWeight','bold',...
    'Xtick',[0*pi,0.1*pi,0.2*pi,0.3*pi,0.4*pi,0.5*pi,0.6*pi,0.7*pi,0.8*pi,0.9*pi,pi],'XtickLabel',...
    {'0','0.1\pi','0.2\pi','0.3\pi','0.4\pi','0.5\pi','0.6\pi','0.7\pi','0.8\pi','0.9\pi','\pi'})
legend('5-Point Moving Average Filter (M=5)','14-Point Moving Average Filter (M=14)')

figure;
%% Calculating the Phase and plotting it
ph1 = angle(H1); ph2 = angle(H2);
plot(w1,ph1,'r-',w2,ph2,'-.','LineWidth',2); grid; grid minor;
ylabel('Phase in Radians'); xlabel('Angular Frequency in Radians: \omega');
title('Phase Response','FontWeight','bold',...
    'Color','b','FontSize',14); axis([0,pi,min(ph1)-1,max(ph1)+1])
set(gca,'GridAlpha',1,'MinorGridAlpha',1,'GridColor','b','MinorGridColor','r',...
    'FontSize',14,'xcolor','b','ycolor','b','FontWeight','bold',...
    'Xtick',[0*pi,0.1*pi,0.2*pi,0.3*pi,0.4*pi,0.5*pi,0.6*pi,0.7*pi,0.8*pi,0.9*pi,pi],'XtickLabel',...
    {'0','0.1\pi','0.2\pi','0.3\pi','0.4\pi','0.5\pi','0.6\pi','0.7\pi','0.8\pi','0.9\pi','\pi'},...
    'Ytick',[-pi,-0.8*pi,-0.6*pi,-0.4*pi,-0.2*pi,0,0.2*pi,0.4*pi,0.6*pi,0.8*pi,pi],'YtickLabel',...
    {'-\pi','-0.8\pi','-0.6\pi','-0.4\pi','-0.2\pi','0','0.2\pi','0.4\pi','0.6\pi','0.8\pi','\pi'})
legend('5-Point Moving Average Filter (M=5)','14-Point Moving Average Filter (M=14)')