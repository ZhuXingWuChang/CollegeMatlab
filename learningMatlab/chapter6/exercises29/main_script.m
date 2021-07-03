clear,clc
mat = randi([0,4], 3, 5);
disp(mat)
[r,c] = size(mat);
for i = 1:r
    sumprint(mat(i,:))
end