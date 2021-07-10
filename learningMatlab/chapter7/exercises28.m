clear,clc
numstr = '12x3x45x2';
nums = split(numstr,'x');
s = 0;
for i = 1:length(nums)
    s = s + str2double(nums{i});
end
disp(s)