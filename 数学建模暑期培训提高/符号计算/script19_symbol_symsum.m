clear,clc
syms k;
f1 = (k-2)/2^k;
s1 = symsum(f1,k,3,Inf)

f2 = [1/(2*k+1)^2, (-1)^k/3^k];
s2 = symsum(f2,k,1,Inf)