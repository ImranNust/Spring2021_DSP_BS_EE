% Program 3_1
% Discrete-Time Fourier Transform Computation
%
% Read in the desired number of frequency samples
k = 200;
% Read in the numerator and denominator coefficients
num = [0.008, -0.033, 0.05, -0.033, 0.008];
den = [1, 2.37, 2.7, 1.6, 0.41];
% Compute the frequency response
w = 0:pi/(k-1):pi;
h = freqz(num, den, w);
% Plot the frequency response
figure;
plot(w/pi,real(h),'LineWidth',2.5,'Color','b');grid; grid minor;
title('Real part')
xlabel('\omega/\pi'); ylabel('Amplitude')
set(gca,'MinorGridAlpha',0.95,'GridAlpha',0.95,'MinorGridColor','r',...
    'GridColor','black','FontSize',18,'XColor','m','YColor','m');
figure;
plot(w/pi,imag(h),'LineWidth',2.5,'Color','b');grid; grid minor;
title('Imaginary part')
xlabel('\omega/\pi'); ylabel('Amplitude')
set(gca,'MinorGridAlpha',0.95,'GridAlpha',0.95,'MinorGridColor','r',...
    'GridColor','black','FontSize',18,'XColor','m','YColor','m');
figure;
plot(w/pi,abs(h),'LineWidth',2.5,'Color','b');grid; grid minor;
title('Magnitude Spectrum')
xlabel('\omega/\pi'); ylabel('Magnitude')
set(gca,'MinorGridAlpha',0.95,'GridAlpha',0.95,'MinorGridColor','r',...
    'GridColor','black','FontSize',18,'XColor','m','YColor','m');
figure;
plot(w/pi,angle(h),'LineWidth',2.5,'Color','b');grid; grid minor;
title('Phase Spectrum')
xlabel('\omega/\pi'); ylabel('Phase, radians')
set(gca,'MinorGridAlpha',0.95,'GridAlpha',0.95,'MinorGridColor','r',...
    'GridColor','black','FontSize',18,'XColor','m','YColor','m');