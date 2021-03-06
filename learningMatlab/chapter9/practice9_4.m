clear,clc
randmat = randi([1,100],3,5);
fid = fopen('myrandsums.dat','w');
if fid == -1
    disp('File open not successful')
else
    fprintf(fid, '%d %d %d %d %d\n', randmat');
    
    closeresult = fclose(fid);
    if closeresult == -1
        disp('File close not successful')
    else
        disp('File close successful')
    end
end

mat = load('myrandsums.dat');
disp(randmat == mat)