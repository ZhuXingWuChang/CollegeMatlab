clear,clc

threshold_value = input('请输入阈值: ');
while threshold_value < 0
    threshold_value = input('值无效!请重新输入阈值: ');
end

data_number = input('请输入样本数据的个数: ');
while data_number ~= int32(data_number) || data_number<0
    data_number = input('值无效!请重新输入样本数据的个数: ');
end

vec = zeros(1,data_number);
count = 0;
for i = 1:data_number
    data = input('请输入一个样本数据: ');
    if data >= threshold_value
        vec(i) = data;
        count = count + 1;
    end
end
vec = vec(vec>threshold_value);
if isempty(vec)
    disp('没有有效的样本数据')
else
    fprintf('这%d个有效样本数据的平均值为%.2f伏特\n',count,mean(vec))
end