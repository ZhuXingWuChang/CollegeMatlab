clear,clc
len = input('输入几个字符串?确定数量: ');
charcell = cell(len,1);
for i = 1:len
    charcell(i) = {input('输入字符串: ','s')};
end
celldisp(charcell)