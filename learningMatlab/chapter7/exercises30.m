clear,clc
clock_vec = fix(clock);
date_str = date;
date_str = split(date_str,'-');
year = str2double(date_str{3});
month_str = date_str{2};
day = str2double(date_str{1});
switch month_str
    case 'Jan'
        month = 1;
    case 'Feb'
        month = 2;
    case 'Mar'
        month = 3;
    case 'Apr'
        month = 4;
    case 'May'
        month = 5;
    case 'Jun'
        month = 6;
    case 'Jul'
        month = 7;
    case 'Aug'
        month = 8;
    case 'Sep'
        month = 9;
    case 'Oct'
        month = 10;
    case 'Nov'
        month = 11;
    case 'Dec'
        month = 12;
end
if year==clock_vec(1) && month==clock_vec(2) && day==clock_vec(3)
    flag = true;
else
    flag = false;
end
disp(flag)