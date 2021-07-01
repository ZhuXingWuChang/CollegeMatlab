function exercises07(matrix)
[m,n] = size(matrix);
for i = 1:m
    for j = 1:n
        fprintf('%4d ',matrix(i,j) );
    end
    fprintf('\n');
end
end