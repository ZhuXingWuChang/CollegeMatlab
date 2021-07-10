clear,clc
points_str = 'y6.4x3.1';
x_in_front = true;
if any(points_str(2:end)=='x')
    x_in_front = false;
end
if x_in_front
    [x,y] = strtok(points_str(2:end),'y');
    x = str2double(x);
    y = str2double(y(2:end));
else
    [y,x] = strtok(points_str(2:end),'x');
    y = str2double(y);
    x = str2double(x(2:end));
end
disp(x)
disp(y)