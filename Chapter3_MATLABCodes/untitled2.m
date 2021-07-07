clc
clear
close all;
N=10;
k=-N:N;
interval=0:0.0001:1;

index=1;
for t=interval
    ck=sin(k*0.55)./(k*pi);
    ck(isnan(ck))=0.55/pi;
    value(index)=sum(ck.*exp(-1i*k*t));
    index=index+1;
end

plot(interval,abs(value),'linewidth',1.5)
xlabel('Time');
