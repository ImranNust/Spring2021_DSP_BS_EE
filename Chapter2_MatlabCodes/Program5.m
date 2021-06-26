% Program 4: For Section 2.1


%% Two-Sided Sequence
n = -20:1:20;
Y=sin(0.05*2*pi*n);

% Y = [cos(X), 0.5*sin(X)];
%%%%%% PROPERTIES OF STEM %%%%%%%%%

h = stem(n,Y);
h.Color = 'red';
h.LineWidth = 0.75;
title('Two-sided Sequence x[n], defined for N1<n<N2','FontSize',14);
grid;
set(gca, 'XTick',n) ;

