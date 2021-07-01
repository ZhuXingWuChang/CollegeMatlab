% x0 = vec
% x1 = cumsum(vec)
clear,clc

x =[11.2,11.5,14.5,17.1,19.6,20.4,24.2];
[p, nx1, nx0] = mx5(x);

fprintf('p = \n')
disp(p)
fprintf('nx1 = \n')
disp(nx1)
fprintf('nx0 = \n')
disp(nx0)
