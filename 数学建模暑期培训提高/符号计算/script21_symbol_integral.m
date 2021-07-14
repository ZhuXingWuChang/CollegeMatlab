clear,clc
syms x y z a;
F = int(x*log(a*x), x)      % 对x*log(a*x)求x的不定积分

f1 = sqrt(1 - x^2);
s1 = int(f1, x, -1, 1)      % 对f1求x在[-1,1]上的定积分

f2 = exp(-x^2/2);
s2 = int(f2, x, -Inf, Inf)  % 对f2求x在[-Inf,Inf]上的反常积分

f3 = (x + y)/z;
% f3的多重积分如下
s3 = int(int(int(f3, z, x*y, 2*x*y) , y, x, 2*x) , x, 1, 2)

s4 = double(s3)