clear,clc
clf
x = linspace(0, 3.5, 100);
y1 = exp(x);
y2 = log(x);

figure(1)
plot(x, y1, 'k')
hold on
plot(x, y2, 'r')

xlabel('������')
ylabel('������')
legend('ָ��ͼ��', '����ͼ��')
title('ָ��/����ͼ')
axis([-0.5, 4, -10, 40])