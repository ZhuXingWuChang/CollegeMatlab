clear,clc
fid = fopen('subjexp.dat');
if fid == -1
    disp('File open not successful')
else
    while feof(fid) == 0
        aline = fgetl(fid);
        [num,charcode] = strtok(aline);
        charcode = strtrim(charcode);
        fprintf('%.2f %c\n', str2num(num), charcode)
    end
    
    closeresult = fclose(fid);
    if closeresult == -1
        disp('File close not successful')
    else
        disp('File close successful')
    end
end