clear,clc
vec = randi([50,100],1,20)
evens = vec(~logical(mod(vec,2)))
odds = vec(logical(mod(vec,2)))
