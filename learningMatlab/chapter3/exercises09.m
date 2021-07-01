% 脚本-字符串回声
% 提示:在字符串中输出单引号,需要用两个单引号来转义
clear,clc
str = input('Enter your string: ','s');
fprintf('Your string was: ''%s''\n',str)