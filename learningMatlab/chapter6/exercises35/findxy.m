function [x,y] = findxy(v0,t,theta)
g = 9.8;
x = v0*cos(theta)*t;
y = v0*sin(theta)*t - 1/2*g*t^2;
end