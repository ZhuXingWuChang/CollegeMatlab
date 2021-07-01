clear,clc
rows = input('请输入矩阵的行数:');
cols = input('请输入矩阵的列数:');
mymat = rand(rows, cols);
save practice3_7_file.dat mymat -ascii
type practice3_7_file.dat