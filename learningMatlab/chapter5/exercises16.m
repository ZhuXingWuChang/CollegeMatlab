clear,clc

threshold_value = input('��������ֵ: ');
while threshold_value < 0
    threshold_value = input('ֵ��Ч!������������ֵ: ');
end

data_number = input('�������������ݵĸ���: ');
while data_number ~= int32(data_number) || data_number<0
    data_number = input('ֵ��Ч!�����������������ݵĸ���: ');
end

vec = zeros(1,data_number);
count = 0;
for i = 1:data_number
    data = input('������һ����������: ');
    if data >= threshold_value
        vec(i) = data;
        count = count + 1;
    end
end
vec = vec(vec>threshold_value);
if isempty(vec)
    disp('û����Ч����������')
else
    fprintf('��%d����Ч�������ݵ�ƽ��ֵΪ%.2f����\n',count,mean(vec))
end