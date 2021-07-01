%1)
x=load('D:\MATLAB2016b\MyProgram\zuoye8.txt');
m=mean(x);
d=std(x);
v=d./m;
w=[0.25,0.5,0.75];
sm=w*prctile(x,[25;50;75]);
%2)
szmj=lillietest(x(:,1));
figure(1);
subplot(2,2,1);qqplot(x(:,1));
szrk=lillietest(x(:,2));
subplot(2,2,2);qqplot(x(:,2));
jjss=lillietest(x(:,3));
subplot(2,2,3);qqplot(x(:,3));
disp(szmj);
disp(szrk);
disp(jjss);
%
[b2,t2]=boxcox(x(:,2));
[b3,t3]=boxcox(x(:,3));
figure(2);
subplot(2,1,1);normplot(b2);
subplot(2,1,2);normplot(b3);
sa2=sort(x(:,2));
sa3=sort(x(:,3));
figure(3);
subplot(2,1,1);cdfplot(x(:,2));
hold on;plot(sa2,normcdf(sa2),'-r');
subplot(2,1,2);cdfplot(x(:,3));
hold on;plot(sa3,normcdf(sa3),'-r');
sb2=sort(b2);
sb3=sort(b3);
figure(4);
subplot(2,1,1);cdfplot(b2);
hold on;plot(sb2,normcdf(sb2),'-r');
subplot(2,1,2);cdfplot(b3);
hold on;plot(sb3,normcdf(sb3),'-r');

