% �ű�-������
clear,clc
n = randi(100);
x = 1:2:n;
y = x.^2;
figure(1)
for i = 1:numel(x)
    plot([0,y(i)], [y(i),y(i)], 'g') %����������
    hold on
    plot([y(i),y(i)], [y(i),0], 'g') %����������
    hold on
    plot([y(i),0], [0,0], 'g') %���Ϸ�����
    hold on
    plot([0,0], [0,y(i)], 'g') %����������
    hold on
end
axis([-0.1*y(end), 1.1*y(end), -0.1*y(end), 1.1*y(end)])
grid on
