% 脚本-计算单位向量
clear,clc
v = input('输入空间向量: ');
u = v./sqrt(v(1)^2 + v(2)^2 + v(3)^3);
fprintf('单位向量: ')
fprintf('%.2f ',u)
fprintf('\n')