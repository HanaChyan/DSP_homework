%�����󣨰뾶��1��Ϊ��λԲ�ڵ�r������������1��
%ֱ����h(n)תƵ�ʳ����ͣ�c���棬b���ӣ�a��ĸ
function [c, b, a] = dir2fs_fix(h, r)
%r limited to 1
m = length(h); H = fft(h, m);
magh = abs(H); phah = angle(H)';
if (m == 2*floor(m/2)) %ż����
    L = m/2 - 1; 
    a1 = [1, -r, 0; 1, r, 0]; %һ��ʵ��
    c1 = [real(H(1)), real(H(L) + 2)];
else %������
    L = (m - 1)/2; 
    a1 = [1, -r, 0]; c1 = [real(H(1))]; %��ʵ��
end
k = [1: L]'; b = zeros(L, 2); a = ones(L, 3);
a(1: L, 2) = -2*r*cos(2*pi*k/m); 
a(1: L, 3) = r^2; a = [a; a1];
b(1: L, 1) = cos(phah(2: L + 1));
b(1: L, 2) = -r*cos(phah(2: L + 1));
c = [2*magh(2: L + 1), c1]';
