function outstr = exercises13(filename,extension)
filename = strtrim(strtok(char(filename)));
extension = strtrim(strtok(char(extension)));
outstr = [filename,'.',extension];
end