clear,clc
x = 2:6;
y = [65, 67, 72, 71, 63];
coefs = polyfit(x,y,2);
curve = polyval(coefs, x);
plot(x,y,'ro',x,curve)
xlabel('Time')
ylabel('Temperatures')
title('Tempratures one afternoon')
axis([1, 7, 60, 75])