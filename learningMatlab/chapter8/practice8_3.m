clear,clc
package = struct('item_no', 123, 'cost', 19.99, 'price', 39.95, 'code', 'g');
inputfield = input('���뿴��һ���ֶ��е�ֵ: ','s');
if isfield(package, inputfield)
    fprintf('�ֶ�%s��ֵΪ:%s', inputfield)
    disp(eval(['package.' inputfield]))
else
    disp('û������ֶ�')
end