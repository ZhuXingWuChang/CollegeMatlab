clear,clc
vec = randi(10,1,10)
odd = vec(find(mod(vec,2)))
even = vec(~logical(mod(vec,2)))