clear,clc
syms x y a b;
f = [cos(x+y); (a+b)*exp((a-b)^2)];
expand(f)