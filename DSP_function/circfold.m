%N��ѭ����ת����
function x2 = circfold(x1, N)
x1dft = dft(x1, N);
x2 = dft(x1dft, N)/N;