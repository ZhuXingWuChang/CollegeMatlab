clear,clc
x = 1:10;
y1 = x;

plot(y1,'r')
hold on

y2 = zeros(1,10);
for i = 1:10
    y2(i) = x(i) + 0.25*(-1)^i;
end
plot(y2,'b*')