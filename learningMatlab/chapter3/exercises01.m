% 脚本-计算空心球的体积,ri是内径,r0是外径,volume是体积
clear,clc
ri = input('输入内径:');
r0 = input('输入外径:');
volume = 4/3 * pi * (r0.^3 - ri.^3);
fprintf('体积为%.2f\n',volume)