function area = areafori(varargin) % �ڽ���varargin��ΪԪ������,�洢������Ŀ

n = nargin; % ����Ĳ�������
radius = varargin{1};
if n == 2
    unit = varargin{2};
    if unit == 'i' % �������Ӣ��Ϊ��λ����
        radius = radius * 12;
    end
end
area = pi * radius.^2;
end