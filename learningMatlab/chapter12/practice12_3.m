clear,clc
v1 = randi(20,1,7);
v2 = randi(20,1,7);
% ����
bj = union(v1,v2);
% ����
jj = intersect(v1,v2);
% �
inv1 = setdiff(v1,v2);
inv2 = setdiff(v2,v1);
% ���
yh = setxor(v1,v2);
% ΨһԪ�ؼ�
v1dake = ~ismember(v1,v2);
v2dake = ~ismember(v2,v1);