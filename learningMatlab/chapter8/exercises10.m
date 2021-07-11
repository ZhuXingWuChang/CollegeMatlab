clear,clc
cellarray = cell(3,1);
for i = 1:3
    in = input('Please enter a vector: ');
    cellarray{i} = in;
end
for i = 1:3
    disp(length(cellarray{i}))
end