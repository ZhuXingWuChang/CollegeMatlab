function [item_index, seq] = seq_limit

seq_vec = zeros(1, 10); % 预分配向量
seq_vec(1) = sqrt(2); % 初始化a1
seq_vec(2) = sqrt(2 + seq_vec(1));

item_num = 2;
while (seq_vec(item_num) - seq_vec(item_num-1)) > 10^(-3)
    seq_vec(item_num+1) = sqrt(2 + seq_vec(item_num)); 
    item_num = item_num + 1;
end

item_index = item_num;
seq = seq_vec;
end

