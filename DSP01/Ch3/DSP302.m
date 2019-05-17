a = -5; 
b = 30;
n = [a: b];

x1 = 5*(stepseq(0,a,b)-stepseq(20, a, b))
[y1, n1] = diff1(x1, n)
subplot(3,1,1)
stem(n1, y1,'.')

x2 = n .* (stepseq(0, a, b)- stepseq(10, a, b)) + (20-n) .*(stepseq(10, a, b)- stepseq(20, a, b))
[y2, n2] = diff1(x2, n)
subplot(3,1,2)
stem(n2, y2,'.')

a = -10;
b = 110;
n = [a: b]
x3 = sin(pi*n/25) .* (stepseq(0,a,b)-stepseq(100, a, b))
[y3, n3] = diff1(x3, n)
subplot(3,1,3)
stem(n3, y3,'.')
