%先写出problem b中函数，函数名储存为circfold

% problem a
%例子一
N = 17;
x1n = [1: 17]; 
x1k = dft(dft(x1n ,N), N)
x1test = circfold(x1n, N)* N

%检测是否相同
if x1test == x1k
    disp('true')
else
    disp('false')
end

%例子2
N = 15;
x2n = [ones(1, 4), zeros(1, N - 4)]; 
x2k = dft(dft(x2n ,N), N)
x2test = circfold(x2n, N)* N

if x2test == x2k
    disp('true')
else
    disp('false')
end

%problem c
xn = [1, 3, 5, 7, 9, -7, -5, -3, -1];
xfold = circfold(xn, length(xn))
