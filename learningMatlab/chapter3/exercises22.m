% �ű�-�ļ�����,�������ֵ
clear,clc
mat = rand(2,3)*4 - 1;
save testtan.dat mat -ascii
load testtan.dat
tan(mat)