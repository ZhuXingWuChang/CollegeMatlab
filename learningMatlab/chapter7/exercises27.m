clear,clc
mystr = cell(1,2);
for i = 1:2
    filename = ['file',num2str(i),'.dat'];
    mystr{i} = load(filename);
    disp(mystr{i})
end