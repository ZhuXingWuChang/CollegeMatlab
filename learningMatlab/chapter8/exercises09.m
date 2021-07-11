clear,clc
cellarray = cell(4,1);
for i = 1:4
    in = input(sprintf('请输入长度为%d的字符串: ',i), 's');
    while length(in)~=i
        in = input(sprintf('出错!请输入长度为%d的字符串: ',i), 's');
    end
    cellarray{i} = in;
end
disp(cellarray)