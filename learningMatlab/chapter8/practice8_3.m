clear,clc
package = struct('item_no', 123, 'cost', 19.99, 'price', 39.95, 'code', 'g');
inputfield = input('你想看哪一个字段中的值: ','s');
if isfield(package, inputfield)
    fprintf('字段%s的值为:%s', inputfield)
    disp(eval(['package.' inputfield]))
else
    disp('没有这个字段')
end