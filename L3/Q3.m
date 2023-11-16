% Use sinusoid frequency f = 300 Hz
f = [7200, 7600, 7800, 7900];

% Sampling frequency and interval
fs = 8000;
Ts = 1/fs;

% Set time duration of plot, i.e., 10 msec.
tfinalplot = 10e-3;

% Make the time vector for the plot
nplot=0:Ts:tfinalplot;

% Make the time vector for replayed sound spurt
% Play the spurt for 2 seconds
tfinal = 2;
nsound=0:Ts:tfinal;

% 100 Hz
xnT1 = sin(2*pi*f(1)*nsound);
% Make the plot
subplot(2,2,1);
plot(nplot, xnT1(1:length(nplot)));
title('7200 Hz');

% 200 Hz
xnT2 = sin(2*pi*f(2)*nsound);
% Make the plot
subplot(2,2,2);
plot(nplot, xnT2(1:length(nplot)));
title('7600 Hz');

% 400 Hz
xnT3 = sin(2*pi*f(3)*nsound);
% Make the plot
subplot(2,2,3);
plot(nplot, xnT3(1:length(nplot)));
title('7800 Hz');

% 800 Hz
xnT4 = sin(2*pi*f(4)*nsound);
% Make the plot
subplot(2,2,4);
plot(nplot, xnT4(1:length(nplot)));
title('7900 Hz');

xnT = [xnT1(1:2/Ts) xnT2(1:2/Ts) xnT3(1:2/Ts) xnT4(1:2/Ts)];

% Save xnT as a wav sound file, soundfile.wav.
audiowrite('soundfile_Q3.wav', xnT', fs);
% Uncomment/edit this next line to save the graph.
exportgraphics(gcf, 'Q3.jpg');