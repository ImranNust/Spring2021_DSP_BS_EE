clear; close all; clc

%%% Original Signal
omega = 0.6*pi; % Angular Frequency
t = 0:1:60;
s = 2*t.*(0.9.^t); % Orginal Signal
figure;stem(t,s,'LineWidth',2,'Color','m');title('Original Signal');
xlabel('Time Axis'); ylabel('Amplitude'); grid; grid minor; 
set(gca,'FontSize',12,'GridAlpha',1,'MinorGridAlpha',1,'GridColor','b','MinorGridColor','b',...
    'FontWeight','bold');


d = round(0.4+rand(1,length(t)));
x = s+d;
figure;
%plot(t,x); hold on; plot(t,d);
stem(t,x,'LineWidth',2,'Color','r');title('Noisy Signal');
xlabel('Time Axis'); ylabel('Amplitude'); grid; grid minor; 
set(gca,'FontSize',12,'GridAlpha',1,'MinorGridAlpha',1,'GridColor','b','MinorGridColor','b',...
    'FontWeight','bold');


% applying moving average filter
h = @(x) median(x);
x1 = nlfilter(x,[1,3],h);
figure;
stem(t,x1,'LineWidth',2,'Color','b');title('Recovered Signal Using Median Filter of Size 3\times 3');
xlabel('Time Axis'); ylabel('Amplitude'); grid; grid minor; 
set(gca,'FontSize',12,'GridAlpha',1,'MinorGridAlpha',1,'GridColor','r','MinorGridColor','r',...
    'FontWeight','bold');
hold on

