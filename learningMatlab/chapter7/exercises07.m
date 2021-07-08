clear,clc
x = linspace(0,4*pi,50);
y = sin(x);
disp('图像颜色: blue, red, green')
incolor = input('输入图像颜色: ','s');
disp('绘图风格: o, *')
instyle = input('输入绘图风格: ','s');
pstr = [incolor(1),instyle];
plot(x,y,pstr)