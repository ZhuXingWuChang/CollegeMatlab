% 脚本-单位转换
% 用户以立方米/秒为单位输入,程序以立方英尺/秒为单位输出
clear,clc
in = input('Enter the flow in m^3/s: ');
out = in / 0.028;
disp('A flow rate of 15.200 meters per sec')
fprintf('is equivalent to %.3f feet per sec\n',out)