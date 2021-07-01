% 脚本-输入收缩压和舒张压,判断是否为候选人
clear,clc
minvalue = input('输入收缩压: ');
maxvalue = input('输入舒张压: ');
if (minvalue >= 80) && (maxvalue <= 120)
    disp('你是这个实验的候选人')
end