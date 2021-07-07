function outstr = getstr()

str = input('','s');

while strcmp(str,'\n')
    str = input('','s');
end

str = deblank(str);
outstr = str;

end