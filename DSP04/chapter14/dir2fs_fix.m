%修正后（半径由1变为单位圆内的r，无限趋近于1）
%直接型h(n)转频率抽样型：c增益，b分子，a分母
function [c, b, a] = dir2fs_fix(h, r)
%r limited to 1
m = length(h); H = fft(h, m);
magh = abs(H); phah = angle(H)';
if (m == 2*floor(m/2)) %偶数点
    L = m/2 - 1; 
    a1 = [1, -r, 0; 1, r, 0]; %一对实根
    c1 = [real(H(1)), real(H(L) + 2)];
else %奇数点
    L = (m - 1)/2; 
    a1 = [1, -r, 0]; c1 = [real(H(1))]; %单实根
end
k = [1: L]'; b = zeros(L, 2); a = ones(L, 3);
a(1: L, 2) = -2*r*cos(2*pi*k/m); 
a(1: L, 3) = r^2; a = [a; a1];
b(1: L, 1) = cos(phah(2: L + 1));
b(1: L, 2) = -r*cos(phah(2: L + 1));
c = [2*magh(2: L + 1), c1]';
