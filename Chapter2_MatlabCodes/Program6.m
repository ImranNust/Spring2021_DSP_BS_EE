% Program 6: For Section 2.2
%% Scalar Multiplication


%% Two-Sided Sequence
n = -20:1:20;
Y=sin(0.05*2*pi*n);
A=2;

h = stem(n,Y);
h.Color = 'red';
h.LineWidth = 1;
%title('Two-sided Sequence x[n], defined for N1<n<N2','FontSize',14);
grid;
set(gca, 'XTick',[-20:2:20]) ;
hold on;
h2 = stem(n,2*Y);
h2.Color =  'green';
h1 = stem(n,0.5*Y);
h1.Color = 'blue';
h1.LineWidth = 1;
h2.LineWidth = 1;
legend('Original Signal', 'Scalar Multipliplication By 2', 'Scalar Multiplication BY 0.5');
