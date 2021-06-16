Fs = 1000;            % Sampling frequency                    
T = 1/Fs;             % Sampling period       
L = 1500;             % Length of signal
t = (0:L-1)*T;        % Time vector

S = 0.7*sin(2*pi*77*t) + 2*sin(2*pi*43*t); #Signal containing a 77 Hz sinusoid of amplitude 0.7 and a 43 Hz sinusoid of amplitude 2


X = S + 2 * randn(size(t)); #Add some noise into the signal

Y = fft(X);
P2 = abs(Y/L);
P1 = P2(1:L/2+1);


f = Fs*(0:(L/2))/L;
plot(f,P1) 
title('Single-Sided Amplitude Spectrum of X(t)')
xlabel('f (Hz)')
ylabel('|P1(f)|')

