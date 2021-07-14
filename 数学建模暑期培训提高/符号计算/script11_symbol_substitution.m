clear,clc
syms a b x;
f = a*sin(x) + b;
f1 = subs(f,sin(x),str2sym('log(y)'))    % 将f中的sin(x)替换为log(y)
% 注意: 上式中虽然sin(x)成功替换为了log(y), 但是y依然不是符号变量

f2 = subs(f1, [a,b], [2,5]) % 这两种方式没有区别
class(a)

f2 = subs(f1, {a,b}, {2,5})
class(a)