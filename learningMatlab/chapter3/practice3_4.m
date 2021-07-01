clear,clc
x = input('请输入时间:');
y = input('请输入温度:');
plot(x,y,'r*')
axis([x-2 x+2 y-2 y+2])
xlabel('时间')
ylabel('温度')
title('时间与温度')