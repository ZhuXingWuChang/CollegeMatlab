clear,clc,close all;
% 逐步回归
data = xlsread('shuiniData.xlsx');
x = data(:,1:4);
y = data(:,5);
% stepwise
stepwise(x,y)

%{
对回归分析做出解释:
x1的系数是1.4401, x4系数是-0.6142
截距是103.081
方程y=103.081+1.4401*x1-0.6142*x4
%}