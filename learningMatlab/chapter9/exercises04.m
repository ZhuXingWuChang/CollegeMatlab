clear,clc
fid = fopen('exercises04.dat','r');
if fid == -1
    disp('file open not successful')
else
%     fprintf(fid,'Darby George 166.2\n');
%     fprintf(fid,'Helen Dee 143.5\n');
%     fprintf(fid,'Giovanni Lupa 192.4\n');
%     fprintf(fid,'Cat Donovan 215.1\n');

    cellarray = transpose(textscan(fid,'%s %s %s'));
%     celldisp(cellarray)
    for i = 1:length(cellarray{1})
        fprintf('%s, %s %s\n',cellarray{1}{i},cellarray{2}{i},cellarray{3}{i})
    end
    weight = zeros(1,length(cellarray{3}));
    for i = 1:length(cellarray{3})
        weight(i) = str2double(cellarray{3}{i});
    end
    fprintf('The ave weight is %.2f\n',mean(weight))
    
    if fclose(fid) == -1
        disp('file close not successful')
    else
        disp('file close successful')
    end
end