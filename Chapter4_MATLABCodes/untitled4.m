clear; close all; clc
h = [0,-1];
[H,w]=freqz(h,1,256);
m = abs(H);
plot(w/pi,m);