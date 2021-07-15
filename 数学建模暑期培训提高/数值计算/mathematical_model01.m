clear,clc
xyt = xlsread('mathematical_model01_data.xlsx');
x = xyt(:,1);
y = xyt(:,2);
Minutes = xyt(:,3);
Seconds = xyt(:,4);
T = Minutes + Seconds/60;
% 方程组所对应的目标函数(匿名函数)
modelfun = @(b) sqrt((x-b(1)).^2 + (y-b(2)).^2 + b(3).^2)/(60*b(4)) + b(5) - T;
b0 = [1000, 100, 10, 1, 1]; % 给所求向量赋一个迭代初值
% 不显示中间的迭代过程,并设置优化算法Levenberg-marquardt(麦夸特法)
options = optimoptions('fsolve','Display','none','Algorithm','Levenberg-marquardt');
% 调用fsolve函数求解模型
[Bval, Fval] = fsolve(modelfun, b0, options)