% �ű�-������׶������,��ʾ�û����볤���,�������
clear,clc
disp('�������������׶������')

a = input('���볤: ');
demension = input('ѡ������ [i:Ӣ��][c:����]: ', 's');
if demension == 'c'
    a = a / 2.54;
end

b = input('�����: ');
demension = input('ѡ������ [i:Ӣ��][c:����]: ', 's');
if demension == 'c'
    b = b / 2.54;
end

h = input('�����: ');
demension = input('ѡ������ [i:Ӣ��][c:����]: ', 's');
if demension == 'c'
    h = h / 2.54;
end

volume = 1/3 * a * b * h;

fprintf('��׶������Ϊ: %.2fӢ��\n', volume)