%��λ��Ծ����, n0:��Ծ�㣬n1:��ʼ�㣬n2��������
function [x, n] = stepseq(n0, n1, n2)
if((n0 < n1)|(n0 > n2)|(n1 > n2))
    error('make sure: n1 < n0 < n2')
end
n = [n1: n2];
x = ((n - n0) >= 0);
