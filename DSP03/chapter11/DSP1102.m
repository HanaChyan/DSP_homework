% rader算法实现倒位序
xn=[0, 1, 2, 3, 4, 5, 6, 7]; %输入2的整数次幂数组
len = length(xn);
half = length(xn)/2; %数组半长

for i = 1: len/2 - 1 %奇偶前后分开排序
    if i < half
        t = xn(half + 1);
        xn(half + 1) = xn(i + 1);%交换
        xn(i + 1) = t;
    end
    k = len/2;
    while(half >= k)
        half = half - k;
        k = k/2;
    end
    if half < k
    half = half + k;
    end
end
xn
