function [a,b] = scan()
a = input('输入最大值(华氏度): ');
b = input('输入最小值(华氏度): ');
if a < b
    t = a;
    a = b;
    b = t;
end

end