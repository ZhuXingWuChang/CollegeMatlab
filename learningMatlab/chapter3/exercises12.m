% 脚本-星形的光度
clear,clc
d = input('请输入距离(m): ');
b = input('请输入亮度(W/m^2): ');
lumin = 4 * pi * d.^2 * b;
fprintf('光度为%.2fW\n',lumin)