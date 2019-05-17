%已知ab系数，由直接型系统转级联型系统
function [b0, B, A] = dir2cas(b, a)
b0 = b(1); b = b/b0; a0 = a(1); a = a/a0;
b0 = b0/a0;
m = length(b); n = length(a);
if n > m
    b = [b zeros(1, n - m)];
elseif m > n
    a = [a zeros(1, m - n)]; n = m;
else
    nm = 0;%不解
end
k = floor(n/2); B = zeros(k, 3); A = zeros(k, 3);
if k*2 == n
    b = [b 0]; a = [a 0];
end
broots = cplxpair(roots(b)); aroots = cplxpair(roots(a));
for i = 1: 2: 2*k
    brow = broots(i: 1: i + 1, :); brow = real(poly(brow));
    B(fix(i + 1)/2, :) = brow;
    arow = aroots(i: 1: i + 1, :); arow = real(poly(arow));
    A(fix((i + 1)/2), :) = arow;
end