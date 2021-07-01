clear,clc
vec = zeros(1,randi(50));
vec(numel(vec)) = 6;
%方法1
a = vec(numel(vec))
%方法2
b = vec(end)
%方法3
c = vec(length(vec))
%方法4
d = vec(end,end)