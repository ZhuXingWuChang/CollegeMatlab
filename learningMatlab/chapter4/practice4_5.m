function outnum = practice4_5(innum)
% ����-��ѧ����
mypick = menu('Choose a function', 'fix', 'floor', 'abs');

switch mypick
    case 1
        outnum = fix(innum);
    case 2
        outnum = floor(innum);
    case 3
        outnum = abs(innum);
    otherwise
        disp('ʲô������')
end

end