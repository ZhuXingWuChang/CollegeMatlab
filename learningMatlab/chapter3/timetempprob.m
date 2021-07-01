clear,clc
load timetemp.dat
time = timetemp(1,:);
temp = timetemp(2,:);
plot(time,temp,'k*')
xlabel('Time')
ylabel('Temperature')
title('Temperatures one afternoon')