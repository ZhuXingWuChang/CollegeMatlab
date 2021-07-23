clear,clc,close all;
x=[23.80,27.60,31.60,32.40,33.70,34.90,43.20,52.80,63.80,73.40];
y=[41.4,51.8,61.70,67.90,68.70,77.50,95.90,137.40,155.0,175.0];
figure(1)
plot(x,y,'r*')
hold on;
xlabel('x（职工工资总额）','fontsize',12)           %横坐标名
ylabel('y（商品零售总额）','fontsize',12)           %纵坐标名
set(gca,'linewidth',2)
%% 方法一: 采用LinearModel.fit函数进行回归
m2 = LinearModel.fit(x,y);
disp(m2)
% 对m2的说明: m2只会给出相关的信息,不会作出回归直线的图像,需要另外作图
%{
对回归的结果进行解释:
-23.549 是常数项
2.7991 是x的系数
并且由于常数项的p值为 0.0017215 < 0.05
故拒绝原假设(原假设认为常数项对y的影响不显著)
由于x项的p值为 8.4014e-09 < 0.05
故拒绝原假设(原假设认为x项对y的影响不显著)
%}
%% 方法一: 作图
syms x y;
a = -23.549;
b = 2.7991;
y = a + b*x;
fplot(y,'b')
hold off;
%% 方法二: 采用regress函数进行回归
% 关于X和Y为什么要这样取值,见7/20号"多元线性回归"的笔记
Y=y';
X=[ones(length(y),1),x'];
[b, bint, r, rint, s] = regress(Y, X)
%{
对regress返回各参数的解释:
b: 回归系数
bint: 回归系数的置信区间
r: 残差
rint: 残差的置信区间
s: t统计量
%}
% 绘图
b1=b(1);
b2=b(2);
xx=min(x):0.01:max(x);
yy=b1+b2*xx;
% xx和yy是为了画出拟合后的直线
plot(xx,yy,'b')
hold off;
xlabel('x（职工工资总额）','fontsize', 12)           % 横坐标名
ylabel('y（商品零售总额）', 'fontsize',12)           % 纵坐标名
set(gca,'linewidth',2);
