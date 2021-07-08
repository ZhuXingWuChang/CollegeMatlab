clear,clc
n = input('输入正整数n: ');
x = 1:n;
y = x.^2;
t = sprintf('具有%d个值的x^2',n);
plot(x,y,'r+')
title(t)
xlabel('x')
ylabel('x^2')