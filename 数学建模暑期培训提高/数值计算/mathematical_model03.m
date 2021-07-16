clear,clc
fun = @(t,y,mu) [y(2); mu*(1-y(1)^2)*y(2) - y(1)];
tspan = [0, 30];
y0 = [1, 0];
ColorOrder = {'r','b','k'};
LineStyle = {'-','--',':'};
figure(1);
ha1 = axes;     % 窗口1中的坐标轴句柄
hold on;
figure(2);
ha2 = axes;     % 窗口2中的坐标轴句柄
hold on;
for mu = 1:3
    [t,y] = ode45(fun, tspan, y0, [], mu);
    % 绘制解曲线
    plot(ha1, t, y(:,1), 'color', ColorOrder{mu}, 'LineStyle', LineStyle{mu});
    % 绘制平面相轨迹
    plot(ha2, y(:,1), y(:,2), 'color', ColorOrder{mu}, 'LineStyle', LineStyle{mu});
end
xlabel(ha1, 't');
ylabel(ha1, 'x(t)');
legend(ha1, '\mu = 1', '\mu = 2', '\mu = 3');
hold off;
xlabel(ha2, '位移')
ylabel(ha2, '速度')
legend(ha2, '\mu = 1', '\mu = 2', '\mu = 3');
hold off;