%输入数据并作散点图
x=[0.1, 0.11, 0.12, 0.13, 0.14, 0.15, 0.16, 0.17, 0.18, 0.2, 0.21, 0.23];
y=[42, 41.5, 45, 45.5, 45, 47.5, 49, 55, 50, 55, 55.5, 60.5];
plot(x,y,'*')
xlabel('x(合金的碳含量)')
ylabel('y(合金的强度)')
%由于图中的数据点大致位于一条直线上，故课建立一元线性回归模型
Lxx=sum((x-mean(x)).^2);
Lxy=sum((x-mean(x)).*(y-mean(y)));
b1=Lxy/Lxx;
b0=mean(y)-b1*mean(x);
y1=b0+b1*x;
hold on
plot(x,y1,'r-')
sgm2=sum((y-y1).^2)/(size(x,2)-2)
%回归方程的显著性检验
TSS=sum((y-mean(y)).^2);
RSS=sum((y1-mean(y)).^2);
ESS=sum((y-y1).^2);
F=RSS/ESS/(size(x,2)-2);
F0=finv(0.95, 1, size(x,2)-2);
H0=F>F0
%预测
x0=0.15;
y0=b0+b1*x0
dt=tinv(0.975, size(x,2)-2)*sqrt(sgm2*(1+1/size(x,2)+(x0-mean(x))^2/Lxx));
yc=[y0-dt,y0+dt]
%取一点x0=0.15，然后计算出y0，从而能够计算dt
%因为H0=0，故b1=0为假，故线性拟合是可信的