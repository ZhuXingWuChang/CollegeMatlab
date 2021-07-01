clear,clc
vec = randi(100,1,randi(100));
seriesSum = cumsum(vec);
boolValue = sum(vec) == seriesSum(end)