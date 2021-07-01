clear,clc
fid = fopen('subjexp.dat');
if fid == -1
    disp('File open not successful')
else
    subjdata = textscan(fid, '%f %c');
    len = length(subjdata);
    avg = zeros(1,len);
    for i = 1:len
        avg(i) = mean(subjdata{i});
    end
    disp(subjdata{1})
    disp(subjdata{2})
    disp(avg)
    
    closeresult = fclose(fid);
    if closeresult
        disp('File close successful')
    else
        disp('File close not successful')
    end
end