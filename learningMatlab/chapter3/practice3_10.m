clear,clc
height = input('�����볤:');
weight = input('�������:');
area = calcrectarea(height,weight);
fprintf('���Ϊ:%f\n',area)
fprintf('��Ҫ����%d��\n',ceil(area))