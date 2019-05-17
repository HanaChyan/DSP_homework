clear all;
f1 = 10.8; f2 = 11.75; f3 = 12.55;
fs = 40; N = 64; n = 0: N-1;
xn = sin(2*pi*f1*n/fs) + sin(2*pi*f2*n/fs) + sin(2*pi*f3*n/fs);


%problem a
figure(1)
Ma = N; a = 1; w = exp(-j*2*pi/Ma);
na = fs/N*(0: N/2 - 1);
ya = czt(xn, Ma, w, a);
plot(na, abs(ya(1: N/2)))
xlabel('f'); ylabel('mag');

%problem b
figure(2)
xb1 = [xn, zeros(1, 3*N)]; %≤π¡„3N
nb1 = (0: (2*N - 1))* fs/(4*N);
yb1 = dft(xb1, 4* N);
subplot(311); plot(nb1, abs(yb1(1: 2*N)))
xlabel('f(≤π¡„3N)'); ylabel('mag');

xb2 = [xn, zeros(1, 7*N)]; %≤π¡„7N
nb2 = (0: (4*N - 1))* fs/(8*N);
yb2 = dft(xb2, 8* N);
subplot(312); plot(nb2, abs(yb2(1: 4*N)))
xlabel('f(≤π¡„7N)'); ylabel('mag');

xb3 = [xn, zeros(1, 15*N)]; %≤π¡„15N
nb3 = (0: (8*N - 1))* fs/(16*N);
yb3 = dft(xb3, 16* N);
subplot(313); plot(nb3, abs(yb3(1: 8*N)))
xlabel('f(≤π¡„15N)'); ylabel('mag');

% problem c
f0 = 10.0; deltaf = 0.05; Mc = 60;
ac = exp(j*2*pi*f0/fs); w = exp(-j*2*pi*deltaf/fs);
yc = czt(xn, Mc, w, ac); 
nc = f0: deltaf: f0 + (Mc-1)* deltaf;
figure(3)
plot(nc, abs(yc));
xlabel('f'); ylabel('mag');

% problem d
N = 64;
yd = fft(xn, N);
figure(4)
subplot(211); plot([11: 27], abs(yd(11: 27)));
xlabel('f(d)'); ylabel('mag');
subplot(212); plot([11: 27], abs(ya(11: 27)));
xlabel('f(a)'); ylabel('mag');
