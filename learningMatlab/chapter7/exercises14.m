function result = exercises14(n)
message = sprintf('小于%d的',n);
in = input(['请输入一个',message,'正整数: ']);
while int32(in) ~= in || in >= n
    in = input('输入有误,重新输入: ');
end
result = in;
end