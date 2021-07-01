% 脚本-用switch改进练习14
clear,clc
letter = input('Enter your answer: ', 's');
switch letter
    case {'y', 'Y'}
        disp('OK, continuing')
    case {'n', 'N'}
        disp('OK, halting')
    otherwise
        disp('Error')
end