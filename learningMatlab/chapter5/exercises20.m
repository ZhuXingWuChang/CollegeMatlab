clear,clc
max_value = input('�����������: ');
min_value = input('������С����: ');
mynum = input('��������Ҫ�ó���µ���: ');
count = 1;
num = int32((min_value + max_value) / 2);
while num ~= mynum
    count = count + 1;
    if num < mynum
        min_value = num;
    else 
        max_value = num;
    end
    num = int32((min_value + max_value) / 2);
end
fprintf('��������%d�ξ��ҵ��������.\n',count)