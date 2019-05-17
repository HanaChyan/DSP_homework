%单位阶跃序列, n0:阶跃点，n1:起始点，n2：结束点
function [x, n] = stepseq(n0, n1, n2)
if((n0 < n1)|(n0 > n2)|(n1 > n2))
    error('make sure: n1 < n0 < n2')
end
n = [n1: n2];
x = ((n - n0) >= 0);
