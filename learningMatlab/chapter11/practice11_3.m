clear,clc,clf
x = 0:10;
y = x;
subplot(2,2,1)
area(x,y,0)  % params3Ĭ��Ϊ0
for i = 1:3
    subplot(2,2,i+1)
    area(x,y,i)
end
    