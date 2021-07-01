clear,clc
vec = [1, 2, 5, 7, 13];
diff = zeros(1,length(vec));
for i = 1:length(vec)-1
    diff(i) = vec(i+1)-vec(i);
end
diff(end) = []