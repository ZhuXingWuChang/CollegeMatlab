function newcellarray = exercises07(oldcellarray, mode)
if strcmp(mode,'u') && iscellstr(oldcellarray)
    newcellarray = upper(oldcellarray);
elseif strcmp(mode,'l') && iscellstr(oldcellarray)
    newcellarray = lower(oldcellarray);
else
    newcellarray = oldcellarray;
end
end