a = [1, -1, -1];
b = [0, 1, 0];

%��ϵͳ����H(z)
syms z
hz = poly2sym(b, z) / poly2sym(a, z);
pretty(hz)

%���㼫��
[z, p, k] = tf2zp(b, a); %z_zero, p_pole
sprintf('��㣺%f ', z(1))
sprintf('���㣺%f, %f', p(1), p(2))
subplot(2,1,1)
zplane(b, a)
title('�㼫��ֲ�ͼ')

%ָ����������֪���������ʱ����ϵͳ��
sprintf('������Ϊ|z| > %f', max(abs(p)))

%��弤��Ӧh(n)
[h, n] = impz(b, a);
subplot(2, 1, 2)
stem(n, h)
xlabel('n')
ylabel('h(n)')

