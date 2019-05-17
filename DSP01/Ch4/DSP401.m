a = [1,-0.5, 0.25];
b = [1, 2, 1];

%problem_a
n = 0: 100;
h = impz(b, a, n);
subplot(2, 1, 1)
stem(n, h, '.')
title('problem a')
xlabel('n')
ylabel('h(n)')

%problem_b
n = 0: 200;
x = (5 + 3*cos(0.2*pi.* n) + 4*sin(0.6*pi.* n)).* stepseq(0, 0, 200);
r = filter(b, a, x);
subplot(2, 1, 2)
stem(n, r, '.')
title('problem b')
xlabel('n')
ylabel('r(n)')

