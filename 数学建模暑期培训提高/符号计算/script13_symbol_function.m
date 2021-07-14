clear,clc
syms a b x;
f(x) = symfun(a*sin(x) + b, x);     % 把符号表达式转换为符号函数
% 上式只是为了说明symfun的作用, 这里最省事的方法是:
% f(x) = a*sin(x) + b;

y = f(1:3)