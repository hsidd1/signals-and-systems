[signal, Fs] = audioread('my_speech_clip.wav');
L = length(signal); % Number of samples in the signal.
T = 1/Fs; % Sampling period in seconds.
t = [0:L-1]*T; % Time vector in seconds.
Te = 0.05; % delay in seconds.
A = 0.5; % Amplitude factor

Ne = 10; % Number of echos

Le = round(Te*Fs); % Delay in samples until impulse

impulse = zeros(1, Le*Ne);
for i = 1:Ne
    impulse(Le*i) = A^i;
end

reverbsignal = conv(signal, impulse);

signalplusreverb = signal + reverbsignal(1 : L);

signalplusreverb = signalplusreverb / max(abs(signalplusreverb));

audiowrite('speechwithreverb.wav', signalplusreverb, Fs);