%用于10.1题检测频谱是否泄露的函数
function test1001(fs)
f0 = 50;  N = 16;
n = 0: 1/fs: (N-1)/fs;
xn = sin(2* pi* f0* n);
xk = dft(xn, N);
a1 = 2/N* (abs(xk(5)))^2; %即k=4处， 50Hz谱线
b1 = sum(xn.^2);
A = ['fs = ', num2str(fs)];
disp(A)
if abs(a1-b1) <= eps
    disp('频谱无泄露')
else disp('频谱泄露')
end