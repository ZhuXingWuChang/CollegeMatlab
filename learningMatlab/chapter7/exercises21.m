function outstr = exercises21(instr)
outstr = [];
strs = split(instr);
for i = 1:length(strs)-1
    outstr = [outstr,strs{i},' '];
end
outstr = [outstr,strs{end}];
end