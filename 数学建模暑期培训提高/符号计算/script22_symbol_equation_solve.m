clear,clc
syms x;
Result1 = solve(x^3 - 2*x^2 + 4*x == 8, x)

% 返回方程在一个周期上的最小正解
Result2 = solve(sin(x) + cos(2*x) == 1, x)

% 返回方程的所有解(其中带有参数)
% Result3: 结果的通项
% params:  通项中附带的参数
% condictions: 参数的取值限制
[Result3, params, conditions] = solve(sin(x) + cos(2*x) == 1, ...
    x, 'ReturnConditions', true)

% 求解超越方程
Result4 = solve(x + x*exp(x) == 10, x)