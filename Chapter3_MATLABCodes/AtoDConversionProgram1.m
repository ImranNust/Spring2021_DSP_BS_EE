% Example 2.15
clear; close all; clc; workspace


%% Ploting Continuous Time Signals

% First Signal x_1[n]=cos(0.6\pi t)
w1 = 2*pi;
tmin = -1;
tmax = 1;
t = linspace(tmin, tmax, 200);

g1 = cos(w1.*t);
plot(t,g1,'LineWidth',2,'Color','red','LineStyle',':');
%axis([0 2 -1 1])
%title('Explaining Aliasing','FontSize',18);
xlabel('Time Index','FontSize',18);
ylabel('','FontSize',18);

%% Now we plot the discrete signal obtained as a result of sampling at sampling rate 10 Hz
 % Angular Sampling Frequencey
 omega_T = 5;
 % Sampling Time Period
T = 1/omega_T;
% the normalized angular frequency is calculated as:
wo = w1*T;

% The sample is taken after each T second so the limit shoudl be
a=t((t<0));
b = -fliplr(floor(min(abs(a))):floor(max(abs(a))/T));
n = unique([b, ceil(min(t)):floor(max(t)/T)]);

x1n = cos(wo*n);


hold on
stem(n*T,x1n,'o','LineWidth',3,'Color','b','Marker','d','MarkerFaceColor','b',...
    'MarkerEdgeColor','b')
%legend({'g_1=cos(6\pit)','x_1[n]=cos(0.6\pin)'},'FontSize',18);
grid; grid minor
set(gca,'Xtick',n*T,'FontSize',18,'XColor','m','YColor','m',...
    'MinorGridAlpha',0.9,'GridAlpha',0.9,'MinorGridColor','b','GridColor','g',...
    'YTick',[],'XTickLabel',{'-2T','-T','0','T','2T','3T','4T','5T'});

