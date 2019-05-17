%Ch9 exercise: Xk恢复Xejw的插值恢复公式
function [phi] = phiw(w, k, N)
phi = sin(w.* N/2)./(N.* sin(w/2)).*exp(-j* (N - 1).* w/2);
end