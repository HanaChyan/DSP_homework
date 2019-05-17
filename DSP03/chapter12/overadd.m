%重叠相加法
function y = overadd(x, h, L)
lx = length(x); M = length(h);
if L > lx || L < length(h)
    error('L not fitted(l > lx)or(l < length(h))')
end
x = [x, zeros(1, L-1)];
t = zeros(1, M-1);
y = zeros(1, lx + M -1);
a = floor(lx/L);
for k = 0: a
    A = x(k*L + 1: k*L + L);
    y1 = fft(A, lx + M - 1);
    y2 = fft(h, lx + M - 1);
    y3 = y1.*y2;
    q = ifft(y3, lx + M -1);
    y(k*L + 1: k*L + M - 1) = q(1: M - 1) + t(1: M - 1);
    y(k*L + M: k*L + L) = q(M: L);
    t(1: M - 1) = q(L + 1: L + M -1);
end
