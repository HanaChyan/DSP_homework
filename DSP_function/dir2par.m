%直接型转并联型
function [C, B, A] = dir2par(b, a)
m = length(b); n = length(a); [r1, p1, C] = residuez(b, a);
p = cplxpair(p1, 10e7*eps); I = cplxcomp(p1, p);
r = r1(I);
k = floor(n/2); B = zeros(k, 2); A = zeros(k, 3);
if k*2 == n
    for i = 1: 2: n-2
        brow = r(i: 1: i+1, :); arow = p(i: 1: i+1, :);
        [brow, arow] = residuez(brow, arow, []);
        B(fix((i + 1)/2), :) = real(brow);
        A(fix((i + 1)/2), :) = real(arow);
    end
    [brow, arow] = residuez(r(n - 1), p(n - 1), []);
    B(k, :) = [real(brow) 0]; A(k, :) = [real(arow) 0];
else
    for i = 1: 2: n-1
        brow = r(i: 1: i + 1, :); arow = p(i: 1: i+1, :);
        [brow, arow] = residuez(brow, arow, []);
        B(fix((i + 1)/2), :) = real(brow);
        A(fix((i + 1)/2), :) = real(arow);
    end
end
