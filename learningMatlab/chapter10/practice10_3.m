function s = practice10_3(r, varargin)

items = nargin;
if items == 1
    n = randi([5,30]);
elseif items == 2
    n = varargin{1};
else
    disp('参数过多')
end

s = r.^n - 1;
end