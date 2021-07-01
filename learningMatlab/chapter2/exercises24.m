clear,clc
format rat
n = randi(10000)
vec = linspace(1,n,n);
series = vec./(vec.^2);
seriesSum = cumsum(series);
format 
cumsum = seriesSum(end)