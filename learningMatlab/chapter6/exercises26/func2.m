function result = func2

persistent count
if isempty(count)
    count = 0;
end
count = count + 1;
result = count;

end