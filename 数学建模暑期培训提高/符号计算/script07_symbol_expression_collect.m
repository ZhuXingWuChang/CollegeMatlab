clear,clc
syms x y;
f = (x+y)*(x^2+y^2+1);
collect(f,y)            % 对符号表达式f按照符号变量y进行合并