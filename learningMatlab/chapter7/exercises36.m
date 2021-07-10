function [num,let] = exercises36
in = input('Enter a # and a letter: ','s');
num = str2num(in(1:end-1));
let = in(end);
while ~isnumeric(num) || ~isletter(let)
    in = input('ERROR! Enter a # and a letter: ','s');
    num = str2num(in(1:end-1));
    let = in(end);
end

end