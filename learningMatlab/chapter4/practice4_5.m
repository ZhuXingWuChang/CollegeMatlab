function outnum = practice4_5(innum)
% 函数-数学运算
mypick = menu('Choose a function', 'fix', 'floor', 'abs');

switch mypick
    case 1
        outnum = fix(innum);
    case 2
        outnum = floor(innum);
    case 3
        outnum = abs(innum);
    otherwise
        disp('什么都不干')
end

end