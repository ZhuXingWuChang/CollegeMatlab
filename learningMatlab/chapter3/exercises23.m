% 脚本-对文件中的数据进行规格化
clear,clc
hightemp = [89,42,49,55,72,63,68,77,82,76,67;
    90,45,50,56,59,62,68,75,77,75,66;
    91,44,43,60,60,60,65,69,74,70,70];
save hightemp.dat hightemp -ascii
y2ktemp = load('hightemp.dat');
y2ktemp(:,1) = y2ktemp(:,1) + 1900;
save y2ktemp.dat y2ktemp -ascii 