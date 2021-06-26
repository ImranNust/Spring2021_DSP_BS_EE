% Program 2: For Section 2.1
clear; close all; clc; workspace; 

n = -4:1:9;
Y =  [0,0,1,0,2,1,0,-4,3,-1,4,0,0,0];
% Y = [cos(X), 0.5*sin(X)];
%%%%%% PROPERTIES OF STEM %%%%%%%%%
subplot(311);
h = stem(n,Y,'Color','red','LineWidth',1);
title('Original Signal: x[n]','FontSize',14);xlabel('Time');ylabel('Amplitude');
grid;
axis([-5 10,-5,5]);
set(gca, 'XTick',n) 

%%%%%% TIME DELAY %%%%%%%%%%%%
subplot(312);
h1 = stem(n+1,Y,'Color','blue','LineWidth',1);
title('Delayed Version: x[n+1]','FontSize',14);xlabel('Time');ylabel('Amplitude');
grid;
axis([-5 10,-5,5]);
set(gca, 'XTick',n+1) 

%%%%%%%%% TIME ADVANCING %%%%%%%%%
subplot(313);
h2 = stem(n-1,Y,'Color','green','LineWidth',1);
title('Advanced Version: x[n-1]','FontSize',14);xlabel('Time');ylabel('Amplitude');
grid;
axis([-5 10,-5,5]);
set(gca, 'XTick',n) 