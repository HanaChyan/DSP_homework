a = [1, -0.5, -0.25];
b = [1];
Y = [1, 2];
xic = filtic(b, a, Y);

%ʵ��ֵ
n = 0: 19;
un = stepseq(0, 0, n);
xn = (0.8.^ n).* un;
y = filter(b, a, xn, xic) 

%����ֵ
a = 19; %n = 0: a
yi = zeros(a + 3);
yi(1) = 2; yi(2) = 1;
for i = 0: a
    xi = (0.8)^i;
    yi(i + 3) = 0.5* yi(i + 2) + 0.25* yi(i + 1) + xi; 
end
yi = yi(3: a + 3) 
% ����ֵҲ������z�任�õ�ȫ��Ӧ����������������������ֱ�ӵ���긽Ǹ�ֱ��һ�㣬���Ҳ������ƴ�>_<

%�ж��Ƿ����
t = 1;
for i = 1 : a + 1
    if yi(i)- y(i) <= eps
        t = t* 1;
    else
        t = 0;
        break
    end
end
if t == 1
    disp('true')
else
    disp('false')
end
   
    

