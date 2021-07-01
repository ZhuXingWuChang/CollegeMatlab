function outvec = createvec(mymin, mymax)
% “createvec”创建一个从指定的最小值到最大值进行迭代的向量
% 调用格式: createvec(mymin, mymax)
% 返回一个向量

if mymin > mymax
    temp = mymin;
    mymin = mymax;
    mymax = temp;
end

outvec = mymin:mymax;
end