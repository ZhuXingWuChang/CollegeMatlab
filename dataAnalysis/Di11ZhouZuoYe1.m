%�������ݲ���ɢ��ͼ
x=[0.1, 0.11, 0.12, 0.13, 0.14, 0.15, 0.16, 0.17, 0.18, 0.2, 0.21, 0.23];
y=[42, 41.5, 45, 45.5, 45, 47.5, 49, 55, 50, 55, 55.5, 60.5];
plot(x,y,'*')
xlabel('x(�Ͻ��̼����)')
ylabel('y(�Ͻ��ǿ��)')
%����ͼ�е����ݵ����λ��һ��ֱ���ϣ��ʿν���һԪ���Իع�ģ��
Lxx=sum((x-mean(x)).^2);
Lxy=sum((x-mean(x)).*(y-mean(y)));
b1=Lxy/Lxx;
b0=mean(y)-b1*mean(x);
y1=b0+b1*x;
hold on
plot(x,y1,'r-')
sgm2=sum((y-y1).^2)/(size(x,2)-2)
%�ع鷽�̵������Լ���
TSS=sum((y-mean(y)).^2);
RSS=sum((y1-mean(y)).^2);
ESS=sum((y-y1).^2);
F=RSS/ESS/(size(x,2)-2);
F0=finv(0.95, 1, size(x,2)-2);
H0=F>F0
%Ԥ��
x0=0.15;
y0=b0+b1*x0
dt=tinv(0.975, size(x,2)-2)*sqrt(sgm2*(1+1/size(x,2)+(x0-mean(x))^2/Lxx));
yc=[y0-dt,y0+dt]
%ȡһ��x0=0.15��Ȼ������y0���Ӷ��ܹ�����dt
%��ΪH0=0����b1=0Ϊ�٣�����������ǿ��ŵ�