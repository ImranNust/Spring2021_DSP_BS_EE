clear; close; clc; workspace;

p = 1;
d = [1,1,-6];
x = 8*ones(1,8);
si = [-7, 6];

[y, sf]=filter(p,d,x,si);

%% If we compute the output using the total solution calculation for 0?n?7,
%% we will get same answer.

n = 0:7;
y1 = -1.8*(-3).^n+4.8*(2).^n-2;