function exercises17(num1,num2)
num = [num1,num2];
for i = 1:2
    subplot(1,2,i)
    x = linspace(0,2*pi,num(i));
    y = sin(x);
    plot(x,y,'k')
    name = sprintf('%d points',num(i));
    title(name)
end
end