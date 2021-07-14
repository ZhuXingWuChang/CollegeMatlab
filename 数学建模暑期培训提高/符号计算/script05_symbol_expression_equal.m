clear,clc
syms  x;
f = abs(x)  >= 0;               % 创建符号表达式
result1 = isAlways(f)           % 判断f是否成立
result2 = isequaln(abs(x), x)   % 判断两个参数是否相等
assume(x>0);
result3 = isequaln(abs(x), x)
syms x clears