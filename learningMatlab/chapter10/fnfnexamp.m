function fnfnexamp(funh)
% ��Ҫ�������������һ���������

x = linspace(1,6,25);
y = funh(x);
plot(x,y,'ko')
xlabel('x')
ylabel('fn(x)')
title(func2str(funh))
end