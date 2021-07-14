clear,clc
syms x;
assume(x>0 & x<5);      % assume:假设,假定, 注意,这里只能是& 不能是&&
assumeAlso(x,'integer');% 在已有的assume的基础上增加限定
assumptions(x)          % 查看符号变量取值域的限定
result = solve(x^2>12)  % 求解,因为只有一个符号变量x,就默认对x求解
x = sym('x','clear');   % 等价于 syms x clear