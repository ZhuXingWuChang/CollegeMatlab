function num = posnum

num = input('����һ������: ');
while num < 0
    errorsubfn(num)
    num = input('����һ������: ');
end
end

function errorsubfn(num)
persistent error_num;
if isempty(error_num)
    error_num = 0;
end
error_num = error_num + 1;
fprintf('�������%d��!\n', error_num)
fprintf('����Ϊ%.2f����ȥ��һ��������?\n', num)
end