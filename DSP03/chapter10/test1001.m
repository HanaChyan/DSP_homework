%����10.1����Ƶ���Ƿ�й¶�ĺ���
function test1001(fs)
f0 = 50;  N = 16;
n = 0: 1/fs: (N-1)/fs;
xn = sin(2* pi* f0* n);
xk = dft(xn, N);
a1 = 2/N* (abs(xk(5)))^2; %��k=4���� 50Hz����
b1 = sum(xn.^2);
A = ['fs = ', num2str(fs)];
disp(A)
if abs(a1-b1) <= eps
    disp('Ƶ����й¶')
else disp('Ƶ��й¶')
end