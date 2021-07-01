clear,clc
clf
x = linspace(0, 3.5, 100);
y1 = exp(x);
y2 = log(x);

figure(1)
plot(x, y1, 'k')
hold on
plot(x, y2, 'r')

xlabel('横坐标')
ylabel('纵坐标')
legend('指数图线', '对数图线')
title('指数/对数图')
axis([-0.5, 4, -10, 40])