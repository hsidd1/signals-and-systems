[signal, Fs] = audioread('my_speech_clip.wav');
L = length(signal); % Number of samples in the signal.
T = 1/Fs; % Sampling period in seconds.
t = [0:L-1]*T; % Time vector in seconds.
Te = 0.5; % delay in seconds.
A = 1; % Amplitude factor

Le = round(Te*Fs); % Delay in samples until impulse

impulse = zeros(1, Le);
impulse(Le) = A;
echosignal = conv(signal, impulse);

signalplusecho = [signal ; zeros(Le-1,1)] + echosignal;

signalplusecho = signalplusecho / max(abs(signalplusecho));

audiowrite('speechwithecho_conv.wav', signalplusecho, Fs);