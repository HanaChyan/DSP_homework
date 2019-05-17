a= 0.7;
[u, n] = stepseq(0, -15, 15); %x(n)
h = (a .^ n) .* u ; %h(n)
x = stepseq(0, -15, 15) - stepseq(5, -15, 15);
[hf, nf] = seqfold(h, n);

for i = 1: 15;
    [hs, ns] = seqshift(hf, nf, i);
    [hc, nc] = conv_m(u, n, hs, ns);
    %figuring
    subplot(2, 1, 1)
    stem(n, x)
    subplot(2, 1, 2)
    stem(nc, hc)
    axis([-15,15,0,4])
    
    M(i) = getframe
end 

movie(M,1,1)






