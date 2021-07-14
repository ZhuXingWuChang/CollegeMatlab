clear,clc
syms x y;
f = sin(x)^2;
df = diff(f,x)          % 对f, 求x的一阶导数
df_1 = subs(df,x,1)     % 求f'(1)的值
ddf = diff(f,x,2)       % 对f, 求x的二阶导数

Fxy = cos(x + sin(y)) - sin(y);     % 定义隐函数
dy_dx = -diff(Fxy,x)/diff(Fxy,y)    % 隐函数求导