% 对 "符号数学" 的一系列 "积分/微分" 操作
% 注释: 可基本认为"微分"就是"求导",在不追究数学本质的前提下.

clear,clc

syms x
f = 3*x.^2 - 4*x + 2;

indefinite_integral = int(f); % 不定积分
definite_integral = int(f,2,5); % 定积分
area = int(abs(f),2,5); % 求图像面积
derivative = diff(f); % 求微分(求导)
value = subs(derivative,'x',2); % 求x=2时,导函数的值
