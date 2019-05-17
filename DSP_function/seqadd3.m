%序列对幅度求和(3组序列)
%x-序列，n-对应序号
function [y, n] = seqadd3(x1,n1,x2,n2,x3,n3)
n = min(min(min(n1), min(n2)),min(n3)) : max(max(max(n1), max(n2)),max(n3)); 
%位置向量n
y1 = zeros(1, length(n)); 
y2 = y1;
y3 = y1;

s1 = find((n >= min(n1)) & (n <= max(n1)));
s2 = find((n >= min(n2)) & (n <= max(n2)));
s3 = find((n >= min(n3)) & (n <= max(n3)));
y1(s1) = x1;
y2(s2) = x2;
y3(s3) = x3;
y = y1 + y2 + y3;