clear,clc
clicked = showmenu();
while clicked ~= 1 && clicked ~= 2
    clicked = showmenu();
end
if clicked == 1
    disp('该课程由计算机科学学院开设')
elseif clicked == 2
    disp('该课程由信息与数学学院开设')
end