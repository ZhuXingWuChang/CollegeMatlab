clear,clc
fun = @(X) [X(1) - X(2) - exp(-X(1)); -X(1) + 2*X(2) - exp(-X(2))];
x0 = [1, 1];                            % 设置初始迭代值
options = optimset('Display', 'iter');  % 显示迭代过程
[x, fval] = fsolve(fun, x0, options)    % 求解                                                方程组