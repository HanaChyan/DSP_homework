%序列之积
function [y,n] = seqmult(x1,n1,x2,n2)
n = min(min(n1),min(n2)): max(max(n1),max(n2)); %位置向量n
y1 = zeros(1, length(n));
y2 = y1;
s1 = find((n >= min(n1)) & (n <= max(n1)));
s2 = find((n >= min(n2)) & (n <= max(n2)));
y1(s1) = x1;
y2(s2) = x2;
y = y1.*y2;