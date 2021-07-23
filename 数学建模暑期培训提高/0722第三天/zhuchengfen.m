%% 求特征值和特征向量
clear,clc
original_data = xlsread('original_data.xlsx');
x_stand_data = xlsread('x_stand_data.xlsx');
% n为样本个数, p为因素个数
[n,p] = size(x_stand_data);
% 在middle_data中,存放了特征值和主成分值,可以求得特征向量
middle_data = xlsread('middle_data');
% 特征值
eigenvalue = middle_data(1:3, 1);
% 特征向量
eigenvector = zeros(4,3);
for i = 1:3
    eigenvector(:,i) = middle_data(:, i+1)/sqrt(eigenvalue(i));
end

%% 求主成分得分
% 各样本在各方面的主成分得分
sample_score = x_stand_data*eigenvector;
% a是各列的系数
a = zeros(length(eigenvalue), 1);
for i = 1:length(eigenvalue)
    a(i) = eigenvalue(i)/sum(eigenvalue);
end
% 各样本总的主成分得分
total_score = sample_score*a;

%% 主成分回归分析
syms y F1 F2 F3 x1_ x2_ x3_ x4_ x1 x2 x3 x4;
x1_ = (x1 - 7.46)/5.882;
x2_ = (x2 - 48.15)/15.561;
x3_ = (x3 - 11.77)/6.405;
x4_ = (x4 - 30)/16.738;
F1 = eigenvector(1)*x1_ + eigenvector(2)*x2_ + ...
    eigenvector(3)*x3_ + eigenvector(4)*x4_;
F2 = eigenvector(5)*x1_ + eigenvector(6)*x2_ + ...
    eigenvector(7)*x3_ + eigenvector(8)*x4_;
F3 = eigenvector(9)*x1_ + eigenvector(10)*x2_ + ...
    eigenvector(11)*x3_ + eigenvector(12)*x4_;
% 假定已经回归分析得到如下模型
y = 95.423 + 9.884*F1 + 0.125*F2 + 4.56*F3;
y = vpa(y,5)
