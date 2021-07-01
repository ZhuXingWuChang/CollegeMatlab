% 脚本-奇数与偶数
clear,clc
num = randi(1000);
flag = mod(num,2);
if flag == 1
    disp('奇数')
else
    disp('偶数')
end