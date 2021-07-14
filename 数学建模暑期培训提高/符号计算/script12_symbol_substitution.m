clear,clc
syms a b x;
f = a*sin(x) + b;
y = subs(f, {a,b,x}, {2,5,1:3})     % 同时替换多个符号变量的值

double(y)