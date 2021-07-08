function outname = exercises11(inname)
persistent count
if isempty(count)
    count = 1;
end
outname = [inname,num2str(count,'%d')];
count = count + 1;
end