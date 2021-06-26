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
% the normalized angular frequency is calculated as:
wo = w1*T;

% The sample is taken after each T second so the limit shoudl be
n = ceil(min(t)):floor(max(t)/T);

x1n = cos(wo*n);


hold on
stem(n*T,x1n,'o','LineWidth',3,'Color','b')
legend({'g_1=cos(6\pit)','x_1[n]=cos(0.6\pin)'},'FontSize',18);
grid;


%% For PART 2
figure;

% First Signal x_1[n]=cos(0.6\pi t)
w1 = 14*pi;

g2 = cos(w1.*t);
plot(t,g2,'LineWidth',2,'Color','red');
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
% the normalized angular frequency is calculated as:
wo = w1*T;

% The sample is taken after each T second so the limit shoudl be
n = ceil(min(t)):floor(max(t)/T);

x2n = cos(wo*n);


hold on
stem(n*T,x2n,'o','LineWidth',3,'Color','b')
legend({'g_2(t)=cos(14\pit)','x_1[n]=cos(1.4\pin)'},'FontSize',18);
grid;

%% For PART 3
figure;

% First Signal x_1[n]=cos(0.6\pi t)
w3 = 26*pi;

g3 = cos(w3.*t);
plot(t,g3,'LineWidth',2,'Color','red');
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
% the normalized angular frequency is calculated as:
wo = w3*T;

% The sample is taken after each T second so the limit shoudl be
n = ceil(min(t)):floor(max(t)/T);

x3n = cos(wo*n);


hold on
stem(n*T,x3n,'o','LineWidth',3,'Color','b')
legend({'g_3=cos(26\pit)','x_3[n]=cos(2.6\pin)'},'FontSize',18);
grid;


%% Plotting all the signals at the same figure;
figure;
plot(t,g1,'LineWidth',2,'Color','red');hold on;
plot(t,g2,'LineWidth',2,'Color','blue');hold on;
plot(t,g3,'LineWidth',2,'Color','black');hold on;

stem(n*T,x1n,'o','LineWidth',3,'Color','m')
stem(n*T,x2n,'o','LineWidth',3,'Color','b')
stem(n*T,x3n,'o','LineWidth',3,'Color','g')
legend({'g_1(t)=cos(6\pit)','g_2(t)=cos(14\pit)','g_3(t)=cos(26\pit)',...
    'x_1[n]=cos(0.6\pin)','x_2[n]=cos(1.4\pin)','x_3[n]=cos(2.6\pin)'},'FontSize',18);
grid;
title('Explaining Aliasing','FontSize',18);
xlabel('Time Index','FontSize',18);
ylabel('Amplitude','FontSize',18);
set(gca,'Xtick',0:0.05:1);