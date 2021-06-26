

clear; close all; clc; workspace;
%%
n = 0:1:50;
Y=sin(0.1*2*pi*n);
A=2;

h = stem(n,Y);
h.Color = 'red';
h.LineWidth = 1.5;
title('Inpute Squence x[n]');xlabel('Time Index n'); ylabel('Amplitude');
grid;
set(gca, 'XTick',0:2:50) ;

%% Upsampling
figure;
Y1=upsample(Y,3);
 h1 = stem(n,Y1(1:length(n)));
 h1.Color = 'blue';
 h1.LineWidth = 1.5;
 title('Output Squence upsampled by 3');xlabel('Time Index n'); ylabel('Amplitude');
% legend('Original Signal', 'Scalar Multipliplication By 2', 'Scalar Multiplication BY 0.5');
