function num = posnum

num = input('输入一个正数: ');
while num < 0
    errorsubfn(num)
    num = input('输入一个正数: ');
end
end

function errorsubfn(num)
persistent error_num;
if isempty(error_num)
    error_num = 0;
end
error_num = error_num + 1;
fprintf('输入错误%d次!\n', error_num)
fprintf('你认为%.2f看上去像一个正数吗?\n', num)
end