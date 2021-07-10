clear,clc
var1 = 'R 14.3';
var2 = 'B 12.9';

[str1, var1] = strtok(var1);
[str2, var2] = strtok(var2);

var1 = str2double(var1(2:end));
var2 = str2double(var2(2:end));

result = var1 + var2;
disp(result)