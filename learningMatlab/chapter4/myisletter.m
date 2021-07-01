function outlog = myisletter(inchar)
% 函数-当inchar为西文字母时返回1,否则返回0
% 调用方式: myisletter(inputCharacter)
% 返回值类型: logical

outlog = inchar >= 'a' && inchar <= 'z'...
    || inchar >= 'A' && inchar <= 'Z';

end