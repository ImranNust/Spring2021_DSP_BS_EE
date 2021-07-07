clc
clear
close all;
N=5;
k=-N:N;
interval=0:0.0001:1;
wc = 0.5;
index=1;
for t=interval
    ck=0.5*sin(k*wc*pi)./(k*wc*pi);
    ck(isnan(ck))=  0.5;
    value(index)=sum(ck.*exp(-i*k*t*pi));
    index=index+1;
end
plot(interval,abs(value),'LineWidth',2)
xlabel('\omega/\pi'); ylabel('Amplitude');
title('K = 5'); grid; grid minor
ax = gca;
set(gca,'XColor','r','YColor','r','FontSize',18)
ax.GridColor = 'm'; ax.GridAlpha = 0.8;
ax.MinorGridAlpha = 0.8;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear; clc; figure;
N=10;
k=-N:N;
interval=0:0.0001:1;
wc = 0.5;
index=1;
for t=interval
    ck=0.5*sin(k*wc*pi)./(k*wc*pi);
    ck(isnan(ck))=  0.5;
    value(index)=sum(ck.*exp(-i*k*t*pi));
    index=index+1;
end
plot(interval,abs(value),'LineWidth',2)
xlabel('\omega/\pi'); ylabel('Amplitude');
title('K = 10'); grid; grid minor
ax = gca;
set(gca,'XColor','r','YColor','r','FontSize',18)
ax.GridColor = 'm'; ax.GridAlpha = 0.8;
ax.MinorGridAlpha = 0.8;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear; clc; figure;
N=15;
k=-N:N;
interval=0:0.0001:1;
wc = 0.5;
index=1;
for t=interval
    ck=0.5*sin(k*wc*pi)./(k*wc*pi);
    ck(isnan(ck))=  0.5;
    value(index)=sum(ck.*exp(-i*k*t*pi));
    index=index+1;
end
plot(interval,abs(value),'LineWidth',2)
xlabel('\omega/\pi'); ylabel('Amplitude');
title('K = 15'); grid; grid minor
ax = gca;
set(gca,'XColor','r','YColor','r','FontSize',18)
ax.GridColor = 'm'; ax.GridAlpha = 0.8;
ax.MinorGridAlpha = 0.8;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear; clc; figure;
N=20;
k=-N:N;
interval=0:0.0001:1;
wc = 0.5;
index=1;
for t=interval
    ck=0.5*sin(k*wc*pi)./(k*wc*pi);
    ck(isnan(ck))=  0.5;
    value(index)=sum(ck.*exp(-i*k*t*pi));
    index=index+1;
end
plot(interval,abs(value),'LineWidth',2)
xlabel('\omega/\pi'); ylabel('Amplitude');
title('K = 20'); grid; grid minor
ax = gca;
set(gca,'XColor','r','YColor','r','FontSize',18)
ax.GridColor = 'm'; ax.GridAlpha = 0.8;ax.MinorGridAlpha = 0.8;