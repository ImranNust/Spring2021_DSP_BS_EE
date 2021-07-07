%% Example 3.19
clear; close all; clc; workspace;
t=0:0.01:10;
A = 2;
alpha = 0.5;

x = (A*t).*exp(-t);
plot(t,x,'LineWidth',2,'Color','blue');
% hold on
%stem(0,1,'LineWidth',2,'Color','blue');
title('x(t)=2te^{-t}','FontSize',18,'Color','red');
xlabel('Times in Seconds','FontSize',18,'Color','b');
set(gca,'ytick',0:0.1:1,'FontSize',18);
set(gca,'Xtick',-10:2:10,'XColor','m','YColor','m','FontSize',18);
% axis([0 10 0 1.2]);
grid;
% figure;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Now we plot the discrete signal obtained as a result of sampling at sampling rate 10 Hz
 % Angular Sampling Frequencey
 omega_T = 40;
 % Sampling Time Period
T = 1/omega_T;


% The sample is taken after each T second so the limit shoudl be
n = ceil(min(t)):floor(max(t)/T);

x1 = (A*n*T).*exp(-n*T);
figure;
stem(n*T,x1);
figure;

y1 = 1.5*abs(fftshift(fft(x1)));
plot([-floor(numel(n)/2):floor(numel(n)/2)]*T,y1);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %% Fourier Transform
%  Omega = -4:0.001:4;
% X = 2./((alpha+1i*Omega).^2);
% magX = abs(X);
% angX = angle(X);
% 
% plot(Omega,magX,'LineWidth',2);
% title('Mangnitude Plot','FontSize',18,'Color','red');
% xlabel('\Omega in radians/sec','FontSize',18,'Color','b');
% set(gca,'xtick',-4:1:4,'FontSize',18);
% grid; grid minor
% 
% figure;
% plot(Omega,angX,'LineWidth',2);
% title('Phase in radianse','FontSize',18,'Color','red');
% xlabel('\Omega in radians/sec','FontSize',18,'Color','b');
% set(gca,'xtick',-4:1:4,'FontSize',18,'XColor','m','YColor','m');
% grid; grid minor