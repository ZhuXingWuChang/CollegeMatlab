clear,clc
t = 10000;

i = 0;
tic
if t == 1
    i = i + 1;
elseif t == 10
    i = i + 2;
elseif t == 100
    i = i + 3;
else
    i = i - 1;
end
toc


i = 0;
tic
switch t(:,:)
    case 1
        i = i + 1;
    case 10
        i = i + 2;
    case 100
        i = i + 3;
    otherwise
        i = i - 1;
end
toc