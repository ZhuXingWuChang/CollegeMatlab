clear,clc
format rat
numeratorVec = 3:2:9;
denominatorVec = 1:4;
series = numeratorVec./denominatorVec
seriesSum = cumsum(series)
format
sum = seriesSum(end)