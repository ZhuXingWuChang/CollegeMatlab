function area = areafori2(radius, varargin)

n = nargin; % ע��:n���ص����������������,������Ԫ������varargin��Ԫ�ظ���
if n == 2
    unit = varargin{1};
    if unit == 'i'
        radius = radius * 12;
    end
end

area = pi * radius.^2;
end