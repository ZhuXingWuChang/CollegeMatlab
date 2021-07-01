function fnfnexamp(funh)
% 需要给这个函数传递一个函数句柄

x = linspace(1,6,25);
y = funh(x);
plot(x,y,'ko')
xlabel('x')
ylabel('fn(x)')
title(func2str(funh))
end