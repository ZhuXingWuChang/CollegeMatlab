% 脚本-提示用户输出一个字符串,如果字符串为空,打印错误信息
clear,clc
instr = input('请输入一个非空字符串: ','s');
if isempty(instr)
    disp('你什么都没有输入!')
else
    disp(instr)
end
