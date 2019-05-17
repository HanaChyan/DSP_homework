function [b,a] = imp_invr(c,d,T)
% Impulse Invariance Transformation from AF to DF
%  b = Numerator polynomial in z^(-1) of DF
%  a = Denominator polynomial in z^(-1) of DF
%  c = Numerator polynomial in s of the AF
%  d = Denominator polynomial in s of the AF
%  T = Sampling (transformation) parameter
% 输出为列向量
[R,p,k] = residue(c,d);
p = exp(p*T);
[b,a] = residuez(R,p,k);
b = real(b'); a = real(a');