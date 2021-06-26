% Program 2_6
% Computation of Autocorrelation of a
% Noise Corrupted Sinusoidal Sequence
%
clear; close all; clc; workspace
N = 96;
n = 1:N;
x = cos(pi*0.25*n); % Generate the sinusoidal sequence
d = rand(1,N) - 0.5; % Generate the noise sequence
y = x + d; % Generate the noise-corrupted sinusoidal sequence
r = conv(y, fliplr(y)); % Compute the correlation sequence
k = -28:28;
stem(-N/2:N/2-1,x); title('x = cos(pi*0.25*n)');figure;
stem(n, y); figure;
stem(k, r(68:124));
xlabel('Lag index'); ylabel('Amplitude');