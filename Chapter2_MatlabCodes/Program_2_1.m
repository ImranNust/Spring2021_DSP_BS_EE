% Program 2_1
% Generation of the ensemble average
%
clear; close all;clc; workspace;
R = 50;
m = 0:R-1;
s = 2*m.*(0.9.^m); % Generate the uncorrupted signal
d = rand(R,1)-0.5; % Generate the random noise
x1 = s+d';
subplot(221);
stem(m,s,'LineWidth',1.5);title(['Original Signal x[n] = 2[n(0.9)^n]'],'FontSize',14);
xlabel('Time index n');ylabel('Amplitude');
subplot(222);
stem(m,d,'LineWidth',1.5);title('Random Noise','FontSize',14);
xlabel('Time index n');ylabel('Amplitude');
subplot(223);
stem(m,x1,'LineWidth',1.5);title(['Corrupted Signal with Noise'],'FontSize',14);
xlabel('Time index n');ylabel('Amplitude');
%pause
for n = 1:50
    d = rand(R,1)-0.5;
    x = s + d';
    x1 = x1 + x;
end
x1 = x1/50;
subplot(224);
stem(m,x1,'LineWidth',1.5);title(['Ensember Average: Recovered Signal'],'FontSize',14);
xlabel('Time index n');ylabel('Amplitude');
