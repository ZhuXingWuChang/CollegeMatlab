clear,clc
fid = fopen('practice9_2.dat', 'r');
if fid == -1
    disp('文件打开失败')
else
    mat = fscanf(fid, '%f', [3,4]);
    s = sum(mat,2);
    fprintf('每行的和为%.2f\n', s)
    
    closeresult = fclose(fid);
    if closeresult == -1
        disp('文件关闭失败')
    else
        disp('文件关闭成功')
    end
end