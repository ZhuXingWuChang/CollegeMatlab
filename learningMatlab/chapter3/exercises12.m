% �ű�-���εĹ��
clear,clc
d = input('���������(m): ');
b = input('����������(W/m^2): ');
lumin = 4 * pi * d.^2 * b;
fprintf('���Ϊ%.2fW\n',lumin)