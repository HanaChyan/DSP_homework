n = [0: 10];
x = 10 .^((-0.1 + 0.2*pi*j)*n);

[conjo, conje, m] = conjoe(x, n)


subplot(221)
stem(m, real(conjo), 'fill');
axis([-10, 10, 1.2*min(real(conjo)),1.2*max(real(conjo))])
title('������Գ�')
ylabel('ʵ��')
grid on

subplot(222)
stem(m, real(conje), 'fill');
axis([-10, 10, 1.2*min(real(conje)),1.2*max(real(conje))])
title('����ż�Գ�')
grid on



subplot(223)
stem(m, imag(conjo), 'fill');
axis([-10, 10, 1.2*min(imag(conjo)),1.2*max(imag(conjo))])
ylabel('�鲿')
grid on

subplot(224)
stem(m, imag(conje), 'fill');
axis([-10, 10, 1.2*min(imag(conje)),1.2*max(imag(conje))])
grid on

