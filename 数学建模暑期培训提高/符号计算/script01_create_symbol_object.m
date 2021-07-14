clear,clc
a = sym('6.01');        % 定义符号常数
b = sym('b','real');    % 定义实数域上的符号变量b,其值也为b
A = [1,2 ; 3,4];
B = sym(A);             % 定义符号矩阵B,值等于数值矩阵A
C = sym('c%d%d',[3,4])  % 定义3行4列的符号矩阵

syms x y;               % 同时定义多个符号变量(默认在复数域上)
syms z positive;        % posttive将z限定在正实数域上
syms f(x,y);            % 定义符号函数
f(x,y) = x + y^2        % 为符号函数指定表达式

c = f(1,2)              % 在f(x,y)有表达式的前提下,可以直接计算出结果

zv = solve(z^2 == 1, z) % 对方程'z^1=1',求方程对z的解

syms z clears;          % 撤销对z的positive限定,使z在默认的复数域上
zv = solve(z^2 == 1, z)