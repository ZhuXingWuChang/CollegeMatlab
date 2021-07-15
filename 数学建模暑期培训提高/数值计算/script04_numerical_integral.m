clear,clc
tic
fxy = @(x,y) exp(-x.^2)./(x.^2+y.^2);
% 对于给定的y,定义内层计算函数,用来计算内层积分的平方
fy1 = @(y) integral(@(x) fxy(x,y), -1, 1)^2;
% 上式是关于y的函数, 函数体中, 把函数句柄@(x) fxy(x,y)传进去
% @(x) fxy(x,y)是一个关于x的函数, 所以integral实际上是对
% 关于x的函数@(x) fxy(x,y)在x属于[-1,1]上积分
% 而这个函数积分出来, 是一个关于y的函数, 所以在integral前面
% 需要加上一个@(y)

fy2 = @(y) arrayfun(@(t) fy1(t), y);
% 函数句柄@(t) fy1(t)只是相当于给"关于y的函数fy1"中的y换成了t而已,本质无变化
% 但是因为积分后求得的函数不能被向量化, 利用arrayfun可以使得
% fy2(i) = fy1(y(i)), 也就是将标量t替换为了向量y(i)
% 那么自然, fy2也就成了关于y的函数
% 这里将fy1处理为fy2, 只是为了让内层被积函数fy1向量化而已

fun1 = @(y) 2.*y.*exp(-y.^2).*fy2(y);   % 处理完了内层被积函数
s1 = integral(fun1, 0.2, 1)             % 对整体求积分

fun2 = @(x1,x2,x3,x4) exp(x1.*x2.*x3.*x4);
f_x1 = @(x1) integral3(@(x2,x3,x4) fun2(x1,x2,x3,x4), 0,1, 0,1, 0,1 );
f_x1 = @(x1) arrayfun(@(t) f_x1(t), x1);
s2 = integral(f_x1, 0, 1)
toc

% 为了说明符号变量的简便性, 下面对这两题均使用符号变量来求积分:
tic
syms x y x1 x2 x3 x4;
sym_s1 = int(2*y*exp(-y^2)*int(exp(-x^2)/(x^2+y^2), x, -1, 1)^2, y, 0.2, 1);
new_s1 = double(sym_s1)

sym_s2 = int(int(int(int(exp(x1*x2*x3*x4),x4,0,1) ,x3,0,1) ,x2,0,1) ,x1,0,1);
new_s2 = double(sym_s2)
toc