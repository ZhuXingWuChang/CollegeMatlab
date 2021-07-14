clear,clc
syms x;
f1 = sqrt(4/x^2 + 4/x + 1);

% 按照默认设置进行化简,化简后不会增根
g1 = simplify(f1)
% 忽略分析约束进行化简,化简后可能增根,需要验根
g2 = simplify(f1,'IgnoreAnalyticConstraints',1)

% 把符号表达式显示为数学公式
pretty(g2)                      % pretty: 漂亮的
f2 = cos(3*acos(x));
g3 = simplify(f2,'Steps',4)     % 进行四步化简