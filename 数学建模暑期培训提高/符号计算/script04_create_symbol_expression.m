clear,clc
syms x y;
f1 = abs(x) >= 0
f2 = x^2 + y^2 == 1
f3 = ~(y - sqrt(x) > 0)
f4 = x > 0 | y < -1
f5 = x > 0 & y < -1