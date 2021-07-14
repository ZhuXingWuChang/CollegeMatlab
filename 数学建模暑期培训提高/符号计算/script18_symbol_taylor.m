clear,clc
syms x;
f = exp(x);
taylor(f,x,0,'Order',6)