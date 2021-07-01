clear,clc
ranforce = randi([0,12]);
if ranforce >= 0
    if ranforce == 0
        disp('There is no wind')
    elseif ranforce <= 6
        disp('There is a breeze')
    elseif ranforce <= 9
        disp('This is a gale')
    elseif ranforce <= 11
        disp('It is a storm')
    elseif ranforce == 12
        disp('Hello,Hurricane!')
    end
end