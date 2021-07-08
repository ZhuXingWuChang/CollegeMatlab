function outstr = exercises06
num1 = randi([10,30]);
num2 = randi([10,30]);
outstr = num2str(num1*100 + num2, '%d');
end