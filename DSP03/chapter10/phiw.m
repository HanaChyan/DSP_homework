%Ch9 exercise: Xk�ָ�Xejw�Ĳ�ֵ�ָ���ʽ
function [phi] = phiw(w, k, N)
phi = sin(w.* N/2)./(N.* sin(w/2)).*exp(-j* (N - 1).* w/2);
end