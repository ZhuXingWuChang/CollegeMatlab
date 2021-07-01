% 脚本-余弦公式 a^2 = b^2 + c^2 - 2bc cos(α)
% params: b , c , α
clear,clc
b = input('输入第一条边:');
c = input('输入第二条边:');
alpha = input('输入这两边的夹角:');
aa = b.^2 + c.^2 - 2*b*c*cosd(alpha);
fprintf('第三条边长为:%.3f\n',sqrt(aa))