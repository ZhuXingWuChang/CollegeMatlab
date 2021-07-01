clear,clc
score = input('输入成绩: ');
correct_score = 0:0.5:10;
while all(correct_score ~= score)
    score = input('输入无效!重新输入: ');
end