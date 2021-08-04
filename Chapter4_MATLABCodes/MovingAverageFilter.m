clear; close all; clc

%%% Original Signal
omega = 0.5*pi; % Angular Frequency
t = 0:0.001:8;
s = 5*cos(omega*t); % Orginal Signal
subplot(311);plot(t,s,'LineWidth',2,'Color','r');title('Original Signal');
xlabel('Time Axis'); ylabel('Amplitude'); grid; grid minor; axis([0,8,-6,6]);
set(gca,'FontSize',12,'GridAlpha',1,'MinorGridAlpha',1,'GridColor','b','MinorGridColor','b');


d = 0.8*rand(1,length(t));
x = s+d;
subplot(312);
%plot(t,x); hold on; plot(t,d);
plot(t,x,t,d);title('Original Signal');legend('Noisy Signal','Noise');
xlabel('Time Axis'); ylabel('Amplitude'); grid; grid minor; axis([0,8,-6,6]);
set(gca,'FontSize',12,'GridAlpha',1,'MinorGridAlpha',1,'GridColor','b','MinorGridColor','b');


% applying moving average filter
h = (1/11)*ones(1,11);
x1 = conv(x,h,'same');


subplot(313);
plot(t,x1,'LineWidth',2,'Color','b');title('Recovered Signal Using 11-point Moving-Average Filter');
xlabel('Time Axis'); ylabel('Amplitude'); grid; grid minor; axis([0,8,-6,6]);
set(gca,'FontSize',12,'GridAlpha',1,'MinorGridAlpha',1,'GridColor','b','MinorGridColor','b');

