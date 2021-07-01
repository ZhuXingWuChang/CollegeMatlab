function outtype = practice4_3(inarg)
[r,c] = size(inarg);
if r==1 && c==1
    outtype = 'scalar';
elseif r==1
    outtype = 'row vector';
elseif c==1
    outtype = 'column vector';
else
    outtype = 'matrix';
end
end