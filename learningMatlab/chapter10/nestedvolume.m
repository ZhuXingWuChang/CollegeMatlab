function outvol = nestedvolume(len, wid, ht)
outvol = base * ht;
    % 嵌套函数计算并返回立方体的底面积
    function outbase = base
    outbase = len * wid;
    end
end