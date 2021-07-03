clear,clc
flag = 3;
while flag ~= 0
    sec = randi([1000,10000]);
    % 显示菜单
    flag = show_menu();
    % 转换
    result = convert(sec, flag);
end