clear,clc
v1 = randi(20,1,7);
v2 = randi(20,1,7);
% 并集
bj = union(v1,v2);
% 交集
jj = intersect(v1,v2);
% 差集
inv1 = setdiff(v1,v2);
inv2 = setdiff(v2,v1);
% 异或
yh = setxor(v1,v2);
% 唯一元素集
v1dake = ~ismember(v1,v2);
v2dake = ~ismember(v2,v1);