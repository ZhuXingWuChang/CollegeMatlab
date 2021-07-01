% 函数-输入一向量,随机返回向量中一个数
function num = exercises36(vec)
len = length(vec);
n = randi(len);
num = vec(n);
end