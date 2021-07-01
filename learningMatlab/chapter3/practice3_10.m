clear,clc
height = input('请输入长:');
weight = input('请输入宽:');
area = calcrectarea(height,weight);
fprintf('面积为:%f\n',area)
fprintf('需要格子%d个\n',ceil(area))