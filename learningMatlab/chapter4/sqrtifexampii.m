clear,clc
num = input('Please enter a number: ');
if num < 0
    disp('Ok, we''ll use the absolute value')
    num = abs(num);
end
fprintf('The sqrt of %.1f is %.1f\n', num, sqrt(num))