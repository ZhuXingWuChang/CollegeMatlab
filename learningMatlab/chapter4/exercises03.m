% 脚本-计算棱锥体的体积,提示用户输入长宽高,返回体积
clear,clc
disp('这个程序会计算棱锥体的体积')

a = input('输入长: ');
demension = input('选择量纲 [i:英寸][c:厘米]: ', 's');
if demension == 'c'
    a = a / 2.54;
end

b = input('输入宽: ');
demension = input('选择量纲 [i:英寸][c:厘米]: ', 's');
if demension == 'c'
    b = b / 2.54;
end

h = input('输入高: ');
demension = input('选择量纲 [i:英寸][c:厘米]: ', 's');
if demension == 'c'
    h = h / 2.54;
end

volume = 1/3 * a * b * h;

fprintf('棱锥体的体积为: %.2f英寸\n', volume)