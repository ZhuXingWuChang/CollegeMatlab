clear,clc
fid = fopen('exercises02.dat','r');
if fid == -1
    disp('file open not successful')
else
%     fprintf(fid,'x 0 y 1\nx 1.3 y 2.2');
    x = zeros(1,100000);
    y = zeros(1,100000);
    i = 1;
    while ~feof(fid)
        aline = fgetl(fid);
        str = aline(2:end);
        [xvalue, str] = strtok(str,'y');
        yvalue = str(2:end);
        x(i) = str2double(xvalue);
        y(i) = str2double(yvalue);
        i = i + 1;
    end
    x = x(1:i-1);
    y = y(1:i-1);
    figure(1)
    plot(x,'o')
    figure(2)
    plot(y,'o')
    
    if fclose(fid) == -1
        disp('file close not successful')
    else
        disp('file close successful')
    end
end