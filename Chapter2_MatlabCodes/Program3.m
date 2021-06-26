% Program 2: For Section 2.1
clear; close all; clc; workspace; 

n = [-4:1:9];
Y =  [0,0,1,0,2,1,0,-4,3,-1,4,0,0,0];
% Y = [cos(X), 0.5*sin(X)];
%%%%%% PROPERTIES OF STEM %%%%%%%%%
h = stem(n,Y);
h.Color = 'red';
h.LineWidth = 0.75;
title('x[n]','FontSize',14);
grid;
axis([-5 10,-5,5]);
%%%%%%%% PROPERTIES OF AXIS %%%%%%%%%%%%%%%
 %axis tight
 set(gca, 'XTick',n) 
% 
% % To change the color of axis
% ax = gca;
% c = ax.Color;
% ax.Color = 'white';
% 
% % to change the width of line
% ax.LineWidth = 3;
% 
% % to on or off the grid
% ax.XGrid='on';
% ax.YGrid = 'on';
