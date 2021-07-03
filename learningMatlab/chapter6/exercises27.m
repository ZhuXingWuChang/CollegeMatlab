function result = exercises27(num)

persistent sum
if isempty(sum)
    sum = 0;
end
sum = sum + num;
result = sum;

end