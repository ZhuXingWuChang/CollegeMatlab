clear,clc
flag = menu('选择近似方法', 'Machin公式', 'Leibniz公式');
if flag == 1
    result = machin();
elseif flag == 2
    result = leibniz();
end
disp(result)