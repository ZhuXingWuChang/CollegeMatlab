% 脚本-正方形
clear,clc
n = randi(100);
x = 1:2:n;
y = x.^2;
figure(1)
for i = 1:numel(x)
    plot([0,y(i)], [y(i),y(i)], 'g') %画北方的线
    hold on
    plot([y(i),y(i)], [y(i),0], 'g') %画东方的线
    hold on
    plot([y(i),0], [0,0], 'g') %画南方的线
    hold on
    plot([0,0], [0,y(i)], 'g') %画西方的线
    hold on
end
axis([-0.1*y(end), 1.1*y(end), -0.1*y(end), 1.1*y(end)])
grid on
