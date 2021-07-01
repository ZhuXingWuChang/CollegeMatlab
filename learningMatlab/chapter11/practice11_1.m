clear,clc,clf
mymat = load('practice11_1.dat');
subplot(1,2,1)
bar(mymat)
subplot(1,2,2)
bar(mymat, 'stacked')