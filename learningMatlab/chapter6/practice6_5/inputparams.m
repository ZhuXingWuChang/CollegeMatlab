function [c,theta] = inputparams()
c = input('����c: ');
while c < 0
    c = input('��������c: ');
end
theta = input('����theta: ');
while theta < 0
    theta = input('��������theta: ');
end
end