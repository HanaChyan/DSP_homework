%序列移位
function [y,ny] = seqshift(x,nx,m) 
%将序列x，nx右移m个抽样周期
ny = nx + m;
y = x;