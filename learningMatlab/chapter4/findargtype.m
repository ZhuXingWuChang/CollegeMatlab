function outtype = findargtype(inputarg)
[r,c] = size(inputarg);
if r==1 && c==1
    outtype = 'scalar';
elseif r==1 || c==1
    outtype = 'vector';
else
    outtype = 'matrix';
end
end