clear,clc
rows = input('��������������:');
cols = input('��������������:');
mymat = rand(rows, cols);
save practice3_7_file.dat mymat -ascii
type practice3_7_file.dat