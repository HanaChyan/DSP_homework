% (1)
fs1 = 100;
test1001(fs1)
% (2)
fs2 = 150;
test1001(fs2)
% (3)
fs3 = 200;
test1001(fs3)
% (4)
f0 = 50;  N = 16; fs = 200;
n = 0: 1/fs: (N-1)/fs;
xn = sin(2* pi* f0* n); xn32 = [xn, zeros(1, N)]; % ����
xk = dft(xn, N); xk32 = dft(xn32, 2* N);
magk = abs(xk); phak = angle(xk);
magk32 = abs(xk32); phak32 = angle(xk32);

subplot(221)
stem(0: N-1, magk, '.')
title('16��DTFT������')
subplot(222)
stem(0: N-1, phak, '.')
title('16��DTFT��λ��')
subplot(223)
stem(0: 2*N-1, magk32, '.')
title('32��DTFT������')
subplot(224)
stem(0: 2*N-1, phak32, '.')
title('32��DTFT��λ��')
%����ʹ���߸��ܼ���������߷ֱ���



