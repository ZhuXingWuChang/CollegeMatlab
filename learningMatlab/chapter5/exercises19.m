clear,clc

n = 1;
result = 0;
while abs(result-exp(-1)) > 0.0001
    n = n + 1;
    result = (1-1/n)^n;
end

fprintf('当n=%d时候,基本接近exp(-1).\n',n);
fprintf('expression = %f\n', result);
fprintf('exp(-1) = %f\n', result);