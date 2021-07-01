% ½Å±¾-ÏìÓ¦yºÍn
clear,clc
letter = input('Enter your answer: ', 's');
if letter == 'y' || letter == 'Y'
    disp('OK, continuing')
elseif letter == 'n' || letter == 'N'
    disp('OK, halting')
else
    disp('Error')
end