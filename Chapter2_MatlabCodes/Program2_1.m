% Program 2_1
% Generation of complex exponential sequence
%
a = input('Type in real exponent = ');
b = input('Type in imaginary exponent = ');
c = a + b*1i;
K = input('Type in the gain constant = ');
N = input('Type in length of sequence = ');
n=1:N;
x=K*exp(c*n);
stem(n,real(x));
xlabel('Time index n'); ylabel('Amplitude');
title('Real Part');
disp('Press RETURN for imaginay part');
pause
stem(n,imag(x));
xlabel('Time Index n'); ylabel('Amplitude');
title('Imaginary Part');