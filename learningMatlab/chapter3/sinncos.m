clear,clc
clf
x = 0: (2*pi)/40: 2*pi;
y = sin(x);
plot(x,y,'ro') % 画一个sin图像
hold on % 冻结上面画好的sin图像
y = cos(x); 
plot(x,y,'b+') % 画一个cos图像

legend('sin','cos')
xlabel('x')
ylabel('sin(x) or cos(x)')
title('sin and cos on one graph')

% 如果不使用hold on,也可以画出两个图像,使用如下命令
% plot(x, sin(x), 'ro', x, cos(x), 'b+')