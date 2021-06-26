% Program 4: For Section 2.1


%% Left-Sided Sequence
n = 0:1:20;
Y=sin(0.05*2*pi*n);
Y1=[zeros(1,10),Y];
% Y = [cos(X), 0.5*sin(X)];
%%%%%% PROPERTIES OF STEM %%%%%%%%%
subplot(2,1,1);
h = stem([-10:1:20],Y1);
h.Color = 'red';
h.LineWidth = 0.75;
title('Left sided Sequence x[n]=0 for n<1(N1)','FontSize',14);
grid;
set(gca, 'XTick',[-10:1:20]) ;

%% Right_Sided Sequence
n = -20:1:0;
Y=sin(0.05*2*pi*n);
Y1=[Y,zeros(1,10),];
% Y = [cos(X), 0.5*sin(X)];
%%%%%% PROPERTIES OF STEM %%%%%%%%%
subplot(2,1,2);
h = stem([-20:1:10],Y1);
h.Color = 'red';
h.LineWidth = 0.75;
title('Righit-sided Sequence x[n]=0 for n>0(N2)','FontSize',14);
grid;
set(gca, 'XTick',[-20:1:10]) ;
