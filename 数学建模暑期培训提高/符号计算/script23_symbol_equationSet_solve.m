clear,clc
syms x y;
[X,Y] = solve([1/x^3 + 1/y^3 == 28; 1/x + 1/y == 4], [x,y])