% 脚本-格式转换
clear,clc
mat = rand(5,3)*100;
save floatnums.dat mat -ascii
mat = round(load('floatnums.dat'))';
save intnums.dat mat -ascii
clear mat