clear,clc
vec = randi(9,1,randi(10))
pos = fix(length(vec)/2);
front = vec(1:pos)
back = vec(pos+1:end)