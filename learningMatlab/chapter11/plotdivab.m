clear,clc,clf
fid = fopen('ab13.dat');
if fid == -1
    disp('File open successful')
else
    for i = 1:4
        aline = fgetl(fid);
        aline = aline(2:length(aline));
        [compa, rest] = strtok(aline, 'B');
        compa = str2double(compa);
        compb = rest(2:length(rest));
        compb = str2double(compb);
        
        subplot(1,4,i)
        bar([compa,compb])
        % gca函数返回句柄当前图形的坐标轴
        set(gca, 'XtickLabel', {'A', 'B'})
        axis([0,3,0,8])
        ylabel('Sales(millions)')
        title(sprintf('Quarter %d',i))
    end
    
    closeresult = fclose(fid);
    if closeresult
        disp('File close not successful')
    end
end