clear,clc
yssj = xlsread('原始数据.xlsx');
% 标准化数据
bzhsj = zscore(yssj);
% 要求一个13*13的相关系数矩阵
zgxsjz = (transpose(bzhsj)*bzhsj) / 5;
% 求特征向量
[bb,cc] = eig(zgxsjz);
bb = -bb(:,1:3);
% 算主成分得分
zcfdf = bzhsj*bb;
tzz = diag(cc(:,1:3));
a1 = tzz(1)/sum(tzz);
a2 = tzz(2)/sum(tzz);
a3 = tzz(3)/sum(tzz);
zcfdf = a1*zcfdf(:,1) + a2*zcfdf(:,2) + a3*zcfdf(:,3);
disp(zcfdf)