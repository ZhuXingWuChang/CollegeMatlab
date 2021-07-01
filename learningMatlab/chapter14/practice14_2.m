clear,clc
c1 = complex(0,2);
c2 = 3 + 2i;
c3 = sqrt(-4);
% 获得c2的实部和虚部
c2r = real(c2);
c2i = imag(c2);
% 打印c1
disp(c1)
% 打印c2
fprintf('%d+%di\n\n',real(c2),imag(c2))
% 相等
disp(c1==c2)
disp(c2==c3)
disp(c1==c3)
% 减法
disp(c1-c2)
isreal(c1-c2)
% 乘法
disp(c2*c3)
% 共轭复数 与 模
disp(conj(c2))
disp(abs(c2))
% 极坐标
theta1 = angle(c1);
r1 = abs(c1);
fprintf('c1 = %de^(%.2fi)\n\n', r1, theta1)
% 绘制
plot(c2,'r*','MarkerSize',20)