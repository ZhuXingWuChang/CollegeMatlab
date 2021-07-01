% 脚本-由用户输入角度,返回对应的正弦值
clear,clc
choose = input('下面要输入一个角度,请先选择单位[r(弧度), d(度)]: ','s');
x = input('请输入角度: ');
if choose == 'r' || choose == 'R'
    y = sin(x);
end
if choose == 'd' || choose == 'D'
    y = sind(x);
end
fprintf('对应的正弦值为: %.2f\n', y)