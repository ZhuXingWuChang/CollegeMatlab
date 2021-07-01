clear,clc
format
citeNum = randi(10);
rainmat = randi([20,60],citeNum,4)
rainSum = sum(rainmat')'
maxValue = max(rainSum)
theCite = find(rainSum == maxValue)