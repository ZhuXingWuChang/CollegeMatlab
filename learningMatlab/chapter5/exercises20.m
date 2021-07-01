clear,clc
max_value = input('输入最大整数: ');
min_value = input('输入最小整数: ');
mynum = input('请输入你要让程序猜的数: ');
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
fprintf('程序用了%d次就找到了这个数.\n',count)