clear,clc
fid = fopen('practice9_2.dat', 'r');
if fid == -1
    disp('�ļ���ʧ��')
else
    mat = fscanf(fid, '%f', [3,4]);
    s = sum(mat,2);
    fprintf('ÿ�еĺ�Ϊ%.2f\n', s)
    
    closeresult = fclose(fid);
    if ~closeresult
        disp('�ļ��رճɹ�')
    else
        disp('�ļ��ر�ʧ��')
    end
end