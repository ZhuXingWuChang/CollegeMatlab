clear,clc
fun = @(x) -x.*sin(5*exp(1-x.^2));
ezplot(fun, [-1,1]);
grid on;
[x, fval] = fzero(fun, [0.2, 0.4])  % 求fun关于x在[0.2, 0.4]上的零点
hold on;
plot(x,fval,'ko');  % 绘制所求得的零点