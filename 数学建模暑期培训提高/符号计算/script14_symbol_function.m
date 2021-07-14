clear,clc
syms a b c d x;
f = a*(x + b)^c + d;
g = subs(f, {a,b,c,d}, {2,-1,sym(1/2),3});

FunFromSym1 = matlabFunction(g)     % 将符号表达式转换为Matlab函数
% 其中符号表达式的值为函数体, FunFromSym1是这个函数体的函数句柄
% 这其实相当于:
% FunFromSym1 = @(x) 2*(x - 1)^(1/2) + 3;

y = FunFromSym1(10)                 % 使用函数句柄

% matlabFunction函数, 还能够将符号表达式写入到脚本文件当中,写成一个函数
matlabFunction(g, 'file', [pwd, '\FunFromSym2.m'], ...
    'vars', {'x'}, 'outputs', {'y'});
y = FunFromSym2(10)