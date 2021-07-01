clear,clc
fid = fopen('subjexp.dat');
if fid == -1
    disp('File open not successful')
else
    while feof(fid) == 0
        aline = fgetl(fid);
        [num,charcode] = strtok(aline);
        fprintf('%.2f %s\n', str2num(num), charcode)
    end
    
    closeresult = fclose(fid);
    if closeresult == 0
        disp('File close successful')
    else
        disp('File close not successful')
    end
end