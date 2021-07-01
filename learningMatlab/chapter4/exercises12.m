% 脚本-检验pH值
clear,clc
pH = input('输入pH值: ');
if pH > 0 && pH < 7
    disp('酸性')
elseif pH > 0 && pH == 7
    disp('中性')
elseif pH > 0 && pH < 14
    disp('碱性')
else
    disp('无效')
end