%�������׽ڣ������ź�x������b0���õ��������ֱ����filter��Ӧ��ͬ��
function y  = casfiltr(b0, b, a, x)
[k, l] = size(b);
n = length(x); w = zeros(k+1, n); w(1, :) = x;
for i = 1: 1: k
    w(i+1, :) = filter(b(i, :), a(i, :), w(i, :));
end
y = b0*w(k+1, :);
