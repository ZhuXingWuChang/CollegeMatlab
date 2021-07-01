clear,clc
radius = input('请输入半径:');
height = input('请输入高:');
volume = conevol(radius,height);
fprintf('求得圆锥体的面积为:%d\n',volume)