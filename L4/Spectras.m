% Read in the signal from the audio file
[signal, Fs] = audioread("SecretMessage2023.wav");
L = length(signal);
T = 1 / Fs;

% Parameters for segmenting the signal
segmentDuration = 1;  % 1 second
segmentLength = round(segmentDuration * Fs);

% Calculate the number of segments
numSegments = floor(L / segmentLength);

% Loop through each segment
for i = 1:numSegments
    % Extract the current segment
    startIndex = (i - 1) * segmentLength + 1;
    endIndex = startIndex + segmentLength - 1;
    currentSegment = signal(startIndex:endIndex);
    
    % Take the DFT of the current segment
    Y = fft(currentSegment) / segmentLength;
    f = Fs / 2 * linspace(0, 1, segmentLength / 2 + 1);
    
    % Plot the single-sided magnitude spectrum for the current segment
    figure;
    plot(f, 2 * abs(Y(1:segmentLength/2 + 1)));
    title(['Spectrum for 1-Second Segment ' num2str(i)]);
    xlabel('Frequency (Hz)');
    ylabel('|Y(f)|');
    axis([0 Fs/2 0 .5/10]);
    grid('minor');
end
