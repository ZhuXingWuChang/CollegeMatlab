function fnstrfn(funstr)
x = linspace(1,6,25);
funh = str2func(funstr); % ���ַ���תΪ�������
y = funh(x);
plot(x,y,'ko')
xlabel('x')
ylabel('fn(x)')
title(funstr)
end