clear,clc
dept = 'Electrical';
strfind(dept, 'e')

strfind(lower(dept), 'e')

phone_no = '703-987-1234';
[area_code, rest] = strtok(phone_no, '-')

rest = rest(2:end)

strcmpi('Hi', 'HI')