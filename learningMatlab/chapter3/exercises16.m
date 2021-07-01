% 脚本-不同高度的温度
clear,clc
clf
matric = load('exercises16.dat');
col1 = matric(:,1);
col2 = matric(:,2);

figure(1)
plot(col1, col2, 'r');
axis([min(col1)-500, max(col1)+500, min(col2)-10, max(col2)+10]) 