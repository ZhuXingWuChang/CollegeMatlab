clear,clc
X0 = zeros(1,5);
Xf = zeros(1,5);
for i = 1:5
    str1 = sprintf('输入第%d个起始长度: ', i);
    X0(i) = input(str1);
    str2 = sprintf('输入第%d个最终长度: ', i);
    Xf(i) = input(str2);
    t = delta(X0(i), Xf(i));
    dis(t);
end