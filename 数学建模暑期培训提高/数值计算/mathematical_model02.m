clear,clc
a = 14; % 猫的速度
b = 8;  % 老鼠的速度
c = 10; % 初始距离
f = @(t,x) sqrt((c-x(1))^2 + (b*t-x(2))^2);   % 模型中的共同分母
fun = @(t,x) [a*(c-x(1))/f(t,x); a*(b*t-x(2))/f(t,x)];
tspan = linspace(0, 1.06, 100);             % 时间向量
x0 = [0;0];                                 % 状态变量赋初值
% t表示时间点组成的列向量,x表示解矩阵
[t,x] = ode45(fun,tspan,x0)

% 绘图命令
% 猫的初始位置(实心蓝点)
hpoint1 = line(0,0,'Color',[0,0,1],'Marker','.','Markersize',40);
% 老鼠的初始位置(绿色五角星)
hpoint2 = line(c,0,'MarkerFaceColor',[0,1,0],'Marker','p','Markersize',15);
% 猫的运动轨迹线
hline = line(0,0,'Color',[1,0,0],'linewidth',2);
line([c,c],[0,c],'LineWidth',2);             % 墙所对应直线
hcat = text(-0.8,0,'猫','FontSize',12);      % 文本标记猫的位置
hmouse = text(c+0.3,0,'鼠','FontSize',12);   % 文本标记鼠的位置
xlabel('X');
ylabel('Y');
axis([0,c+1,0,9.5])
for i = 1:size(x,1)
    ymouse = t(i)*b;
    set(hpoint1,'xdata',x(i,1),'ydata',x(i,2));
    set(hpoint2,'xdata',c,'ydata',ymouse);
    set(hline,'xdata',x(1:i,1),'ydata',x(1:i,2));
    set(hcat,'Position',[x(i,1)-0.8,x(i,2),0]);
    set(hmouse,'Position',[c+0.3,ymouse,0]);
    pause(0.1);
    drawnow;
end