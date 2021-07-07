%% Convergence Condition: Absolutely Summable

%% EXAMPLE 3.8
clear; close all; clc; workspace;


%% Equation (3.32)
wc = 0.48;
w = 0:0.01:1;
K = 5;
HLP = zeros(1,length(w));
for n = -K:K
    if n~=0
        a = ((sin (wc*n))/(pi*n));
    else
        a = wc/pi;
    end
    HLP = HLP + (a.*(exp(-1i*w*n)));
end
plot(w,abs(HLP));
% x = alpha1.^n;
% stem(n,x,'LineWidth',2,'Color','blue');
% title('x[n]=\alpha^n\mu[n], where \alpha=0.5<1','FontSize',18,'Color','red');
% xlabel('Time Index','FontSize',18,'Color','b');
% ylabel('Amplitude','FontSize',18,'Color','b');
% %set(gca,'xtick',-:1:4,'FontSize',18);
% set(gca,'Xtick',n,'XColor','m','YColor','m');
% axis([-1 12 -0.2 1.2]);
% grid;
% text(5,1.03,'Decaying Exponential Curve','FontSize',18);

