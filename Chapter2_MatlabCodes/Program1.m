% Program 1: For Section 2.1


n = -15:1:10;
Y=sin(0.05*2*pi*n);
% Y = [cos(X), 0.5*sin(X)];
%%%%%% PROPERTIES OF STEM %%%%%%%%%
h = stem(n,Y);
h.Color = 'red';
h.LineWidth = 0.75;
title('x[n]','FontSize',14);

grid;
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
