function randelem = practice8_1(cellarray)

[r,c] = size(cellarray);
a = randi([1,r]);
b = randi([1,c]);
[r1,c1] = size(cellarray{a,b});
c = randi([1,r1]);
d = randi([1,c1]);
randelem = cellarray{a,b}(c,d);
end