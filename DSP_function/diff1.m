%输出一阶后向差分（习题3.2）
function [y, ny] = diff1(x, n)
[xm, nm] = seqshift(x, n, 1);
[y, ny] = seqadd(x, n, -xm, nm);
