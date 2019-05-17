a = [1, -1, -1];
b = [0, 1, 0];

%求系统函数H(z)
syms z
hz = poly2sym(b, z) / poly2sym(a, z);
pretty(hz)

%求零极点
[z, p, k] = tf2zp(b, a); %z_zero, p_pole
sprintf('零点：%f ', z(1))
sprintf('极点：%f, %f', p(1), p(2))
subplot(2,1,1)
zplane(b, a)
title('零极点分布图')

%指明收敛域（已知因果，线性时不变系统）
sprintf('收敛域为|z| > %f', max(abs(p)))

%求冲激响应h(n)
[h, n] = impz(b, a);
subplot(2, 1, 2)
stem(n, h)
xlabel('n')
ylabel('h(n)')

