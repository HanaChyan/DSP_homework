N = 10; k = 0: 1: N-1; wk = 2* pi* k/N;
zk = exp(j* wk); xk = zk./(zk-0.7);
xn = real(idft(xk, N));
xtilde = xn'* ones(1, 8); xtilde1 = (xtilde(:))'
stem(0: length(xtilde1)-1, xtilde1);
axis([0, 40, -0.1, 1.5])
