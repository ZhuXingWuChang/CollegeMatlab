function result = exercises23(instruction)
ins = strrep(instruction,',',' ');
ins = split(ins);
result = fix(str2double(ins{2}) + str2double(ins{3}));
end