%并联形式的输出
function y = parfiltr(C, B, A, x)
[k, l] = size(B); n = length(x); w = zeros(k+1, n);
w(l, :) = filter(C, 1, x);
for i = 1: 1: k
    w(i + 1, :) = filter(B(i,:), A(i,:), x);
end
y = sum(w);