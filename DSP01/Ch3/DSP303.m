nx = 0: 20;
x = (0.9) .^ nx
ny = -20: 0;
y = (0.8) .^ -ny

[xf, nxf] = seqfold(x, nx)
[rxx, nxx] = conv_m(x, nx, xf, nxf) %�����
[yf, nyf] = seqfold(y, ny)
[rxy, nxy] = conv_m(x, nx, yf, nyf) %�����

subplot(2,1,1)
stem(nxx, rxx, '.')
title('�����')

subplot(2,1,2)
stem(nxy, rxy, '.')
title('�����')