clear,clc
cellarray = cell(2,2);
for i = 1:4
    randmat = randi([1,9],randi([1,9]),randi([1,9]));
    cellarray{i} = randmat;
end
cell = [cellarray; cell(1,2)];
cell(3,:) = cell(2,:);
cell{2,1} = randi([1,9],randi([1,9]),randi([1,9]));
cell{2,2} = randi([1,9],randi([1,9]),randi([1,9]));
cellplot(cell)