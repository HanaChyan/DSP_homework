% rader�㷨ʵ�ֵ�λ��
xn=[0, 1, 2, 3, 4, 5, 6, 7]; %����2��������������
len = length(xn);
half = length(xn)/2; %����볤

for i = 1: len/2 - 1 %��żǰ��ֿ�����
    if i < half
        t = xn(half + 1);
        xn(half + 1) = xn(i + 1);%����
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
