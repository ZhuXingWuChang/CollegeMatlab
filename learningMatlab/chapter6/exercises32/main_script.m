clear,clc
% 提示用户输入边数n,高度h,边长S
[n, h, S] = getprism();
% 计算体积和表面积
[V, A] = calc_v_a(n, h, S);
% 打印结果
print_v_a(V, A)