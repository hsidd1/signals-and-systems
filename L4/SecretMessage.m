% Read in the signal from the audio file
[signal, Fs] = audioread("SecretMessage2023.wav");
L = length(signal);
T = 1/Fs;
t = [0:L-1]*T;

% Take the DFT
Y = fft(signal)/L;
f = Fs/2*linspace(0,1,L/2+1);
% Plot the single-sided magnitude spectrum.
plot(f,2*abs(Y(1:L/2+1)));
title('Single-Sided Magnitude Spectrum')
xlabel('Frequency (Hz)')
ylabel('|Y(f)|')
axis([0 Fs/2 0 .5/10]);
grid('minor');
exportgraphics(gcf,'Figures/SecretMessage2023_FFT.png','Resolution',300); % 300 dpi