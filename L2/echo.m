[signal, Fs] = audioread('my_speech_clip.wav');
L = length(signal); % Number of samples in the signal.
T = 1/Fs; % Sampling period in seconds.
t = [0:L-1]*T; % Time vector in seconds.
Te = 2; % delay in seconds.
A = 0.3 % coefficient of echo

Le = Te/T; % extra samples needed to finish echo

signalplusecho =  [signal; zeros(Le, 1)] + A.*[zeros(Le, 1) ; signal];

tAdd = [L-1 : L-1 + Te*Fs]'*T; % extra time to finish the echo
tNew = [t' ; tAdd(2:end)];

signalplusecho = signalplusecho / max(abs(signalplusecho));

audiowrite('speechwithecho.wav', signalplusecho, Fs);