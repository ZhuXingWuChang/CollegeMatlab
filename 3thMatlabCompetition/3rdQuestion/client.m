clear,clc

plotxy

syms x y
f1 =  y^2 / 2;
f2 =  y + 4;
y_point = solve(f1==f2);

t = int(f2-f1, y_point(1), y_point(2));

disp(t)