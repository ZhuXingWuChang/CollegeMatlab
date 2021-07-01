function [c,theta] = inputparams()
c = input('输入c: ');
while c < 0
    c = input('重新输入c: ');
end
theta = input('输入theta: ');
while theta < 0
    theta = input('重新输入theta: ');
end
end