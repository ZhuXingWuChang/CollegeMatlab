function [todayday, todaymo, todayyr] = separatedate

[todayday, rest] = strtok(date, '-');
[todaymo, todayyr] = strtok(rest, '-');
todayyr = todayyr(2:end);
end