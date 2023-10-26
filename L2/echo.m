[signal, Fs] = audioread('my_speech_clip.wav');
L = length(signal); % Number of samples in the signal.
T = 1/Fs; % Sampling period in seconds.
t = [0:L-1]*T; % Time vector in seconds.
Te = 2; % delay in seconds.
A = 0.3; % Amplitude factor

Le = round(Te*Fs); % extra samples needed to finish echo

padding = zeros(Le, 1);

signalplusecho =  [signal ; padding] + A.*[padding ; signal];

signalplusecho = signalplusecho / max(abs(signalplusecho));

audiowrite('speechwithecho.wav', signalplusecho, Fs);