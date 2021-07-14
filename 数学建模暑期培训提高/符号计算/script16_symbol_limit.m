clear,clc
syms n a k x;
xn = (-1)^n/(n + 1)^2;      % 数列通项
L1 = limit(xn,n,Inf)        % 求数列极限

f1 = sin(a*x)/(a*x);        % 函数表达式
L2 = limit(f1,x,0,'left')   % 求函数在x0 = 0处的左极限

f2 = (1 - 2/x)^(k*x);       % 函数表达式
L3 = limit(f2,x,Inf)        % 求函数在x0 = 正无穷 处的极限