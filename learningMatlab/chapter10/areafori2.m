function area = areafori2(radius, varargin)

n = nargin; % 注意:n返回的是输入参数的总数,而不是元胞数组varargin的元素个数
if n == 2
    unit = varargin{1};
    if unit == 'i'
        radius = radius * 12;
    end
end

area = pi * radius.^2;
end