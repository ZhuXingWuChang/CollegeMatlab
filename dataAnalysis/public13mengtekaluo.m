clear;
clc;
N = 10000;
x = rand(N,1)*4-2;
y = rand(N,1)*4-2;
r = sqrt(x.^2+y.^2);
t = atan2(y,x);
rt = 1+cos(t);
s = 16*sum(r<=rt)/N
rho='1+cos(t)';
ezpolar(rho)
hold on
plot(x(r<=rt),y(r<=rt),'r.')
plot(x(r>rt),y(r>rt),'k.')