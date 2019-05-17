%共轭反对称与共轭对称序列
function [conjo, conje, m] = conjoe(x, n)
[xm, nxm] = seqfold(x, n);
xm = conj(xm);

[conje, nxe] = seqadd(x, n, xm, nxm);
conje = conje/2;
[conjo, nxo] = seqadd(x, n, -xm, nxm);
conjo = conjo/2;
m = min(min(nxe), min(nxo)): max(max(nxe),max(nxo));



