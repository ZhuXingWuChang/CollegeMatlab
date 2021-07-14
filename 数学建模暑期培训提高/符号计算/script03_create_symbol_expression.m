clear,clc
syms a b c x y z;
f1 = a*x^2 + b*x - c
f2 = sin(x)*cos(y)
f3 = (x+y)/z
f4 = [x + 1, x^2; x^3, x^4]
% 在实数域内,共轭转置和转置无区别
f5 = f4'    % 创建"符号表达式矩阵"的共轭转置
f6 = f4.'   % 创建"符号表达式矩阵"的转置