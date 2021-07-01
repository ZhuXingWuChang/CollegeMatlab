clear,clc
fid = fopen('practice9_1.dat');
if fid == -1
    disp('文件打开成功')
else
    i = 0;
    while ~feof(fid)
        i = i + 1;
        aline = fgetl(fid);
        s = sum(str2num(aline));
        fprintf('第%d行的和: %.2f\n', i, s)
    end
    
    closeresult = fclose(fid);
    if closeresult == 0
        disp('文件关闭成功')
    else
        disp('文件关闭失败')
    end
end