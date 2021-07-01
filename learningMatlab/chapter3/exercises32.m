% 函数-检验参数是否是整数
% 输入4.999...(足够多的9)时,会返回true,这是因为精度是有上限的
function bool = exercises32(num)
bool = (num == int32(num));
end