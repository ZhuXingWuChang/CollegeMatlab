% 脚本-温度转换
clear,clc
t = input('输入摄氏度: ');
choose = input('你想要转换为华氏度F还是开氏度K? ','s');
switch choose
    case {'F', 'f'}
        t = 9/5*t + 32;
    case {'K', 'k'}
        t = t + 273.15;
    otherwise
        disp('没有这个选择')
end
fprintf('转换为%c为: %.1f\n', choose, t)