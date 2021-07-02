clear,clc
n = randi(4);
for i = 1:n
    circ = input('输入圆的周长： ');
    [rad, area] = radarea(circ);
    dispra(rad, area)
end