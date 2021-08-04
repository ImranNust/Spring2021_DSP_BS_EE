clear; close; clc;

p = [0.8, -0.44, 0.36, 0.02];
d = [1, 0.7, -0.45, -0.6];

% Impulse Response
[h,m] = impz(p,d,41);
stem(m,h,'LineWidth',2,'Color','r','MarkerFaceColor','green','MarkerEdgeColor','b');
xlabel('Time Index n'); ylabel('Amplitude');title('Impulse Response','Color','b');
grid; grid minor;
set(gca,'FontWeight','bold','GridAlpha',1','GridColor','b','MinorGridAlpha',1,...
    'MinorGridColor','r','FontSize',12,'XColor','b','Ycolor','b')
text(15,0.5,{'Decaying Exponential Sequence','indicates a BIBO stable System'},'Color','r',...
    'FontWeight','bold','FontSize',14);

% Step Response
figure;[h,m] = stepz(p,d,41);
stem(m,h,'LineWidth',2,'Color','r','MarkerFaceColor','b','MarkerEdgeColor','g');
xlabel('Time Index n'); ylabel('Amplitude');title('Step Response','Color','b');
grid; grid minor;
set(gca,'FontWeight','bold','GridAlpha',1','GridColor','b','MinorGridAlpha',1,...
    'MinorGridColor','r','FontSize',12,'XColor','b','Ycolor','b')