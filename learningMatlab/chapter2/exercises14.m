clear,clc
rows = randi(50);
cols = randi(50);
mat = zeros(rows,cols);
[row col] = size(mat);
mat(row,col) = 6;
%����1
a = mat(numel(mat))
%����2
b = mat(row,col)
%����3
c = mat(row*col)
%����4
lastRow = mat(row,:);
d = lastRow(col)
%����5
lastCol = mat(:,col);
e = lastCol(row)
%����6
f = mat(end)
%����7
g = mat(end,end)
