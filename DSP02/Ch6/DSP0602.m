%��Ƶ����Ƶ��Ӧ����
a = [1, -0.9, 0.81];
b = [1, 1];
n = 300; %n��������Ϊ3�ı���
[h, w] = freqz(b, a , [-pi: 2* pi/n: pi]);
magh= abs(h);
angh = angle(h);

subplot(211)
plot(w/pi, magh)
xlabel('frequency')
ylabel('amplitude')
title('��Ƶ��Ӧ')
hold on
plot(1/3, magh(n*(2/3) + 1), 'o', 'color', 'r')
text(1/3, magh(n*(2/3) + 1), 'w = \pi/3')
hold on
plot(1, magh(n + 1), 'o', 'color', 'r')
text(1, magh(n+ 1), 'w = \pi')

figure(1)
subplot(212)
plot(w/pi, angh)
xlabel('frequency')
ylabel('phase')
title('��Ƶ��Ӧ')
hold on
plot(1/3, angh(n*(2/3) + 1), 'o', 'color', 'r')
text(1/3, angh(n*(2/3) + 1), 'w = \pi/3')
hold on
plot(1, angh(n + 1), 'o', 'color', 'r')
text(1, angh(n + 1), 'w = \pi')

%�˲���
n = 1: 200;
x = sin(n* pi/3) + 5* cos(n* pi);
y = filter(b, a, x);

k = -200: 200;
w = (pi/100)* k;
xdtft = x* exp(-j* (pi/100).* n'* k);
ydtft = y* exp(-j* (pi/100).* n'* k);
magx = abs(xdtft); angx = angle(xdtft);
magy = abs(ydtft); angy = angle(ydtft);

%�ȽϷ��Ⱥ���λ
figure(2)
subplot(211)
plot(w/pi, magx, 'b')
hold on
plot(w/pi, magy, 'r')
xlabel('frequency')
ylabel('amplitude')
legend('x','y')

subplot(212)
plot(w/pi, angx, 'b')
hold on
plot(w/pi, angy, 'r')
xlabel('frequency')
ylabel('phase')
legend('x','y')








