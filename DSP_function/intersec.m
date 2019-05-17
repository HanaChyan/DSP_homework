%I±¶²åÖµº¯Êý
function [y, ny] = intersec(x, nx, I)
y = zeros(1, I*length(x)); 
ny = min(nx): min(nx) + I*length(x) - 1;
for i = 0: 1: I*length(x) - 1
    if i/I == fix(i/I)
        y(i + 1) = x(i/I + 1);
    end
end