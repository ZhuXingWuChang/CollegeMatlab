% 脚本-文件交互,输出正切值
clear,clc
mat = rand(2,3)*4 - 1;
save testtan.dat mat -ascii
load testtan.dat
tan(mat)