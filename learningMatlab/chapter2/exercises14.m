clear,clc
rows = randi(50);
cols = randi(50);
mat = zeros(rows,cols);
[row col] = size(mat);
mat(row,col) = 6;
%方法1
a = mat(numel(mat))
%方法2
b = mat(row,col)
%方法3
c = mat(row*col)
%方法4
lastRow = mat(row,:);
d = lastRow(col)
%方法5
lastCol = mat(:,col);
e = lastCol(row)
%方法6
f = mat(end)
%方法7
g = mat(end,end)
