clear,clc
syms x1 x2;
f = [x1 + x2; x2*log(x1)];  % 定义向量函数
v = [x1; x2];               % 定义自变量向量
jac = jacobian(f,v)