% 脚本-左对齐&右对齐
clear,clc
str = input('输入字符串:','s');
fprintf('五字宽左对齐:%-5s\n',str)
fprintf('三字宽右对齐:%3s\n',str)