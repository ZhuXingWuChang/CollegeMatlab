clear,clc
% 调用函数把bar值变换为atm和psi值
commonbar = [4 6 10];
for bar = commonbar
    [atm,psi] = convertbar(bar);
    print_press(bar,atm,psi)
end