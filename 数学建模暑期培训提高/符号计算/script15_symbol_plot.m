clear,clc
syms f(x);
f(x) = 1/log(abs(x));
ezplot(f,[-6,6]);