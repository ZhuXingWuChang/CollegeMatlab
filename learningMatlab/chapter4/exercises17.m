% �ű�-�¶�ת��
clear,clc
t = input('�������϶�: ');
choose = input('����Ҫת��Ϊ���϶�F���ǿ��϶�K? ','s');
switch choose
    case {'F', 'f'}
        t = 9/5*t + 32;
    case {'K', 'k'}
        t = t + 273.15;
    otherwise
        disp('û�����ѡ��')
end
fprintf('ת��Ϊ%cΪ: %.1f\n', choose, t)