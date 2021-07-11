clear,clc
file = input('请输入要打开的文件名称: ','s');
[filename, extension] = strtok(file,'.');
extension = extension(2:end);
while ~all(isletter(filename(filename~='_'))) ...
        || ~all(isletter(extension))
    file = input('请输入要打开的文件名称: ','s');
    [filename, extension] = strtok(file,'.');
    extension = extension(2:end);
end