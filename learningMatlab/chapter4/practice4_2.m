% �ű�-���û�����Ƕ�,���ض�Ӧ������ֵ
clear,clc
choose = input('����Ҫ����һ���Ƕ�,����ѡ��λ[r(����), d(��)]: ','s');
x = input('������Ƕ�: ');
if choose == 'r' || choose == 'R'
    y = sin(x);
end
if choose == 'd' || choose == 'D'
    y = sind(x);
end
fprintf('��Ӧ������ֵΪ: %.2f\n', y)