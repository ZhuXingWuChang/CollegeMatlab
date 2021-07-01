clear,clc
format rat
vec = 1:5;
series = vec.^-1;
seriesSum = cumsum(series);
sum = seriesSum(end)