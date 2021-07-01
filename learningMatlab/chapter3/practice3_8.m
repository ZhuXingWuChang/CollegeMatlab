clear,clc
clf
load salesfigs.dat
row1 = salesfigs(1,:);
row2 = salesfigs(2,:);
figure(1)
plot(row1,'r-')
hold on
plot(row2,'b-')
grid on