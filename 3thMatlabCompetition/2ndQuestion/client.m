% factorial(n) 用来求 n!
clear,clc

degree = 50;
target = sind(degree);
x = (degree/360) * (2*pi);

vec = zeros(1,10); % 空间预分配
i = 1;

while abs(sum(vec)-target) > 10^(-7)
    vec(i) = ((-1)^(i-1)) * x^(2*i-1) / factorial(2*i-1);
    % 对下面表达式中的rand()作解释,因theta只知其存在性,不知其具体值
    % 故用rand()近似代替cos(theta*x)
    vec(i+1) = ((-1)^(i+1)) * rand() * x^(2*i+3) / factorial(2*i+3);
    i = i + 1;
end

m = i;
disp(target)
disp(sum(vec))
disp(m)