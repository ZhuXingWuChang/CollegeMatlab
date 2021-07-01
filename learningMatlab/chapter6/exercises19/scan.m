function length = scan()
n = input('输入长度: ');
while int32(n) ~= n || n <= 0
    n = input('重新输入: ');
end
length = 1:n;
end