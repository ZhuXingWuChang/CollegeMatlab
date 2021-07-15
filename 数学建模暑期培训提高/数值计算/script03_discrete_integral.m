clear,clc
fun1 = @(x) exp(-x.^2);
s1 = integral(fun1, 0, 1)       % 对fun1求自变量在[0,1]上的定积分

fun2 = @(x,y) x.*sqrt(10 - y.^2);
yfun1 = @(x) x-2;               % 变量y的积分下限函数
yfun2 = @(x) 2-sin(x);          % 变量y的积分上限函数
s2 = integral2(fun2, -1, 2, yfun1, yfun2)

fun3 = @(x,y,z) x.*y.*z;
zfun1 = @(x,y) x.*y;
zfun2 = @(x,y) 2*x.*y;
yfun1 = @(x) x;
yfun2 = @(x) 2*x;
s3 = integral3(fun3, 1, 2, yfun1, yfun2, zfun1, zfun2)