%% Part 1 : 1D FFT

% Generate Noisy Signal

% Specify the parameters of a signal with a sampling frequency of 1 kHz 
% and a signal duration of 1.5 seconds.

Fs = 1000;            % Sampling frequency                    
T = 1/Fs;             % Sampling period       
L = 1500;             % Length of signal
t = (0:L-1)*T;        % Time vector

% Form a signal containing a 50 Hz sinusoid of amplitude 0.7 and a 120 Hz 
% sinusoid of amplitude 1.

S = 0.7*sin(2*pi*50*t) + sin(2*pi*120*t);

% Corrupt the signal with zero-mean white noise with a variance of 4
X = S + 2*randn(size(t));


figure(1);

% left plot

plot(1000*t(1:50), X(1:50))
title('Signal corrupted with Zero-Mean Random Noise')
xlabel('t (milliseconds)')
ylabel('X(t)')

% Compute the Fourier Transform of the Signal.

Y = fft(X);


P2 = abs(Y/L);
P1 = P2(1:L/2+1);

f = Fs*(0:(L/2))/L;


plot(f,P1) 
title('Single-Sided Amplitude Spectrum of X(t)')
xlabel('f (Hz)')
ylabel('|P1(f)|')

saveas(gcf, 'fft_1d.png')


M = length(X)/50;
N = length(X)/30;

X_2d = reshape(X, [M, N]);

figure(2);


imagesc(X_2d)


Y_2d = fft2(X_2d);


imagesc(abs(fftshift(Y)))

saveas(gcf, 'fft_2d.png')