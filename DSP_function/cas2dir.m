%级联型转直接型
function [b, a] = cas2dir(b0, B, A)
[k, ~] = size(B);
b = [1]; a = [1];
for i = 1: 1: k
   b = conv(b, B(i, :)); a = conv(a, A(i, :));
end
b = b* b0;