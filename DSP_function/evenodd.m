%ʵ���зֽ�Ϊż�ԳƷ�������ԳƷ���
function [xe, xo, m] = evenodd(x, n)
if any(imag(x) ~= 0)
    error('x is not a sequence')
end
[xm, nxm] = seqfold(x, n);
[xe, nxe] = seqadd(x, n, xm, nxm);
xe = xe/2;
[xo, nxo] = seqadd(x, n, -xm, nxm);
xo = xo/2;
m = min(min(nxe), min(nxo)): max(max(nxe),max(nxo));

