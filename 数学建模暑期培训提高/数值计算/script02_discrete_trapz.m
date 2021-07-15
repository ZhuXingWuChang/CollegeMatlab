clear,clc
t1 = linspace(0, 2*pi, 60);
x1 = cos(t1);
y1 = sin(t1);
s1 = abs(trapz(x1,y1))      % 单位元sin(x)+cos(x)=1,根据离散数据求积分

t2 = linspace(0, 2*pi, 200);
x2 = cos(t2);
y2 = sin(t2);
s2 = abs(trapz(x2,y2))

t3 = linspace(0, 2*pi, 2000);
x3 = cos(t3);
y3 = sin(t3);
s3 = abs(trapz(x3,y3))