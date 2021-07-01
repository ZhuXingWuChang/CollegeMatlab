clear,clc
x0 = 2:6;
y0 = [65, 67, 72, 71, 63];
coefs = polyfit(x0,y0,2);
x = 1:0.1:7;
y = polyval(coefs, x);
plot(x0,y0,'r*',x,y)
xlabel('Time')
ylabel('Temperatures')
title('Tempratures one afternoon')
axis([1, 7, 60, 75])