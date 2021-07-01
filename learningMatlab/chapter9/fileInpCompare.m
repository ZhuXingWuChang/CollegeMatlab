clear,clc,clf
fid = fopen('xypoints.dat');
if fid == -1
    disp('File open not successful')
else
    % 1. using fgetl
%     x = [];
%     y = [];
%     while ~feof(fid)
%         aline = fgetl(fid);
%         aline = aline(2:end);
%         [xstr,rest] = strtok(aline,'y');
%         x = [x,str2double(xstr)];
%         ystr = rest(2:end);
%         y = [y,str2double(ystr)];
%     end
    
    % 2. using fscanf
%     mat = fscanf(fid, '%c%f%c%f\n', [4,inf]);
%     x = mat(2,:);
%     y = mat(4,:);

    % 3. using fscanf method2
%     mat = fscanf(fid, 'x%fy%f\n', [2,inf]);
%     x = mat(1,:);
%     y = mat(2,:);

    % 4. using textscan
%     xydat = textscan(fid, 'x%fy%f');
%     x = xydat{1};
%     y = xydat{2};

    disp(x)
    disp(y)
    plot(x,y,'k*')
    xlabel('x')
    ylabel('y')
    
    closeresult = fclose(fid);
    if ~closeresult
        disp('File close successful')
    else
        disp('File close not successful')
    end
end