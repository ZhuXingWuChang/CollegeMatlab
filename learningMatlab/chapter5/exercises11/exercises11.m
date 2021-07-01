clear,clc
mat = load('exercises11.dat');
[r,c] = size(mat);
for i = 1:r
    subplot(2,2,i)
    plot(mat(i,:))
    grid on
end