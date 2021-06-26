

clear; close all; clc; workspace;
%%
n = 0:1:150;
Y=sin(0.04*2*pi*n);
A=2;

h = stem(n(1:51),Y(1:51));
h.Color = 'red';
h.LineWidth = 1.5;
title('Inpute Squence x[n]');xlabel('Time Index n'); ylabel('Amplitude');
grid;
set(gca, 'XTick',0:2:50) ;

%% Upsampling
figure;
Y1=downsample(Y,3);
 h1 = stem(n(1:51),Y1(1:51));
 h1.Color = 'blue';
 h1.LineWidth = 1.5;
 title('Output Squence downsampled by 3');xlabel('Time Index n'); ylabel('Amplitude');
% legend('Original Signal', 'Scalar Multipliplication By 2', 'Scalar Multiplication BY 0.5');
