fs = 100; w = 15; N = 4096;
n = 0: N - 1; f = n* fs/N;
xn = sin(2*pi*w*n/fs) + randn(1, N);
yn = fft(xn, N);
mag = abs(yn);

subplot(211);stem(f, mag,'.');
xlabel('f'); ylabel('mag');
subplot(212);plot(f, mag);
xlabel('f'); ylabel('mag');


