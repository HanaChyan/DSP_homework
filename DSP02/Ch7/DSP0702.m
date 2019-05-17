zx = [0; 0];
px = [0.8* exp(j* pi/4); 0.8* exp(-j* pi/4)];
kx = 1; %设初始增益为1

%problem a
syms z
hz = kx* (z - zx(1))* (z - zx(2))/(z - px(1))/(z - px(2))
pretty(hz) %写出H(z)
subplot(3, 1, [1, 2])
zplane(zx, px) %画出零极点图

%problem b
num = 20; %输出显示到n=num
xn = stepseq(0, 0, num);
[b, a] = zp2tf(zx, px, kx);
Y = [1, 1];
xic = filtic(b, a, Y);
yn = filter(b, a, xn, xic) %输出yn
subplot(3, 1, 3)
stem([0: num], yn, '.')
maxy = max(yn);
ylim([-maxy, 1.2* maxy])





