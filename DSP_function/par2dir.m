%并联型转直接型
function [b, a] = par2dir(C, B, A)
[k, l] = size(A); R = []; P = [];
for i = 1: 1: k
    [r, p, k] = residuez(B(i, :), A(i, :));
    R = [R; r]; P = [P; p];
end
[b, a] = residuez(R, P , C); b = b(:)'; a = a(:)';