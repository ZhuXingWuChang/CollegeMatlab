clear,clc
randmat = randi([1,30],5,4);
times = zeros(1,30);
for i = 1:30
    times(i) = sum(sum(i == randmat));
end
disp(times)