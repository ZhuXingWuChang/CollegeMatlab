function plotxywithcell(x, fnhan, rca)
% x是自变量
% fnhan是因变量对应的函数句柄
% rca是类似于{'bar','area','plot'}一样的,元胞数组
lenrca = length(rca);
y = fnhan(x);
for i = 1:lenrca
    subplot(1, lenrca, i)
    funh = str2func(rca{i});
    funh(x,y)
    title(upper(rca{i}))
    xlabel('x')
    ylabel(func2str(fnhan))
end
end