% 函数-参数1为一个向量,参数2将向量中的每一个数重复i次,返回被重复的结果向量
function result_vec = exercises35(vec, num)
result_vec = [];
for i = 1:length(vec)
    for j = 1:num
        result_vec = [result_vec vec(i)];
    end
end
end