%exercise2.1
x = [2,4,-3,-1,-5,4,7];
n = [-3:3];

[x1, n1] = seqadd3(2*x, n+3, 3*x, n-4, -x, n)  
subplot(2, 2, 1)
stem(n1, x1, 'fill')
title('answer1')

[x2, n2] = seqadd3(4*x, n-4, 5*x, n-5, 2*x, n)
subplot(2, 2, 2)
stem(n2, x2, 'fill')
title('answer2')

[x31, n31] = seqmult(x, n-3,x,n+2);
[x32, n32] = seqmult(fliplr(x), -fliplr(n)-1,x,n-1);
[x3, n3] = seqadd(x31, n31, x32, n32)
subplot(2, 2, 3)
stem(n3, x3, 'fill')
title('answer3')

[x41, n41] = seqmult(cos(0.1*pi*n), n, x, n-2);
[x42, n42] = seqadd((2*exp(0.5*n)).*x, n, x41, n41)
x4 = zeros(1,21);
x4(n42+11) = x42
n4 = [-10:10]
subplot(2, 2, 4)
stem(n4, x4, 'fill')
title('answer4')

