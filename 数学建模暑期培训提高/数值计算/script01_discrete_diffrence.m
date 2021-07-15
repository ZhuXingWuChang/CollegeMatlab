clear,clc
h = 0.01;
x = 0: h: 2*pi;
y = sin(x);
dy_dx1 = diff(y)./diff(x);  % 调用diff函数求数值导数
dy_dx2 = gradient(y,h);     % 调用gradient函数求数值导数

figure;
plot(x,y);
hold on;
plot(x(1:end-1), dy_dx1, 'k:');
plot(x, dy_dx2, 'r--');
legend('y = sin(x)','导函数曲线(diff)','导函数曲线(gradient)');
xlabel('x');
ylabel('sin(x) 与 sin''(x)');