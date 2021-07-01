% 脚本-计算V值
clear,clc
V2 = input('输入第二端点的面积V2: ');
V1 = input('输入第一店端的面积V1: ');
if V2 > V1
    disp('流速变小了')
else
    disp('流速变大了')
end