clear,clc
fid = fopen('practice9_1.dat');
if fid == -1
    disp('�ļ��򿪳ɹ�')
else
    i = 0;
    while ~feof(fid)
        i = i + 1;
        aline = fgetl(fid);
        s = sum(str2num(aline));
        fprintf('��%d�еĺ�: %.2f\n', i, s)
    end
    
    closeresult = fclose(fid);
    if closeresult == 0
        disp('�ļ��رճɹ�')
    else
        disp('�ļ��ر�ʧ��')
    end
end