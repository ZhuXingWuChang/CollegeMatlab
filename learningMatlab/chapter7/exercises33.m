clear,clc
points_str = 'x3.1y6.4';
points = points_str(2:end);
[x,y] = strtok(points,'y');
x = str2double(x);
y = str2double(y(2:end));
disp(x)
disp(y)