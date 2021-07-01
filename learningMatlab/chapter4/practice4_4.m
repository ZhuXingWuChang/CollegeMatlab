function outtype = practice4_4(inputarg)

[r,c] = size(inputarg);
if r==1 && c==1
    outtype = 'scalar';
end
if (r==1 && c~=1) || (r~=1 && c==1)
    outtype = 'vector';
end
if r~=1 && c~=1
    outtype = 'matrix';
end

end