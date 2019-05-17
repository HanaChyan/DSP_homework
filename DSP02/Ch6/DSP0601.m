n = 0: 11;
k = -200: 200;
w = (pi/100)* k;
x = cos(n* pi/6);
xdtft = x* exp(-j* (pi/100).* n'* k);
magx = abs(xdtft);
angx = angle(xdtft);

subplot(211)
plot(w/pi, magx)
grid
xlabel('frequency');
ylabel('amplitude');

subplot(212)
plot(w/pi, angx)
grid
xlabel('frequency');
ylabel('angle');


