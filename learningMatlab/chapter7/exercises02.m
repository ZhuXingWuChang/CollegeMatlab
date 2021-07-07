function flag = exercises02(instr)

[filename,extension] = strtok(instr,'.');
extension = extension(2:end);
if strcmp(extension,'dat')
    flag = true;
else
    flag = false;
end

end