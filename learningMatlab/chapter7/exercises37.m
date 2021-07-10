clear,clc
mat = load('avehighs.dat');
region = mat(:,1);
len = length(region);
for i = 1:len
    y = mat(i,2:end);
    subplot(1,len,i)
    plot(y,'ko')
    title(sprintf('Location %d',region(i)))
    xlabel('Month')
    ylabel('Ave High Temps')
end