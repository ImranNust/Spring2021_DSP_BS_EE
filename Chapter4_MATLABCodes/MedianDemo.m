% Reading the corrupted signal
clear; close; clc;

%% Reading Original Signal and Ploting it
[x,Fs]=audioread('clearspeech.wav'); % Reading the Signal
info = audioinfo('clearspeech.wav');
t = 0:seconds(1/Fs):seconds(info.Duration);
t =t(1:end-1);
plot(t,x); title('Clear (Original) Audio Signal');
ylabel('Amplitude'); xlabel('Time');
set(gca,'FontWeight','bold','FontSize',12)
disp('Playing the Original Audio'); sound(x,Fs)
pause;


[y,Fs]=audioread('noisyspeech.wav'); % Reading the Signal
%% Ploting the Corrupt Signal
info = audioinfo('noisyspeech.wav');
figure;plot(t,y); title('Corrupted Audio Signal');
ylabel('Amplitude'); xlabel('Time');
set(gca,'FontWeight','bold','FontSize',12)
disp('Playing the Corrupted Audio'); sound(y,Fs)
pause;
%% Applying the median Filter to remove the noise
y1 = medfilt1(y,5);
audiowrite('RecoveredSignal.wav',y1,Fs);
figure;plot(t,y1); title('Recovered Audio Signal');
ylabel('Amplitude'); xlabel('Time');
set(gca,'FontWeight','bold','FontSize',12)
disp('Playing the Recovered Audio'); sound(x,Fs)


