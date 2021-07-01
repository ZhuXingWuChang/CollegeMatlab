function [v,d]=tzz(A)
    n = length(A);  %得到 n=行数=阶数
    syms lan;
    tzfc = ( det(A - lan*eye(n)) == 0 );
    v = solve( tzfc, lan);  %解得特征值v
    
    qdcg = unique(v);   %去掉重根
    if length(qdcg) == length(v)
        flag = 1;
    else
        flag = 0;
    end
    
    d=[];
    for k = qdcg'   %for循环无法遍历列向量
        jtzfc = A - k*eye(n);
        x = null(jtzfc);    %得到一组基础解系
        d = [ d, x];
    end     %求得一组特征向量d
    
    fprintf('(1)特征值V=\n');
    disp(v);
    fprintf('(2)特征向量矩阵D=\n');
    disp( double(d) );
    
    %判断对角化
    if flag == 1
        fprintf('(3)该矩阵能对角化\n');
    else
        fprintf('(3)该矩阵不能对角化\n');
    end
end