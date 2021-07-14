clear,clc
syms y(x);
% dsolve求解常微分方程时, 如果符号变量x,y已经出现在y(x)里面
% 那么使用dsolve函数时, 不需要对x和y单独进行符号化
Y = dsolve(diff(y,2) == x + y)