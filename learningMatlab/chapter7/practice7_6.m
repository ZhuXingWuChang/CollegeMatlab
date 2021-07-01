clear,clc
x = linspace(0,4*pi,1000);
fx = input('输入三角函数(sin,cos,tan):','s');
while ~strcmpi(fx,'sin') && ~strcmpi(fx,'cos') && ~strcmpi(fx,'tan')
    fx = input('输入三角函数(sin,cos,tan):','s');
end
y = eval([fx,'(x)']);
plot(x,y,'g.-')