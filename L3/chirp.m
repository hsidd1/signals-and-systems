% c(t) = cos(πμt^2 + 2πf1t + φ) 

% chirp(fs) generates and plots a chirp signal with specified sampling frequency.
% 
% Input:
%   - fs: the sampling frequency in Hz
%   - f1: the frequency of the cosine in Hz
%   - mew
%
% Output:
%   - No return, but a plot and audio of the chirp signal is generated.
%

function chirp(fs, f1, mew)
    Ts = 1/fs; % s, sampling period
    tfinalplot = 2000*Ts; % s, plot for 2000 samples
    tfinal = 8; % s, play for 8 seconds
    nsound = 0:Ts:tfinal; % s, time vector for sound
    nplot = 0:Ts:tfinalplot; % s, time vector for plotting
    ct = cos(pi*mew*nsound.^2 + 2*pi*f1*nsound); % phase phi = 0
    plot(nplot,ct(1:length(nplot)));
    xlabel('Time (s)');
    ylabel('Amplitude');
    title(sprintf('$c(t) = \\cos(\\pi\\mu t^2 + 2\\pi f_1 t + \\phi)$, $fs = %d$ Hz, $f_1 = %d$ Hz, $\\mu = %d$', fs, f1, mew), 'Interpreter', 'latex');
    % sound(ct,fs); % headphones user warning !
    filename = sprintf('soundfile_chirp_%dHz.wav', fs);
    audiowrite(filename, ct, fs);
    exportgraphics(gcf,'Figures/chirpchirp.png');
end

% play around with parameters as follows:
% chirp(32000, 100, 2000) % 32 kHz fs, 100 Hz f1, 2000 mew
% chirp(16000, 100, 2000) % 16 kHz fs, 100 Hz f1, 2000 mew
