clear,clc,clf
fid = fopen('compsales.dat');
if fid == -1
    disp('File open not successful')
else
    filecell = textscan(fid, '%f%s');
    
    subplot(1,2,1)
    bar(filecell{1})
    xlabel('Division')
    ylabel('Sales(millions)')
    set(gca, 'xtickLabel', filecell{2})
    
    subplot(1,2,2)
    pie(filecell{1}, filecell{2})
    title('Sales in millions by division')
    
    closeresulf = fclose(fid);
    if closeresulf
        disp('File close not successful')
    end
end