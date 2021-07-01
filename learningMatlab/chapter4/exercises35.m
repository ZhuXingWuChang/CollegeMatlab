function outmat = exercises35(rowvec1, rowvec2)
% 函数-接收两个行向量,并且拼接为一个两行的矩阵(多余部分以0填充)
[r1,c1] = size(rowvec1);
[r2,c2] = size(rowvec2);

if r1 ~= 1 || r2 ~= 1
    disp('请输入行向量')
    outmat = [];
else
    cols = max(c1,c2);
    outmat = zeros(cols,2);
    outmat(1:c1) = rowvec1;
    outmat(cols+1:cols+c2) = rowvec2;
    outmat = outmat';
end
