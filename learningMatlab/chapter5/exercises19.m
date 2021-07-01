clear,clc

n = 1;
result = 0;
while abs(result-exp(-1)) > 0.0001
    n = n + 1;
    result = (1-1/n)^n;
end

fprintf('��n=%dʱ��,�����ӽ�exp(-1).\n',n);
fprintf('expression = %f\n', result);
fprintf('exp(-1) = %f\n', result);