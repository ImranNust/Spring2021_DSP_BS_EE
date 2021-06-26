% Example 2.15
clear; close all; clc; workspace


%% Ploting Continuous Time Signals

% First Signal x_1[n]=cos(0.6\pi t)
w1 = 6*pi;
tmin = 0;
tmax = 1;
t = linspace(tmin, tmax, 200);

g1 = cos(w1.*t);
plot(t,g1,'LineWidth',2,'Color','red');
% axis([0 2 -1 1])
% Second Signal x_2[n]=cos(6\pi t)
hold on;
w2 = 14*pi;
g2 = cos(w2.*t);
plot(t,g2,'LineWidth',2,'Color','black','LineStyle','--');

% Second Signal x_3[n]=cos(14\pi t)
hold on;
w3 = 26*pi;
g3 = cos(w3.*t);
plot(t,g3,'LineWidth',2,'Color','blue','LineStyle','-.');
legend('x_1[n]=cos(0.6\pi t)',' x_2[n]=cos(6\pi t)', 'x_3[n]=cos(14\pi t)');
%axis([0 2 -1 1])
title('Explaining Aliasing','FontSize',18);
xlabel('Time Index','FontSize',18);
ylabel('Amplitude','FontSize',18);
set(gca,'Xtick',0:0.05:1);
%% Now we plot the discrete signal obtained as a result of sampling at sampling rate 10 Hz
 % Angular Sampling Frequencey
 omega_T = 10;
 % Sampling Time Period
T = 1/omega_T;
w1a = 0.6*pi;
w2 = 1.4*pi;
w3 = 2.6*pi;
hold on
nmin = ceil(tmin / T);
nmax = floor(tmax / T);
n = nmin:nmax;
x1 = cos(w1a * n);
hold on
plot(n*T,x1,'o','LineWidth',3,'Color','g')
x2 = cos(w2 * n);
hold on
plot(n*T,x2,'o','LineWidth',3,'Color','r')
x3 = cos(w3 * n);
hold on
plot(n*T,x3,'o','LineWidth',3,'Color','b')
hold off