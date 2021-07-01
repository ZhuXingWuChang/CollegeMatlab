clear,clc
num = input('Please enter a number: ');
if num < 0
    num = 0;
end
fprintf('The sqrt of %.1f is %.1f\n', num, sqrt(num))