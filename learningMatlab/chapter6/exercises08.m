function exercises08(matrix)
[m,n] = size(matrix);
num = randi([1,m]);
disp(matrix(num,:));
end