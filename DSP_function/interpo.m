% Ch9: exerciseDFT��ֵ�ָ�DTFT
function [xjw] = interpo(xk, nk, N, m) % m:omega��m�ȷ�
n = [0: 1: m-1];
wn = 2* pi/m* n;
xw = zeros(1, m);
for i = 1: m
    xw(i) = xk* phiw(wn(i)-2* pi* nk/N, nk, N)';
end
xjw = xw;    
    