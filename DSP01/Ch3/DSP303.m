nx = 0: 20;
x = (0.9) .^ nx
ny = -20: 0;
y = (0.8) .^ -ny

[xf, nxf] = seqfold(x, nx)
[rxx, nxx] = conv_m(x, nx, xf, nxf) %自相关
[yf, nyf] = seqfold(y, ny)
[rxy, nxy] = conv_m(x, nx, yf, nyf) %互相关

subplot(2,1,1)
stem(nxx, rxx, '.')
title('自相关')

subplot(2,1,2)
stem(nxy, rxy, '.')
title('互相关')