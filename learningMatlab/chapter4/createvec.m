function outvec = createvec(mymin, mymax)
% ��createvec������һ����ָ������Сֵ�����ֵ���е���������
% ���ø�ʽ: createvec(mymin, mymax)
% ����һ������

if mymin > mymax
    temp = mymin;
    mymin = mymax;
    mymax = temp;
end

outvec = mymin:mymax;
end