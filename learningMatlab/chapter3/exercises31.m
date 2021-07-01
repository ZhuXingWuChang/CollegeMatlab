% 函数-检查参数是否能被4整除
function bool = exercises31(num)
bool = ~logical(mod(num,4));
end