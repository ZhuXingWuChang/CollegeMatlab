function outlog = myisletter(inchar)
% ����-��incharΪ������ĸʱ����1,���򷵻�0
% ���÷�ʽ: myisletter(inputCharacter)
% ����ֵ����: logical

outlog = inchar >= 'a' && inchar <= 'z'...
    || inchar >= 'A' && inchar <= 'Z';

end