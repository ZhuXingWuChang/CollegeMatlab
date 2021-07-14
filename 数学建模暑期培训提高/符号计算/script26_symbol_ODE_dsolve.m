clear,clc
syms x(t) y(t);
[X, Y] = dsolve(diff(x) == y, diff(y) == -x)