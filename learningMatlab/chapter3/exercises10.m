% �ű�-���ҹ�ʽ a^2 = b^2 + c^2 - 2bc cos(��)
% params: b , c , ��
clear,clc
b = input('�����һ����:');
c = input('����ڶ�����:');
alpha = input('���������ߵļн�:');
aa = b.^2 + c.^2 - 2*b*c*cosd(alpha);
fprintf('�������߳�Ϊ:%.3f\n',sqrt(aa))