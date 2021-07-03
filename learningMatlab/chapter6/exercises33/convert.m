function result = convert(sec, flag)

if flag == 1
    result = sec/60^2;
    fprintf('%d秒 = %.2f小时\n', sec, result)
elseif flag == 2
    result = sec/60;
    fprintf('%d秒 = %.1f分钟\n', sec, result)
else
    result = 0;
    disp('结束')
end

end