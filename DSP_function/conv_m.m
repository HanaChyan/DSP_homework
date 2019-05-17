%序列的线性卷积
function [y, ny] = conv_m(x,nx,h,nh)
ny1 = nx(1) + nh(1);
ny2 = nx(end) + nh(end);
y = conv(x,h);
ny = [ny1: ny2]; %卷积长度