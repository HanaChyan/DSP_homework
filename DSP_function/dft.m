% DFT
function [xk] = dft(xn, N)
n = [0: 1: N - 1];
k = [0: 1: N - 1];
wn = exp(-j* 2* pi/N);
nk = n'* k;
wnk = wn .^ nk;
xk = xn* wnk;