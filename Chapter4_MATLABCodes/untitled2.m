clear; close all; clc;

t = 0:0.001:1;
x1 = cos(2*pi*50*t);      
plot(t(1:100),x1(1:100));
Fs = 1000;

L = 1000;
n = 2^nextpow2(L);

Y = fft(x1,n);
P2 = abs(Y);
figure;
cc = 0:(Fs/n):(Fs-Fs/n);
plot(cc,Y)