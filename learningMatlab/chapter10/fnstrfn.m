function fnstrfn(funstr)
x = linspace(1,6,25);
funh = str2func(funstr); % 将字符串转为函数句柄
y = funh(x);
plot(x,y,'ko')
xlabel('x')
ylabel('fn(x)')
title(funstr)
end