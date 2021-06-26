% Program 8: For Convolution
clear; close all; clc; workspace;

x = [0,0,0,-2,0,1,-1,3,0,0,0];
h = [0,0,0,1,2,0, -1,0,0,0,0];
n=-3:1:7;
stem(n,x,'LineWidth',1.5);title('x[k]','FontSize',14);
axis([-3 7 -3 4]);
grid;
figure;
stem(n,h,'LineWidth',1.5);title('h[n]','FontSize',14);
axis([-3 7 -3 4]);
grid;
% Step 1: Fold h[-n]

figure;
stem(8-n,h,'LineWidth',2.5);title('h[8-k]','FontSize',14);
axis([-7 9 -3 4]);
grid;
%% 

% Step 2: For n=0
figure;
n2=[-1,0,1,2,3,4,5,6,7,8];
y=[0,-2,-4,1,3,1,5,1,-3,0];
stem(n2,y,'LineWidth',2.5);title('y[n]','FontSize',14);
axis([-7 9 -4 6]);
grid;