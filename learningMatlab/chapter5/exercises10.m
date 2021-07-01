clear,clc
div1 = [4.2, 3.8, 3.7, 3.8];
div2 = [2.5, 2.7, 3.1, 3.3];

figure(1)
subplot(1,2,1)
plot(div1,'r')
axis([0,5,2,4.5])
subplot(1,2,2)
plot(div2,'b')
axis([0,5,2,4.5])

figure(2)
plot(div1,'r')
hold on
plot(div2,'b')
axis([0,5,2,4.5])