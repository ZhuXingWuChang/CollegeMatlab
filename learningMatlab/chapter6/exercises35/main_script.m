clear,clc
[v0,t,theta] = init_v0_t_theta();
[x,y] = findxy(v0,t,theta);
fprintf('x = %.2f, y = %.2f\n',x,y)