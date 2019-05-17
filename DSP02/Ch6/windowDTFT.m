%输出题6.3中指定xn的四个窗函数dtft图像
function windowDTFT(xn)
n = 0: xn;
rn = stepseq(0, 0, xn);
cn = 0.5* (1 - cos(2* pi* n/xn - 1)).* n;
tn = (1 - abs(xn - 1 -2*n)/(xn + 1)).* n;
hn = (0.54 - 0.46* cos(2* pi* n/(xn - 1))).* n;

k = -200: 200;
w = (pi/200)* k;
rdtft = rn* exp(-j* (pi/200).* n'* k);
cdtft = cn* exp(-j* (pi/200).* n'* k);
tdtft = tn* exp(-j* (pi/200).* n'* k);
hdtft = hn* exp(-j* (pi/200).* n'* k);%DTFT

magr = abs(rdtft);
magr = magr/max(abs(magr));
magc = abs(cdtft);
magc = magc/max(abs(magc));
magt = abs(tdtft);
magt = magt/max(abs(magt));
magh = abs(hdtft);
magh = magh/max(abs(magh)); %求幅度并归一化

plot(w/pi, magr,'r')
hold on
plot(w/pi, magc,'g')
hold on
plot(w/pi, magt,'k')
hold on
plot(w/pi, magh,'b')
grid
legend('R(n)', 'C(n)', 'T(n)', 'F(n)')
xlabel('frequency(*\omega)');
ylabel('amplitude');