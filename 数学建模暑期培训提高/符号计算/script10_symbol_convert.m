clear,clc
syms f(x);

f(x) = log(sym(5.2))*exp(x);
% 上式使用sym(5.2)是为了让MuPAD内核处理5.2, 这样log(5.2)会成为一个符号
% 如果不使用sym(5.2), 而直接使用log(5.2), Matlab内核会计算出来这个值

y = f(3)        % 因为f(3)是一个符号数, 所以y也是MuPAD内核处理得到的符号数
class(y)
y1 = double(y)  % 使用double转换符, 将符号数转换为Matlab内核中的double类型
class(y1)

y2 = vpa(y, 10) % 以10位有效数字显示符号数
class(y2)

x = 3;
y3 = eval(f)    % 执行Matlab运算, 得到函数值
class(y3)