function area = areafori(varargin) % 内建的varargin作为元胞数组,存储参数数目

n = nargin; % 输入的参数个数
radius = varargin{1};
if n == 2
    unit = varargin{2};
    if unit == 'i' % 如果是以英尺为单位输入
        radius = radius * 12;
    end
end
area = pi * radius.^2;
end