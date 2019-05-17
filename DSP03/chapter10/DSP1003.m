n1 = 0: 1: 1023; x1n = sin(pi*n1/5 + pi/2);  ts = 1/10;
%problem c
%m������
for k = 0: 40;
    m = k;
    [x2n, n2] = seqshift(x1n, n1, m);
    %3����ȡ
    j = 1;
    for i = 0: 1: 1023
        if i/3 == fix(i/3)
            x11n(i/3 + 1) = x1n(i + 1);
            n11(i/3 + 1) = i/3; 
        end
        if (m + i)/3 == fix((m + i)/3)
            x21n(j) = x2n(i + 1);
            n21(j) = (m + i)/3;
            j = j+1;
        end
    end
    %I����ֵ
    I = 2;
    [x12n, n12] = intersec(x11n, n11, I);
    [x22n, n22] = intersec(x21n, n21, I);

    [x22n_fold, n22_fold] = seqfold(x22n, n22);
    [rx12x22, nr] = conv_m(x12n, n12,x22n_fold, n22_fold);
    %stem(nr, rx12x22, '.')
    [a, b] = max(rx12x22);%�ҳ����ƫ����
    screwy1(k + 1) = nr(b)/ts; screwx1(k + 1) = k;
end
figure(1)
subplot(211)
stem(screwx1, screwy1, '.')
xlabel('����λ��m��2����ֵ'); ylabel('ƫ����������/Ts��');

%prblem d
% I����ֵ
for k = 1: 20;
    m = 3;
    [x2n, n2] = seqshift(x1n, n1, m);
    %3����ȡ
    j = 1;
    for i = 0: 1: 1023
        if i/3 == fix(i/3)
            x11n(i/3 + 1) = x1n(i + 1);
            n11(i/3 + 1) = i/3; 
        end
        if (m + i)/3 == fix((m + i)/3)
            x21n(j) = x2n(i + 1);
            n21(j) = (m + i)/3;
            j = j+1;
        end
    end
    %I����ֵ
    I = k
    [x12n, n12] = intersec(x11n, n11, I);
    [x22n, n22] = intersec(x21n, n21, I);

    [x22n_fold, n22_fold] = seqfold(x22n, n22);
    [rx12x22, nr] = conv_m(x12n, n12,x22n_fold, n22_fold);
    [a, b] = max(rx12x22);%�ҳ����ƫ����
    screwy2(k) = nr(b)/ts; screwx2(k) = k;
end
subplot(212)
stem(screwx2, screwy2, '.')
xlabel('��ֵ����I��3��λ��'); ylabel('ƫ����������/Ts��');

        