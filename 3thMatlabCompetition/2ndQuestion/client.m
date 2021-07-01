% factorial(n) ������ n!
clear,clc

degree = 50;
target = sind(degree);
x = (degree/360) * (2*pi);

vec = zeros(1,10); % �ռ�Ԥ����
i = 1;

while abs(sum(vec)-target) > 10^(-7)
    vec(i) = ((-1)^(i-1)) * x^(2*i-1) / factorial(2*i-1);
    % ��������ʽ�е�rand()������,��thetaֻ֪�������,��֪�����ֵ
    % ����rand()���ƴ���cos(theta*x)
    vec(i+1) = ((-1)^(i+1)) * rand() * x^(2*i+3) / factorial(2*i+3);
    i = i + 1;
end

m = i;
disp(target)
disp(sum(vec))
disp(m)