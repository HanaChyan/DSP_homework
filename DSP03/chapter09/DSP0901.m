% ch9.1
% problem a
N1 = 100;
n1 = [-10: 1: 11];
x1 = (0.6 .^ abs(n1)) .*(stepseq(-10, -10, 11) - stepseq(11, -10, 11));
xt1 = [x1, zeros(1, N1 - 22)]; %≤π¡„
xk1 = dft(xt1, N1);
%≤Â÷µª÷∏¥
m1 = 2000;
xw1 = interpo(xk1, -10: 1: N1-11, N1, m1 + 1);
mag1 = abs(xw1);
pha1 = angle(xw1);

figure(1)
subplot(2, 1, 1)
plot(0: 2/m1: 2, mag1);
xlabel('\omega'); ylabel('|x(ejw)|'); title('amplitude of DTFT(a)');
subplot(2, 1, 2)
plot(0: 2/m1: 2, pha1);
xlabel('\omega'); ylabel('angle(x(ejw))'); title('phase of DTFT');

%problem b:
N2 = 300;
n2 = [0: 1: 21];
x2 = n2.* (0.9).^n2.* (stepseq(0, 0, 21) - stepseq(21, 0, 21));
xt2 = [x2, zeros(1, N2 - 22)]; %≤π¡„
xk2 = dft(xt2, N2);
%≤Â÷µª÷∏¥
m2 = 2000;
xw2 = interpo(xk2,0: 1: N2 - 1, N2, m2 + 1);
mag2 = abs(xw2);
pha2 = angle(xw2);

figure(2)
subplot(2, 1, 1)
plot(0: 2* pi/m2: 2* pi, mag2);
xlabel('\omega'); ylabel('|x(ejw)|'); title('amplitude of DTFT(b)');
subplot(2, 1, 2)
plot(0: 2* pi/m2: 2* pi, pha2);
xlabel('\omega'); ylabel('angle(x(ejw))'); title('phase of DTFT');

%problem c:
N3 = 300;
n3 = [0: 1: 51];
x3 = (cos(0.5* pi.* n3) + j* sin(0.5* pi.* n3)).* (stepseq(0, 0, 51) - stepseq(51, 0, 51));
xt3 = [x3, zeros(1, N3 - 52)]; %≤π¡„
xk3 = dft(xt3, N3);
%≤Â÷µª÷∏¥
m3 = 2000;
xw3 = interpo(xk3,0: 1: N3 - 1, N3, m3 + 1);
mag3 = abs(xw3);
pha3 = angle(xw3);

figure(3)
subplot(2, 1, 1)
plot(0: 2* pi/m3: 2* pi, mag3);
xlabel('\omega'); ylabel('|x(ejw)|'); title('amplitude of DTFT(c)');
subplot(2, 1, 2)
plot(0: 2* pi/m3: 2* pi, pha3);
xlabel('\omega'); ylabel('angle(x(ejw))'); title('phase of DTFT');

%problem d: 
N4 = 100;
n4 = [-3: 1: 3];
x4 = [1, 2, 3, 4, 3, 2, 1];
xt4 = [x4, zeros(1, N4 - 7)]; %≤π¡„
xk4 = dft(xt4, N4);
%≤Â÷µª÷∏¥
m4 = 2000;
xw4 = interpo(xk4,-3: 1: N4 - 4, N4, m4 + 1);
mag4 = abs(xw4);
pha4 = angle(xw4);

figure(4)
subplot(2, 1, 1)
plot(0: 2* pi/m4: 2* pi, mag4);
xlabel('\omega'); ylabel('|x(ejw)|'); title('amplitude of DTFT(d)');
subplot(2, 1, 2)
plot(0: 2* pi/m4: 2* pi, pha4);
xlabel('\omega'); ylabel('angle(x(ejw))'); title('phase of DTFT');


% problem e: 
N5 = 100;
n5 = [-3: 1: 3];
x5 = [-1, -2, -3, 0, 3, 2, 1];
xt5 = [x5, zeros(1, N5 - 7)]; %≤π¡„
xk5 = dft(xt5, N5);
%≤Â÷µª÷∏¥
m5 = 2000;
xw5 = interpo(xk5,-3: 1: N5 - 4, N5, m5 + 1);
mag5 = abs(xw5);
pha5 = angle(xw5);

figure(5)
subplot(2, 1, 1)
plot(0: 2* pi/m5: 2* pi, mag5);
xlabel('\omega'); ylabel('|x(ejw)|'); title('amplitude of DTFT(e)');
subplot(2, 1, 2)
plot(0: 2* pi/m5: 2* pi, pha5);
xlabel('\omega'); ylabel('angle(x(ejw))'); title('phase of DTFT');




