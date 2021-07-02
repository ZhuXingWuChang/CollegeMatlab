clear,clc
x = zeros(1,3);
y = zeros(1,3);
for i = 1:3
    xmessage = sprintf('输入第%d个顶点的横坐标: ',i);
    x(i) = input(xmessage);
    ymessage = sprintf('输入第%d个顶点的纵坐标: ',i);
    y(i) = input(ymessage);
end
% disp(x)
% disp(y)
disp(area(x, y));
