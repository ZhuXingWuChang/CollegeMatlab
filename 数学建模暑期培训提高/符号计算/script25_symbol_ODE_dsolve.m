clear,clc
syms y(x);
% 求解两点边值问题
% 对y(1)==0和y(5)==0条件下, 常微分方程的求解
Y = dsolve(x*diff(y,2) - 3*diff(y,1) == x^2, [y(1)==0, y(5)==0])

h = ezplot(Y,[-1,6]);       % 绘制解曲线
set(h,'color','k','LineWidth',2,'LineStyle','--');
hold on;
plot([5,1],[0,0],'pr','markersize',12); % 画微分方程的两个边值点
text(1,1,'y(1) = 0');
text(4,1,'y(5) = 0');
hold off;